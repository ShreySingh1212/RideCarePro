package com.ridecare.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.ridecare.entity.Employee;
import com.ridecare.service.EmployeeService;
import com.ridecare.service.BookingService;
import com.ridecare.entity.Booking;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;
    
    @Autowired
    private BookingService bookingService;

    // Open Registration Page
    @GetMapping("/register")
    public String registerPage(Model model) {

        model.addAttribute("employee", new Employee());

        return "employeeRegister";
    }

    // Save Employee
    @PostMapping("/register")
    public String register(@ModelAttribute Employee employee,
                           Model model) {

        employeeService.saveEmployee(employee);

        model.addAttribute("success",
                "Employee Registered Successfully.");

        return "login";
    }

    // Employee Login
    @PostMapping("/login")
    public String login(@RequestParam String email,
                        @RequestParam String password,
                        HttpSession session,
                        Model model) {

        Employee employee =
                employeeService.login(email, password);

        if (employee != null) {

            session.setAttribute("loggedEmployee",
                    employee);

            return "redirect:/employee/dashboard";
        }

        model.addAttribute("error",
                "Invalid Email or Password");

        return "login";
    }

    // Dashboard
    @GetMapping("/dashboard")
    public String dashboard(HttpSession session,
                            Model model) {

        Employee employee =
                (Employee) session.getAttribute(
                        "loggedEmployee");

        if (employee == null) {

            return "redirect:/login";
        }

        model.addAttribute("employee",
                employee);
        
        model.addAttribute("todayJobs",
                bookingService.employeeTotalJobs(employee.getFullName()));

        model.addAttribute("completedJobs",
                bookingService.employeeCompletedJobs(employee.getFullName()));

        model.addAttribute("pendingJobs",
                bookingService.employeePendingJobs(employee.getFullName()));
        
        model.addAttribute("assignedBookings",
                bookingService.getBookingsByEmployee(employee.getFullName()));

        return "employeeDashboard";
    }
    
    @GetMapping("/assignedJobs")
    public String assignedJobs(HttpSession session, Model model) {

        Employee employee = (Employee) session.getAttribute("loggedEmployee");

        if (employee == null) {
            return "redirect:/login";
        }

        model.addAttribute("employee", employee);
        model.addAttribute("bookings",
                bookingService.getBookingsByEmployee(employee.getFullName()));

        return "assignedJobs";
    }
    @GetMapping("/updateStatus/{id}")
    public String updateStatusPage(@PathVariable Long id,
                                   HttpSession session,
                                   Model model) {

        Employee employee =
                (Employee) session.getAttribute("loggedEmployee");

        if (employee == null) {
            return "redirect:/login";
        }

        Booking booking = bookingService.getBookingById(id);

        if (booking == null) {
            return "redirect:/employee/assignedJobs";
        }

        model.addAttribute("booking", booking);

        return "updateStatus";
    }
    @PostMapping("/updateStatus")
    public String updateStatus(@ModelAttribute Booking booking,
                               HttpSession session) {

        Employee employee =
                (Employee) session.getAttribute("loggedEmployee");

        if (employee == null) {
            return "redirect:/login";
        }

        Booking existingBooking =
                bookingService.getBookingById(booking.getBookingId());

        if (existingBooking != null) {

            existingBooking.setStatus(booking.getStatus());

            bookingService.updateBooking(existingBooking);
        }

        return "redirect:/employee/assignedJobs";
    }

    // Logout
    @GetMapping("/logout")
    public String logout(HttpSession session) {

        session.invalidate();

        return "redirect:/login";
    }

}