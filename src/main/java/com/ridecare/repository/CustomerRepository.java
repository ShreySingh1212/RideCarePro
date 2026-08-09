package com.ridecare.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ridecare.entity.Customer;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {

    Optional<Customer> findByEmail(String email);

    boolean existsByEmail(String email);
    
    @Modifying
    @Transactional
    @Query("UPDATE Customer c SET c.profileImage = :url WHERE c.customerId = :id")
    void updateProfileImage(@Param("id") Integer id,
                            @Param("url") String url);

}