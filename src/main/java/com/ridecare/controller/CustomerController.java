package com.ridecare.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.security.crypto.password.PasswordEncoder;
import java.time.LocalTime;
import com.ridecare.service.EmailService;

import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import jakarta.servlet.http.Cookie; 
import jakarta.servlet.http.HttpServletResponse;

import com.ridecare.entity.Customer;
import com.ridecare.service.CustomerService;
import com.ridecare.service.BookingService;
import com.ridecare.entity.Booking;
import java.util.List;
import java.util.ArrayList;
import java.util.Collections;
import org.springframework.web.multipart.MultipartFile; 
import com.cloudinary.Cloudinary; 
import com.cloudinary.utils.ObjectUtils; 
import java.util.Map;
import com.ridecare.repository.CustomerRepository;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;
    @Autowired
    private BookingService bookingService;
    
    @Autowired
    private PasswordEncoder passwordEncoder;
    
    @Autowired 
    private EmailService emailService;
    
    @Autowired 
    private Cloudinary cloudinary;
    
    @Autowired
    private CustomerRepository customerRepository;

    // ================= REGISTER =================

    @PostMapping("/register")
    public String register(@ModelAttribute Customer customer, Model model) {

        if (customerService.emailExists(customer.getEmail())) {

            model.addAttribute("error", "Email Already Registered");
            return "signup";
        }

        customer.setPassword(passwordEncoder.encode(customer.getPassword()));
        customerService.registerCustomer(customer);

        // ===== SEND WELCOME EMAIL =====
        String subject = "Welcome to RideCarePro 🚀";

        String html = """
                <div style='font-family:Arial,sans-serif;padding:20px'>
                    <h2 style='color:#2563eb'>Welcome to RideCarePro!</h2>
                    <p>Dear %s,</p>
                    <p>Your account has been created successfully.</p>
                    <p>You can now login and book bike services online.</p>
                    <br>
                    <a href='http://localhost:9090/login'
                       style='background:#2563eb;color:white;padding:10px 20px;
                              text-decoration:none;border-radius:5px'>
                       Login Now
                    </a>
                    <br><br>
                    <p>Thank you for choosing RideCarePro!</p>
                </div>
                """.formatted(customer.getFullName());

        try { emailService.sendHtmlEmail(customer.getEmail(), subject, html); } catch (Exception e) { e.printStackTrace(); }

        model.addAttribute("success", "Registration Successful. Please Login.");

        return "login";
    }

    // ================= LOGIN =================

    @PostMapping("/login")
    public String login(@RequestParam String email,
                        @RequestParam String password,
                        @RequestParam(required = false) String rememberMe,
                        HttpSession session,
                        HttpServletResponse response,
                        Model model) {

        Optional<Customer> customer = customerService.login(email);

        if (customer.isPresent()
                && passwordEncoder.matches(password, customer.get().getPassword())) {

            session.setAttribute("loggedCustomer", customer.get());

            // Remember Me Cookie
            if (rememberMe != null) {

                Cookie cookie = new Cookie("rememberedEmail", email);
                cookie.setMaxAge(60 * 60 * 24 * 30); // 30 days
                cookie.setPath("/");

                response.addCookie(cookie);
            }

            return "redirect:/customer/dashboard";
        }

        model.addAttribute("error", "Invalid Email or Password");

        return "login";
    }

    // ================= DASHBOARD =================

    @GetMapping("/dashboard")
    public String dashboard(HttpSession session, Model model) {

        Customer customer =
                (Customer) session.getAttribute("loggedCustomer");

        if (customer == null) {

            return "redirect:/login";
        }

        model.addAttribute("customer", customer);

        List<Booking> bookings =
                bookingService.getBookingsByCustomer(customer.getFullName());

        long totalBookings = bookings.size();

        long pending = bookings.stream()
                .filter(b -> "Pending".equalsIgnoreCase(b.getStatus()))
                .count();

        long completed = bookings.stream()
                .filter(b -> "Completed".equalsIgnoreCase(b.getStatus()))
                .count();

        double totalSpent = completed * 999;

        model.addAttribute("totalBookings", totalBookings);
        model.addAttribute("pendingBookings", pending);
        model.addAttribute("notificationCount", pending);
        model.addAttribute("completedBookings", completed);
        model.addAttribute("totalSpent", totalSpent);

        List<Booking> recentBookings = bookings.stream()
                .sorted((b1, b2) -> b2.getPickupDate().compareTo(b1.getPickupDate()))
                .limit(5)
                .toList();

        model.addAttribute("recentBookings", recentBookings);
        
        List<String> notifications = new ArrayList<>();

        for (Booking booking : bookings) {

            if ("Pending".equalsIgnoreCase(booking.getStatus())) {

                notifications.add("📋 Your booking #" + booking.getBookingId()
                        + " has been confirmed.");

            }

            else if ("Assigned".equalsIgnoreCase(booking.getStatus())) {

                notifications.add("👨‍🔧 " + booking.getAssignedEmployee()
                        + " has been assigned to your bike.");

            }

            else if ("In Progress".equalsIgnoreCase(booking.getStatus())) {

                notifications.add("🔧 Your bike service is now in progress.");

            }

            else if ("Completed".equalsIgnoreCase(booking.getStatus())) {

                notifications.add("✅ Your bike service is completed and ready for pickup.");

            }

        }

        Collections.reverse(notifications);

        model.addAttribute("notifications", notifications);
        
        Booking upcomingBooking = bookings.stream()
                .filter(b -> !"Completed".equalsIgnoreCase(b.getStatus()))
                .sorted((b1, b2) -> b1.getPickupDate().compareTo(b2.getPickupDate()))
                .findFirst()
                .orElse(null);

        model.addAttribute("upcomingBooking", upcomingBooking);
        
        LocalTime currentTime = LocalTime.now();
        String greeting;

        if (currentTime.isBefore(LocalTime.NOON)) {
            greeting = "Good Morning";
        } else if (currentTime.isBefore(LocalTime.of(17, 0))) {
            greeting = "Good Afternoon";
        } else {
            greeting = "Good Evening";
        }

        model.addAttribute("greeting", greeting);

        return "customerDashboard";
    }
    
 // ================= PROFILE =================

    @GetMapping("/profile")
    public String profile(HttpSession session, Model model) {

        Customer customer =
                (Customer) session.getAttribute("loggedCustomer");

        if (customer == null) {
            return "redirect:/login";
        }

        model.addAttribute("customer", customer);

        List<Booking> bookings =
                bookingService.getBookingsByCustomer(customer.getFullName());

        long totalBookings = bookings.size();

        long pendingBookings = bookings.stream()
                .filter(b -> "Pending".equalsIgnoreCase(b.getStatus()))
                .count();

        long completedBookings = bookings.stream()
                .filter(b -> "Completed".equalsIgnoreCase(b.getStatus()))
                .count();

        double totalSpent = completedBookings * 999;

        model.addAttribute("totalBookings", totalBookings);
        model.addAttribute("pendingBookings", pendingBookings);
        model.addAttribute("completedBookings", completedBookings);
        model.addAttribute("totalSpent", totalSpent);

        List<Booking> recentBookings = bookings.stream()
                .sorted((b1, b2) -> b2.getPickupDate().compareTo(b1.getPickupDate()))
                .limit(5)
                .toList();

        model.addAttribute("recentBookings", recentBookings);

        Booking upcomingBooking = bookings.stream()
                .filter(b -> !"Completed".equalsIgnoreCase(b.getStatus()))
                .sorted((b1, b2) -> b1.getPickupDate().compareTo(b2.getPickupDate()))
                .findFirst()
                .orElse(null);

        model.addAttribute("upcomingBooking", upcomingBooking);

        return "customerProfile";
    }
    
 // ================= EDIT PROFILE =================

    @GetMapping("/edit-profile")
    public String editProfile(HttpSession session, Model model) {

        Customer customer =
                (Customer) session.getAttribute("loggedCustomer");

        if (customer == null) {
            return "redirect:/login";
        }

        model.addAttribute("customer", customer);

        return "editProfile";
    }

    // ================= UPDATE PROFILE =================

    @PostMapping("/update-profile")
    public String updateProfile(@ModelAttribute Customer updatedCustomer,
                                @RequestParam("profileImageFile") MultipartFile file,
                                HttpSession session,
                                Model model) {

        Customer sessionCustomer =
                (Customer) session.getAttribute("loggedCustomer");

        if (sessionCustomer == null) {
            return "redirect:/login";
        }

        Customer customer =
                customerRepository.findById(sessionCustomer.getCustomerId())
                        .orElse(null);

        if (customer == null) {
            return "redirect:/login";
        }

        // Update fields
        customer.setFullName(updatedCustomer.getFullName());
        customer.setPhone(updatedCustomer.getPhone());
        customer.setAddress(updatedCustomer.getAddress());

        try {

            if (file != null && !file.isEmpty()) {

                Map uploadResult = cloudinary.uploader().upload(
                        file.getBytes(),
                        ObjectUtils.asMap("folder", "ridecarepro/profiles")
                );

                String imageUrl =
                        uploadResult.get("secure_url").toString();

                System.out.println("IMAGE URL = " + imageUrl);

                customer.setProfileImage(imageUrl);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        // DIRECT SAVE
        customerRepository.saveAndFlush(customer);

        // Reload fresh data from DB
        Customer freshCustomer =
                customerRepository.findById(customer.getCustomerId()).orElse(customer);

        session.setAttribute("loggedCustomer", freshCustomer);

        model.addAttribute("success",
                "Profile updated successfully!");

        model.addAttribute("customer", freshCustomer);

        return "customerProfile";
    }

    
 // ================= FORGOT PASSWORD PAGE =================

    @GetMapping("/forgot-password")
    public String forgotPasswordPage() {
        return "forgotPassword";
    }
    
 // ================= SEND RESET EMAIL =================

    @PostMapping("/forgot-password")
    public String sendResetEmail(@RequestParam String email, Model model) {

        if (!customerService.emailExists(email)) {

            model.addAttribute("error", "No account found with this email.");

            return "forgotPassword";
        }

        String subject = "RideCarePro Password Reset 🔐";

        String resetLink = ServletUriComponentsBuilder.fromCurrentContextPath() .path("/customer/reset-password") 
        		.queryParam("email", email) .toUriString();
       
        
        String html = """
                <div style='font-family:Arial,sans-serif;padding:20px'>
                    <h2 style='color:#2563eb'>Reset Your Password</h2>
                    <p>We received a request to reset your RideCarePro password.</p>
                    <p>Click the button below to reset your password:</p>
                    <br>
                    <a href='%s'
                       style='background:#2563eb;color:white;padding:12px 24px;
                              text-decoration:none;border-radius:5px'>
                       Reset Password
                    </a>
                    <br><br>
                    <p>If you did not request this, please ignore this email.</p>
                </div>
                """.formatted(resetLink);

        emailService.sendHtmlEmail(email, subject, html);

        model.addAttribute("success",
                "Password reset email has been sent.");

        return "forgotPassword";
    }
    
 // ================= RESET PASSWORD PAGE =================

    @GetMapping("/reset-password")
    public String resetPasswordPage(@RequestParam String email, Model model) {

        model.addAttribute("email", email);

        return "resetPassword";
    }
    
 // ================= UPDATE RESET PASSWORD =================

    @PostMapping("/reset-password")
    public String resetPassword(@RequestParam String email,
                                @RequestParam String newPassword,
                                @RequestParam String confirmPassword,
                                Model model) {

        if (!newPassword.equals(confirmPassword)) {

            model.addAttribute("email", email);
            model.addAttribute("error", "Passwords do not match.");

            return "resetPassword";
        }

        Customer customer = customerService.findByEmail(email);

        if (customer == null) {

            model.addAttribute("error", "Invalid request.");

            return "forgotPassword";
        }

        customer.setPassword(passwordEncoder.encode(newPassword));

        customerService.updateCustomer(customer);

        model.addAttribute("success",
                "Password reset successful. Please login.");

        return "login";
    }
    
 // ================= CHANGE PASSWORD PAGE =================

    @GetMapping("/change-password")
    public String changePassword(HttpSession session) {

        Customer customer = (Customer) session.getAttribute("loggedCustomer");

        if (customer == null) {
            return "redirect:/login";
        }

        return "changePassword";
    }
    
 // ================= UPDATE PASSWORD =================

    @PostMapping("/change-password")
    public String updatePassword(@RequestParam String currentPassword,
                                 @RequestParam String newPassword,
                                 @RequestParam String confirmPassword,
                                 HttpSession session,
                                 Model model) {

        Customer sessionCustomer = (Customer) session.getAttribute("loggedCustomer");

        if (sessionCustomer == null) {
            return "redirect:/login";
        }

        Customer customer = customerService.getCustomerById(sessionCustomer.getCustomerId());

        if (!passwordEncoder.matches(currentPassword, customer.getPassword())) {

            model.addAttribute("error", "Current password is incorrect.");

            return "changePassword";
        }

        if (!newPassword.equals(confirmPassword)) {

            model.addAttribute("error", "New passwords do not match.");

            return "changePassword";
        }

        customer.setPassword(passwordEncoder.encode(newPassword));

        customerService.updateCustomer(customer);

        session.setAttribute("loggedCustomer", customer);

        model.addAttribute("success", "Password updated successfully!");

        return "changePassword";
    }
    
    @GetMapping("/services")
    public String customerServices(HttpSession session) {

        Customer customer = (Customer) session.getAttribute("loggedCustomer");

        if (customer == null) {
            return "redirect:/login";
        }

        return "customerServices";
    }
    
    // ================= LOGOUT =================

   
    @GetMapping("/logout") 
    public String logout(HttpSession session, HttpServletResponse response) 
    { session.invalidate(); Cookie cookie = new Cookie("rememberedEmail", null); cookie.setMaxAge(0);
    cookie.setPath("/"); response.addCookie(cookie); return "redirect:/login"; }

}