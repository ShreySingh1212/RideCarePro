package com.ridecare.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ridecare.entity.Customer;
import com.ridecare.repository.CustomerRepository;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    public Customer registerCustomer(Customer customer) {

        return customerRepository.save(customer);

    }

    public Optional<Customer> login(String email) {

        return customerRepository.findByEmail(email);

    }

    public boolean emailExists(String email) {

        return customerRepository.existsByEmail(email);

    }
    
    public Customer findByEmail(String email) { 
    	return customerRepository.findByEmail(email).orElse(null); 
    	}

    public List<Customer> getAllCustomers() {

        return customerRepository.findAll();

    }

    public Customer getCustomerById(Integer id) {

        return customerRepository.findById(id).orElse(null);

    }

    public Customer updateCustomer(Customer customer) {

        return customerRepository.save(customer);

    }

    public void deleteCustomer(Integer id) {

        customerRepository.deleteById(id);

    }
    

}