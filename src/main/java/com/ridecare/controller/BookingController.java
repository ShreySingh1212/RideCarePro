package com.ridecare.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.time.LocalDate;

import com.ridecare.entity.Booking;
import com.ridecare.entity.Customer;
import com.ridecare.service.BookingService;
import com.ridecare.service.EmployeeService;
import com.ridecare.service.EmailService;

import jakarta.servlet.http.HttpSession;

@Controller
public class BookingController {

    @Autowired
    private BookingService bookingService;

    @Autowired
    private EmployeeService employeeService;
    
    @Autowired
    private EmailService emailService;

    // ==========================
    // BOOK SERVICE PAGE
    // ==========================

    @GetMapping("/bookService")
    public String bookServicePage(Model model) {

        model.addAttribute("booking", new Booking());

        return "bookService";
    }

    // ==========================
    // SAVE BOOKING
    // ==========================

    @PostMapping("/bookService")
    public String saveBooking(@ModelAttribute Booking booking,
                              HttpSession session,
                              Model model) {

    	 Customer customer = (Customer) session.getAttribute("loggedCustomer");

    	    if (customer == null) {
    	    	return "redirect:/login";
    	    }

        
        booking.setPhone(customer.getPhone());

        if (booking.getPickupDate().isBefore(LocalDate.now())) {
            return "redirect:/customer/bookService?error=date";
        }
        
        booking.setCustomerEmail(customer.getEmail());
        booking.setCustomerName(customer.getFullName());
        
        String html = "<h2 style='color:#ff8800'>RideCarePro</h2>" +
                "<p>Hello <b>" + booking.getCustomerName() + "</b>,</p>" +
                "<p>Your booking has been confirmed.</p>" +
                "<p><b>Booking ID:</b> " + booking.getBookingId() + "</p>" +
                "<p><b>Service:</b> " + booking.getServiceName() + "</p>" +
                "<p><b>Pickup Date:</b> " + booking.getPickupDate() + "</p>";

        emailService.sendHtmlEmail(
                booking.getCustomerEmail(),
                "RideCarePro - Booking Confirmed",
                html
        );

        booking.setStatus("Pending");
        booking.setAssignedEmployee("Not Assigned");

        bookingService.saveBooking(booking);

        model.addAttribute("booking", booking);

        return "bookingSuccess";
    }

    
    // ==========================
    // ASSIGN EMPLOYEE & UPDATE STATUS
    // ==========================

    @PostMapping("/booking/assignEmployee")
    public String assignEmployee(@RequestParam Long bookingId,
                                 @RequestParam String employee,
                                 @RequestParam String status) {

        Booking booking = bookingService.getBookingById(bookingId);

        if (booking != null) {

            booking.setAssignedEmployee(employee);

            booking.setStatus(status);

            bookingService.updateBooking(booking);

        }

        return "redirect:/admin/bookings";
    }

    // ==========================
    // CUSTOMER MY BOOKINGS
    // ==========================

    @GetMapping("/customer/myBookings")
    public String myBookings(HttpSession session,
                             Model model) {

        Customer customer =
                (Customer) session.getAttribute("loggedCustomer");

        if (customer == null) {

            return "redirect:/login";

        }

        List<Booking> bookingList =
                bookingService.getBookingsByCustomer(customer.getFullName());

        model.addAttribute("bookings", bookingList);

        return "myBookings";
    }

    // ==========================
    // VIEW BOOKING DETAILS
    // ==========================

    @GetMapping("/booking/view/{id}")
    public String viewBooking(@PathVariable Long id,
                              HttpSession session,
                              Model model) {

        if (session.getAttribute("loggedAdmin") == null &&
            session.getAttribute("loggedCustomer") == null &&
            session.getAttribute("loggedEmployee") == null) {

            return "redirect:/login";
        }

        Booking booking = bookingService.getBookingById(id);

        if (booking == null) {

            return "redirect:/admin/bookings";
        }

        model.addAttribute("booking", booking);

        return "bookingDetails";
    }

    // ==========================
    // EDIT BOOKING
    // ==========================

    @GetMapping("/booking/edit/{id}")
    public String editBooking(@PathVariable Long id,
                              Model model) {

        Booking booking =
                bookingService.getBookingById(id);

        model.addAttribute("booking", booking);

        model.addAttribute("employees",
                employeeService.getAllEmployees());

        return "editBooking";
    }

    @PostMapping("/booking/update")
    public String updateBooking(@ModelAttribute Booking booking) {

        bookingService.updateBooking(booking);

        return "redirect:/admin/bookings";
    }
    // ==========================
    // DELETE BOOKING
    // ==========================

    @GetMapping("/booking/delete/{id}")
    public String deleteBooking(@PathVariable Long id) {

        bookingService.deleteBooking(id);

        return "redirect:/admin/bookings";
    }

    // ==========================
    // BOOKING SUCCESS PAGE
    // ==========================

    @GetMapping("/booking/success")
    public String bookingSuccess() {

        return "bookingSuccess";
    }

    // ==========================
    // CUSTOMER BOOKING HISTORY
    // ==========================

    @GetMapping("/customer/bookingHistory")
    public String bookingHistory(HttpSession session,
                                 Model model) {

        Customer customer =
                (Customer) session.getAttribute("loggedCustomer");

        if (customer == null) {

            return "redirect:/login";

        }

        List<Booking> bookingList =
                bookingService.getBookingsByCustomer(customer.getFullName());

        model.addAttribute("bookings", bookingList);

        model.addAttribute("customer", customer);

        return "bookingHistory";
    }

}