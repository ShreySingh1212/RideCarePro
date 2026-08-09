package com.ridecare.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.ridecare.entity.Admin;
import com.ridecare.service.AdminService;
import com.ridecare.service.BookingService;
import com.ridecare.service.CustomerService;
import com.ridecare.service.EmployeeService;
import com.ridecare.service.BikeServiceService;
import com.ridecare.entity.Booking;
import com.ridecare.service.EmailService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private BookingService bookingService;

    @Autowired
    private BikeServiceService bikeServiceService;
    
    @Autowired
    private EmailService emailService;

    // ==========================
    // ADMIN REGISTER
    // ==========================

    @GetMapping("/register")
    public String registerPage(Model model) {

        model.addAttribute("admin", new Admin());

        return "adminRegister";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute Admin admin, Model model) {

        adminService.saveAdmin(admin);

        model.addAttribute("success", "Admin Registered Successfully");

        return "login";
    }

    // ==========================
    // LOGIN
    // ==========================

    @PostMapping("/login")
    public String login(@RequestParam String email,
                        @RequestParam String password,
                        HttpSession session,
                        Model model) {

        Admin admin = adminService.login(email, password);

        if (admin != null) {

            session.setAttribute("loggedAdmin", admin);

            return "redirect:/admin/dashboard";
        }

        model.addAttribute("error", "Invalid Email or Password");

        return "login";
    }

    // ==========================
    // DASHBOARD
    // ==========================

    @GetMapping("/dashboard")
    public String dashboard(HttpSession session,
                            Model model) {

        Admin admin = (Admin) session.getAttribute("loggedAdmin");

        if (admin == null) {
            return "redirect:/login";
        }

        model.addAttribute("admin", admin);

        model.addAttribute("customerCount",
                customerService.getAllCustomers().size());

        model.addAttribute("employeeCount",
                employeeService.getAllEmployees().size());

        model.addAttribute("bookingCount",
                bookingService.getAllBookings().size());

        model.addAttribute("pendingCount",
                bookingService.pendingBookings().size());

        model.addAttribute("completedCount",
                bookingService.completedBookings().size());

        model.addAttribute("bookings",
                bookingService.getAllBookings());

        return "adminDashboard";
    }

    // ==========================
    // CUSTOMERS
    // ==========================

    @GetMapping("/customers")
    public String customers(HttpSession session,
                            Model model) {

        Admin admin = (Admin) session.getAttribute("loggedAdmin");

        if (admin == null) {
            return "redirect:/login";
        }

        model.addAttribute("admin", admin);

        model.addAttribute("customers",
                customerService.getAllCustomers());

        return "customers";
    }
    
    @GetMapping("/customer/delete/{id}")
    public String deleteCustomer(@PathVariable Integer id,
                                 HttpSession session) {

        Admin admin = (Admin) session.getAttribute("loggedAdmin");

        if (admin == null) {
            return "redirect:/login";
        }

        customerService.deleteCustomer(id);

        return "redirect:/admin/customers";
    }

    // ==========================
    // EMPLOYEES
    // ==========================

    @GetMapping("/employees")
    public String employees(HttpSession session,
                            Model model) {

        Admin admin = (Admin) session.getAttribute("loggedAdmin");

        if (admin == null) {
            return "redirect:/login";
        }

        model.addAttribute("admin", admin);

        model.addAttribute("employees",
                employeeService.getAllEmployees());

        return "employees";
    }
    
    @GetMapping("/employee/delete/{id}")
    public String deleteEmployee(@PathVariable Integer id,
                                 HttpSession session) {

        Admin admin = (Admin) session.getAttribute("loggedAdmin");

        if (admin == null) {
            return "redirect:/login";
        }

        employeeService.deleteEmployee(id);

        return "redirect:/admin/employees";
    }

    // ==========================
    // BOOKINGS
    // ==========================

    @GetMapping("/bookings")
    public String bookings(HttpSession session,
                           Model model) {

        Admin admin = (Admin) session.getAttribute("loggedAdmin");

        if (admin == null) {
            return "redirect:/login";
        }

        model.addAttribute("admin", admin);

        model.addAttribute("bookings",
                bookingService.getAllBookings());

        model.addAttribute("employees",
                employeeService.getAllEmployees());

        model.addAttribute("bookingCount",
                bookingService.getAllBookings().size());

        model.addAttribute("pendingCount",
                bookingService.pendingBookings().size());

        model.addAttribute("completedCount",
                bookingService.completedBookings().size());

        model.addAttribute("inProgressCount",
                bookingService.inProgressBookings().size());

        return "bookings";
    }
    
    @GetMapping("/bookings/view/{id}")
    public String viewBooking(@PathVariable Long id,
                              HttpSession session,
                              Model model) {

        Admin admin = (Admin) session.getAttribute("loggedAdmin");

        if (admin == null) {
            return "redirect:/login";
        }

        Booking booking = bookingService.getBookingById(id);

        if (booking == null) {
            return "redirect:/admin/bookings";
        }

        model.addAttribute("admin", admin);
        model.addAttribute("booking", booking);

        return "admin/bookingDetails";
    }
    
    @PostMapping("/assignEmployee")
    public String assignEmployee(@RequestParam Long bookingId,
                                 @RequestParam String employeeId,
                                 HttpSession session) {

        Admin admin = (Admin) session.getAttribute("loggedAdmin");

        if (admin == null) {
            return "redirect:/login";
        }

        var booking = bookingService.getBookingById(bookingId);

        if (booking != null) {
            booking.setAssignedEmployee(employeeId);
            bookingService.updateBooking(booking);
        }
        
        String html = "<h2 style='color:#ff8800'>RideCarePro</h2>" +
                "<p>Hello <b>" + booking.getCustomerName() + "</b>,</p>" +
                "<p><b>" + employeeId + "</b> has been assigned to your booking.</p>";

        emailService.sendHtmlEmail(
                booking.getCustomerEmail(),
                "RideCarePro - Employee Assigned",
                html
        );

        return "redirect:/admin/bookings";
    }
    
    @PostMapping("/updateStatus")
    public String updateStatus(@RequestParam Long bookingId,
                               @RequestParam String status,
                               HttpSession session) {

        Admin admin = (Admin) session.getAttribute("loggedAdmin");

        if (admin == null) {
            return "redirect:/login";
        }

        var booking = bookingService.getBookingById(bookingId);

        if (booking != null) {
            booking.setStatus(status);
            bookingService.updateBooking(booking);
        }
        
        String html = "<h2 style='color:#ff8800'>RideCarePro</h2>" +
                "<p>Hello <b>" + booking.getCustomerName() + "</b>,</p>" +
                "<p>Your booking status is now:</p>" +
                "<h3>" + status + "</h3>";

        emailService.sendHtmlEmail(
                booking.getCustomerEmail(),
                "RideCarePro - Status Updated",
                html
        );

        return "redirect:/admin/bookings";
    }

    // ==========================
    // SERVICES
    // ==========================

    @GetMapping("/services")
    public String services(HttpSession session,
                           Model model) {

        Admin admin = (Admin) session.getAttribute("loggedAdmin");

        if (admin == null) {
            return "redirect:/login";
        }

        model.addAttribute("admin", admin);

        model.addAttribute("services",
                bikeServiceService.getAllServices());

        return "services";
    }

    // ==========================
    // LOGOUT
    // ==========================

    @GetMapping("/logout")
    public String logout(HttpSession session) {

        session.invalidate();

        return "redirect:/login";
    }

}