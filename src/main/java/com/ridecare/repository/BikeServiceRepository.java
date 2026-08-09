package com.ridecare.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ridecare.entity.BikeService;

@Repository
public interface BikeServiceRepository extends JpaRepository<BikeService, Integer> {

}