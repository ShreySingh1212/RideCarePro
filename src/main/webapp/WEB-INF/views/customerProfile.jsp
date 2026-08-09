<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>RideCarePro | Customer Account</title>

<!-- Google Font -->

<link rel="preconnect"
      href="https://fonts.googleapis.com">

<link rel="preconnect"
      href="https://fonts.gstatic.com"
      crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
      rel="stylesheet">

<!-- Font Awesome -->

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<!-- Profile CSS -->

<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/profile.css">

</head>

<body>

<div class="background-blur"></div>

<div class="profile-wrapper">
<section class="profile-hero">

    <div class="profile-left">

       <div class="profile-avatar">

    <c:choose>

        <c:when test="${not empty customer.profileImage}">
            <img src="${customer.profileImage}"
                 alt="Profile"
                 style="width:100%;height:100%;object-fit:cover;border-radius:50%;"/>
        </c:when>

        <c:otherwise>
            <img src="https://ui-avatars.com/api/?name=${customer.fullName}&background=ff6b00&color=fff&size=256"
                 alt="Profile"
                 style="width:100%;height:100%;object-fit:cover;border-radius:50%;"/>
        </c:otherwise>

    </c:choose>

</div>

        <h1>

            ${customer.fullName}

        </h1>

        <p>

            RideCarePro Gold Member

        </p>

        <div class="hero-buttons">

            <a href="${pageContext.request.contextPath}/customer/dashboard"
               class="btn-primary">

                <i class="fa-solid fa-house"></i>

                Dashboard

            </a>

            <a href="${pageContext.request.contextPath}/customer/logout"
               class="btn-secondary">

                <i class="fa-solid fa-right-from-bracket"></i>

                Logout

            </a>

        </div>

    </div>

    <div class="membership-card">

        <div class="card-top">

            <h2>

                RideCarePro

            </h2>

            <span>

                GOLD MEMBER

            </span>

        </div>

        <div class="card-middle">

            <h3>

                ${customer.fullName}

            </h3>

            <p>

                Customer ID :
                RC-${customer.customerId}

            </p>

        </div>

        <div class="card-bottom">

            <div>

                <small>

                    MEMBER SINCE

                </small>

                <h4>

                    ${customer.createdAt}

                </h4>

            </div>

            <i class="fa-solid fa-motorcycle"></i>

        </div>

    </div>

</section>
<section class="profile-grid">

    <div class="glass-card">

        <div class="card-title">

            <i class="fa-solid fa-user"></i>

            <h2>

                Personal Information

            </h2>

        </div>

        <div class="info-list">

            <div class="info-item">

                <i class="fa-solid fa-user"></i>

                <div>

                    <label>

                        Full Name

                    </label>

                    <h4>

                        ${customer.fullName}

                    </h4>

                </div>

            </div>

            <div class="info-item">

                <i class="fa-solid fa-envelope"></i>

                <div>

                    <label>

                        Email

                    </label>

                    <h4>

                        ${customer.email}

                    </h4>

                </div>

            </div>

            <div class="info-item">

                <i class="fa-solid fa-phone"></i>

                <div>

                    <label>

                        Phone

                    </label>

                    <h4>

                        ${customer.phone}

                    </h4>

                </div>

            </div>

            <div class="info-item">

                <i class="fa-solid fa-location-dot"></i>

                <div>

                    <label>

                        Address

                    </label>

                    <h4>

                        ${customer.address}

                    </h4>

                </div>

            </div>

        </div>

    </div>

    <div class="glass-card">

        <div class="card-title">

            <i class="fa-solid fa-chart-line"></i>

            <h2>

                Profile Completion

            </h2>

        </div>

        <div class="completion-circle">

            <h1>

                95%

            </h1>

        </div>

        <div class="progress-bar">

            <span style="width:95%"></span>

        </div>

        <p class="completion-text">

            Your profile is almost complete.

            Keep your information updated for faster bookings.

        </p>

    </div>

</section>
<!-- =====================================
            ACCOUNT STATISTICS
====================================== -->

<section class="stats-section">

    <div class="section-heading">

        <h2>Account Statistics</h2>

        <p>Your RideCarePro service summary</p>

    </div>

    <div class="stats-grid">

        <div class="stat-card">

            <div class="stat-icon">

                <i class="fa-solid fa-calendar-check"></i>

            </div>

            <h2 class="counter">${totalBookings}</h2>

            <p>Total Bookings</p>

        </div>

        <div class="stat-card">

            <div class="stat-icon">

                <i class="fa-solid fa-circle-check"></i>

            </div>

            <h2 class="counter">${completedBookings}</h2>

            <p>Completed</p>

        </div>

        <div class="stat-card">

            <div class="stat-icon">

                <i class="fa-solid fa-hourglass-half"></i>

            </div>

            <h2 class="counter">${pendingBookings}</h2>

            <p>Pending</p>

        </div>

        <div class="stat-card">

            <div class="stat-icon">

                <i class="fa-solid fa-indian-rupee-sign"></i>

            </div>

            <h2 class="counter">₹${totalSpent}</h2>

            <p>Total Spent</p>

        </div>

        <div class="stat-card">

            <div class="stat-icon">

                <i class="fa-solid fa-star"></i>

            </div>

            <h2>4.9</h2>

            <p>Customer Rating</p>

        </div>

        <div class="stat-card">

            <div class="stat-icon">

                <i class="fa-solid fa-award"></i>

            </div>

            <h2>Gold</h2>

            <p>Membership</p>

        </div>

    </div>

</section>
<!-- =====================================
            MY MOTORCYCLE
====================================== -->

<section class="profile-two-column">

    <div class="glass-card">

        <div class="card-title">

            <i class="fa-solid fa-motorcycle"></i>

            <h2>My Motorcycle</h2>

        </div>

        <c:choose>

            <c:when test="${not empty upcomingBooking}">

                <div class="bike-grid">

                    <div class="bike-item">

                        <label>Company</label>

                        <h4>${upcomingBooking.bikeCompany}</h4>

                    </div>

                    <div class="bike-item">

                        <label>Model</label>

                        <h4>${upcomingBooking.bikeModel}</h4>

                    </div>

                    <div class="bike-item">

                        <label>Registration</label>

                        <h4>${upcomingBooking.registrationNumber}</h4>

                    </div>

                    <div class="bike-item">

                        <label>Status</label>

                        <span class="status-badge">

                            ${upcomingBooking.status}

                        </span>

                    </div>

                </div>

            </c:when>

            <c:otherwise>

                <div class="empty-state">

                    <i class="fa-solid fa-motorcycle"></i>

                    <h3>No Motorcycle Found</h3>

                    <p>

                        Book your first service to see your motorcycle details.

                    </p>

                </div>

            </c:otherwise>

        </c:choose>

    </div>
        <div class="glass-card">

        <div class="card-title">

            <i class="fa-solid fa-screwdriver-wrench"></i>

            <h2>Service Summary</h2>

        </div>

        <c:choose>

            <c:when test="${not empty upcomingBooking}">

                <div class="summary-list">

                    <div class="summary-item">

                        <label>Service</label>

                        <h4>

                            ${upcomingBooking.serviceName}

                        </h4>

                    </div>

                    <div class="summary-item">

                        <label>Pickup Date</label>

                        <h4>

                            ${upcomingBooking.pickupDate}

                        </h4>

                    </div>

                    <div class="summary-item">

                        <label>Pickup Time</label>

                        <h4>

                            ${upcomingBooking.pickupTime}

                        </h4>

                    </div>

                    <div class="summary-item">

                        <label>Mechanic</label>

                        <h4>

                            ${upcomingBooking.assignedEmployee}

                        </h4>

                    </div>

                </div>

            </c:when>

            <c:otherwise>

                <div class="empty-state">

                    <i class="fa-solid fa-calendar-xmark"></i>

                    <h3>No Upcoming Service</h3>

                    <p>

                        You don't have any scheduled bookings.

                    </p>

                </div>

            </c:otherwise>

        </c:choose>

    </div>

</section>
<!-- =====================================
            ACHIEVEMENTS
====================================== -->

<section class="glass-card achievements">

    <div class="card-title">

        <i class="fa-solid fa-trophy"></i>

        <h2>

            Achievement Badges

        </h2>

    </div>

    <div class="badge-grid">

        <div class="badge-card">

            🏍

            <h4>Loyal Rider</h4>

            <p>Completed first booking</p>

        </div>

        <div class="badge-card">

            ⭐

            <h4>Gold Member</h4>

            <p>Premium customer</p>

        </div>

        <div class="badge-card">

            🔧

            <h4>Service Expert</h4>

            <p>5+ completed services</p>

        </div>

        <div class="badge-card">

            🚀

            <h4>Fast Booker</h4>

            <p>Online booking champion</p>

        </div>

    </div>

</section>
<!-- =====================================
            RECENT ACTIVITY
====================================== -->

<section class="profile-two-column">

    <div class="glass-card">

        <div class="card-title">

            <i class="fa-solid fa-clock-rotate-left"></i>

            <h2>Recent Activity</h2>

        </div>

        <div class="timeline">

            <c:choose>

                <c:when test="${not empty recentBookings}">

                    <c:forEach items="${recentBookings}" var="booking">

                        <div class="timeline-item">

                            <div class="timeline-dot"></div>

                            <div class="timeline-content">

                                <h4>${booking.serviceName}</h4>

                                <p>${booking.pickupDate}</p>

                                <span class="status-badge">

                                    ${booking.status}

                                </span>

                            </div>

                        </div>

                    </c:forEach>

                </c:when>

                <c:otherwise>

                    <div class="empty-state">

                        <i class="fa-solid fa-clock"></i>

                        <h3>No Recent Activity</h3>

                    </div>

                </c:otherwise>

            </c:choose>

        </div>

    </div>
        <div class="glass-card">

        <div class="card-title">

            <i class="fa-solid fa-shield-halved"></i>

            <h2>Account Security</h2>

        </div>

        <div class="security-list">

            <div class="security-item">

                <i class="fa-solid fa-lock"></i>

                <div>

                    <h4>Password</h4>

                    <p>Protected</p>

                </div>

            </div>

            <div class="security-item">

                <i class="fa-solid fa-envelope-circle-check"></i>

                <div>

                    <h4>Email</h4>

                    <p>Verified</p>

                </div>

            </div>

            <div class="security-item">

                <i class="fa-solid fa-phone-volume"></i>

                <div>

                    <h4>Phone</h4>

                    <p>Verified</p>

                </div>

            </div>

            <div class="security-item">

                <i class="fa-solid fa-user-check"></i>

                <div>

                    <h4>Session</h4>

                    <p>Currently Active</p>

                </div>

            </div>

        </div>

    </div>

</section>
<!-- ================= QUICK ACTIONS ================= -->

<section class="quick-actions">

    <div class="section-title">

        <i class="fa-solid fa-bolt"></i>

        <h2>Quick Actions</h2>

    </div>

    <div class="quick-grid">

        <a href="${pageContext.request.contextPath}/bookService"
           class="quick-card">

            <i class="fa-solid fa-screwdriver-wrench"></i>

            <span>Book Service</span>

        </a>

        <a href="${pageContext.request.contextPath}/customer/bookingHistory"
           class="quick-card">

            <i class="fa-solid fa-calendar-check"></i>

            <span>Booking History</span>

        </a>

        <a href="${pageContext.request.contextPath}/customer/edit-profile"
           class="quick-card">

            <i class="fa-solid fa-user-pen"></i>

            <span>Edit Profile</span>

        </a>

        <a href="${pageContext.request.contextPath}/customer/change-password"
           class="quick-card">

            <i class="fa-solid fa-lock"></i>

            <span>Change Password</span>

        </a>

        <a href="${pageContext.request.contextPath}/customer/dashboard"
           class="quick-card">

            <i class="fa-solid fa-house"></i>

            <span>Dashboard</span>

        </a>

    </div>

</section>
<!-- =====================================
            SUPPORT
====================================== -->

<section class="glass-card support-card">

    <div class="card-title">

        <i class="fa-solid fa-headset"></i>

        <h2>Need Help?</h2>

    </div>

    <div class="support-grid">

        <div>

            <i class="fa-solid fa-phone"></i>

            <h4>24×7 Support</h4>

            <p>+91 9876543210</p>

        </div>

        <div>

            <i class="fa-solid fa-envelope"></i>

            <h4>Email</h4>

            <p>support@ridecarepro.com</p>

        </div>

        <div>

            <i class="fa-solid fa-location-dot"></i>

            <h4>Service Center</h4>

            <p>Greater Noida</p>

        </div>

    </div>

</section>
<footer class="profile-footer">

    <p>

        © 2026 RideCarePro • Premium Motorcycle Service Platform

    </p>

</footer>

</div>

<script src="${pageContext.request.contextPath}/js/profile.js"></script>

</body>

</html>