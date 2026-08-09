package com.ridecare.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.ridecare.entity.Customer;
import com.ridecare.service.CustomerService;

import jakarta.servlet.http.HttpSession;
import com.ridecare.entity.Admin;
import com.ridecare.entity.Employee;
import com.ridecare.service.AdminService;
import com.ridecare.service.EmployeeService;
@Controller
public class LoginController {

    @Autowired
    private CustomerService customerService;
    
    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private AdminService adminService;

    @PostMapping("/login")
    public String login(@RequestParam String role,
                        @RequestParam String email,
                        @RequestParam String password,
                        HttpSession session,
                        Model model) {

        // CUSTOMER LOGIN
        if(role.equals("CUSTOMER")){

            Optional<Customer> customer = customerService.login(email);

            if(customer.isPresent()
                    && customer.get().getPassword().equals(password)){

                session.setAttribute("loggedCustomer", customer.get());

                return "redirect:/customer/dashboard";
            }

            model.addAttribute("error","Invalid Customer Login");

            return "login";
        }

     // EMPLOYEE LOGIN
        if (role.equals("EMPLOYEE")) {

            Employee employee = employeeService.login(email, password);

            if (employee != null) {

                session.setAttribute("loggedEmployee", employee);

                return "redirect:/employee/dashboard";
            }

            model.addAttribute("error", "Invalid Employee Login");
            return "login";
        }

        // ADMIN LOGIN
        if (role.equals("ADMIN")) {

            Admin admin = adminService.login(email, password);

            if (admin != null) {

                session.setAttribute("loggedAdmin", admin);

                return "redirect:/admin/dashboard";
            }

            model.addAttribute("error", "Invalid Admin Login");
            return "login";
        }
        model.addAttribute("error", "Invalid Role");
        return "login";
    }
    
}
    