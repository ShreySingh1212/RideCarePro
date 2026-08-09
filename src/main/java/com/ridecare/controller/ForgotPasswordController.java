package com.ridecare.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.ridecare.service.EmailService;

@Controller
public class ForgotPasswordController {

    @Autowired
    private EmailService emailService;

    @GetMapping("/forgot-password")
    public String forgotPasswordPage() {
        return "forgotPassword";
    }

    @PostMapping("/forgot-password")
    public String sendReset(@RequestParam String email, Model model) {

        String link = "http://localhost:9090/reset-password?email=" + email;

        emailService.sendHtmlEmail(
                email,
                "RideCarePro - Reset Password",
                "<h2 style='color:#ff8800'>RideCarePro</h2>" +
                "<p>Click below to reset your password:</p>" +
                "<a href='" + link + "'>Reset Password</a>"
        );

        model.addAttribute("success", "Reset link sent to your email");

        return "forgotPassword";
    }
}