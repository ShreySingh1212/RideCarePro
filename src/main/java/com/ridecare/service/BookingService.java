package com.ridecare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ridecare.entity.Booking;
import com.ridecare.repository.BookingRepository;

@Service
public class BookingService {

    @Autowired
    private BookingRepository bookingRepository;

    // ==========================
    // SAVE BOOKING
    // ==========================

    public Booking saveBooking(Booking booking) {

        return bookingRepository.save(booking);

    }

    // ==========================
    // GET ALL BOOKINGS
    // ==========================

    public List<Booking> getAllBookings() {

        return bookingRepository.findAll();

    }

    // ==========================
    // GET BOOKING BY ID
    // ==========================

    public Booking getBookingById(Long id) {
        return bookingRepository.findById(id).orElse(null);
    }

    // ==========================
    // UPDATE BOOKING
    // ==========================

    public Booking updateBooking(Booking booking) {

        return bookingRepository.save(booking);

    }

    // ==========================
    // DELETE BOOKING
    // ==========================

    public void deleteBooking(Long id) {

        bookingRepository.deleteById(id);

    }

    // ==========================
    // TOTAL BOOKINGS
    // ==========================

    public long totalBookings() {

        return bookingRepository.count();

    }
    // ==========================
    // PENDING BOOKINGS
    // ==========================

    public List<Booking> pendingBookings() {

        return bookingRepository.findAll()
                .stream()
                .filter(b -> "Pending".equalsIgnoreCase(b.getStatus()))
                .toList();

    }

    // ==========================
    // IN PROGRESS BOOKINGS
    // ==========================

    public List<Booking> inProgressBookings() {

        return bookingRepository.findAll()
                .stream()
                .filter(b -> "In Progress".equalsIgnoreCase(b.getStatus()))
                .toList();

    }

    // ==========================
    // COMPLETED BOOKINGS
    // ==========================

    public List<Booking> completedBookings() {

        return bookingRepository.findAll()
                .stream()
                .filter(b -> "Completed".equalsIgnoreCase(b.getStatus()))
                .toList();

    }

    // ==========================
    // BOOKINGS OF A CUSTOMER
    // ==========================

    public List<Booking> getBookingsByCustomer(String customerName) {

        return bookingRepository.findAll()
                .stream()
                .filter(b -> customerName.equalsIgnoreCase(b.getCustomerName()))
                .toList();

    }

    // ==========================
    // BOOKINGS OF AN EMPLOYEE
    // ==========================

    public List<Booking> getBookingsByEmployee(String employeeName) {

        return bookingRepository.findByAssignedEmployee(employeeName);

    }
 // ==========================
 // EMPLOYEE TODAY'S JOBS
 // ==========================

 public long employeeTotalJobs(String employeeName) {

     return bookingRepository.findByAssignedEmployee(employeeName).size();

 }

 // ==========================
 // EMPLOYEE COMPLETED JOBS
 // ==========================

 public long employeeCompletedJobs(String employeeName) {

     return bookingRepository.findByAssignedEmployee(employeeName)
             .stream()
             .filter(b -> "Completed".equalsIgnoreCase(b.getStatus()))
             .count();

 }

 // ==========================
 // EMPLOYEE PENDING JOBS
 // ==========================

 public long employeePendingJobs(String employeeName) {

     return bookingRepository.findByAssignedEmployee(employeeName)
             .stream()
             .filter(b -> "Pending".equalsIgnoreCase(b.getStatus()))
             .count();

 }

    }

