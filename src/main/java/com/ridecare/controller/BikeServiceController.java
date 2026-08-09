package com.ridecare.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.ridecare.entity.BikeService;
import com.ridecare.service.BikeServiceService;

@Controller
@RequestMapping("/service")
public class BikeServiceController {

    @Autowired
    private BikeServiceService bikeServiceService;

    // ==========================
    // SHOW ALL SERVICES
    // ==========================

    @GetMapping("/list")
    public String serviceList(Model model) {

        model.addAttribute("services", bikeServiceService.getAllServices());

        return "services";
    }

    // ==========================
    // ADD SERVICE PAGE
    // ==========================

    @GetMapping("/add")
    public String addServicePage(Model model) {

        model.addAttribute("bikeService", new BikeService());

        return "addService";
    }

    // ==========================
    // SAVE SERVICE
    // ==========================

    @PostMapping("/save")
    public String saveService(@ModelAttribute BikeService bikeService) {

        bikeServiceService.saveService(bikeService);

        return "redirect:/service/list";
    }
    // ==========================
    // EDIT SERVICE PAGE
    // ==========================

    @GetMapping("/edit/{id}")
    public String editService(@PathVariable Integer id, Model model) {

        BikeService bikeService = bikeServiceService.getServiceById(id);

        model.addAttribute("bikeService", bikeService);

        return "editService";
    }

    @PostMapping("/update")
    public String updateService(@ModelAttribute BikeService bikeService) {

        bikeServiceService.updateService(bikeService);

        return "redirect:/service/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteService(@PathVariable Integer id) {

        bikeServiceService.deleteService(id);

        return "redirect:/service/list";
    }

    @GetMapping("/view/{id}")
    public String viewService(@PathVariable Integer id, Model model) {

        BikeService bikeService = bikeServiceService.getServiceById(id);

        model.addAttribute("bikeService", bikeService);

        return "viewService";
    }

    
    // ==========================
    // ADMIN SERVICES PAGE
    // ==========================

    @GetMapping("/admin")
    public String adminServices(Model model) {

        model.addAttribute("services", bikeServiceService.getAllServices());

        return "services";

    }

    // ==========================
    // CUSTOMER SERVICES PAGE
    // ==========================

    @GetMapping("/customer")
    public String customerServices(Model model) {

        model.addAttribute("services", bikeServiceService.getAllServices());

        return "customerServices";

    }

}