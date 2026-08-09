package com.ridecare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ridecare.entity.BikeService;
import com.ridecare.repository.BikeServiceRepository;

@Service
public class BikeServiceService {

    @Autowired
    private BikeServiceRepository bikeServiceRepository;

    public BikeService saveService(BikeService service) {
        return bikeServiceRepository.save(service);
    }

    public List<BikeService> getAllServices() {
        return bikeServiceRepository.findAll();
    }

    public BikeService getServiceById(Integer id) {
        return bikeServiceRepository.findById(id).orElse(null);
    }

    public BikeService updateService(BikeService service) {
        return bikeServiceRepository.save(service);
    }

    public void deleteService(Integer id) {
        bikeServiceRepository.deleteById(id);
    }

}