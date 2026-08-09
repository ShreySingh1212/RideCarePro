<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin Dashboard | RideCarePro</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">
<link rel="stylesheet"
      href="${pageContext.request.contextPath}/css/adminDashboard.css">



</head>

<body>

<div class="sidebar">

<div class="logo">
RideCarePro
</div>

<a href="${pageContext.request.contextPath}/admin/dashboard">
<i class="fa-solid fa-house"></i>
<span>Dashboard</span>
</a>

<a href="${pageContext.request.contextPath}/admin/customers">
<i class="fa-solid fa-users"></i>
<span>Customers</span>
</a>

<a href="${pageContext.request.contextPath}/admin/bookings">
<i class="fa-solid fa-calendar-check"></i>
<span>Bookings</span>
</a>

<a href="${pageContext.request.contextPath}/admin/employees">
<i class="fa-solid fa-user-gear"></i>
<span>Employees</span>
</a>

<a href="${pageContext.request.contextPath}/admin/services">
<i class="fa-solid fa-screwdriver-wrench"></i>
<span>Services</span>
</a>

<a href="${pageContext.request.contextPath}/admin/logout">
<i class="fa-solid fa-right-from-bracket"></i>
<span>Logout</span>
</a>

</div>

<div class="main">

<!--=========================================
            PREMIUM HERO
==========================================-->

<section class="hero">

    <div class="hero-left">

        <span class="badge-title">

            <i class="fa-solid fa-shield-halved"></i>

            ADMIN CONTROL CENTER

        </span>

        <h1>

            Hey Boss 👋

        </h1>

        <p>

            Welcome back,
            <strong>${admin.adminName}</strong>.

            Everything is running smoothly today.

            Manage customers, employees, services and bookings
            from one intelligent dashboard.

        </p>

        <div class="hero-buttons">

            <a href="${pageContext.request.contextPath}/admin/bookings"
               class="btn-orange">

                <i class="fa-solid fa-calendar-check"></i>

                Manage Bookings

            </a>

            <a href="${pageContext.request.contextPath}/admin/employees"
               class="btn-dark">

                <i class="fa-solid fa-user-gear"></i>

                Employees

            </a>
            
            <div class="live-clock">

    <i class="fa-regular fa-clock"></i>

    <span id="clock">--:--:--</span>

</div>

        </div>

        <div class="hero-stats">

            <div>

                <h2>${customerCount}</h2>

                <span>Customers</span>

            </div>

            <div>

                <h2>${employeeCount}</h2>

                <span>Employees</span>

            </div>

            <div>

                <h2>${bookingCount}</h2>

                <span>Bookings</span>

            </div>

        </div>

    </div>

    <div class="hero-right">

        <div class="admin-card">

            <img
            src="${pageContext.request.contextPath}/images/logo-white.png">

            <h2>

                ${admin.adminName}

            </h2>

            <p>

                System Administrator

            </p>

            <div class="online">

                <span></span>

                ONLINE

            </div>

        </div>

    </div>

</section>


<!--=========================================
        RECENT BOOKINGS
==========================================-->

<section class="analytics">

    <div class="analytics-header">

        <div class="analytics-title">
            <h2>Recent Service Bookings</h2>
            <p>Live booking records across RideCarePro</p>
        </div>

        <div class="analytics-actions">
            <input type="text"
                   class="search-input"
                   placeholder="Search booking...">

            <a href="${pageContext.request.contextPath}/admin/bookings"
               class="view-all">View All</a>
        </div>

    </div>

    <div class="table-responsive">

        <table class="booking-table">

            <thead>
                <tr>
                    <th>Booking ID</th>
                    <th>Customer</th>
                    <th>Assigned Employee</th>
                    <th>Bike</th>
                    <th>Pickup Date</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>

                <c:forEach items="${bookings}" var="b">

                    <tr>

                        <td>#${b.bookingId}</td>

                        <td>
                            <div class="customer">
                                <div class="customer-avatar">${b.customerName.substring(0,1)}</div>
                                <div>
                                    <h4>${b.customerName}</h4>
                                    <span>${b.phone}</span>
                                </div>
                            </div>
                        </td>

                        <td>
                            <c:choose>
                                <c:when test="${not empty b.assignedEmployee}">
                                    ${b.assignedEmployee}
                                </c:when>
                                <c:otherwise>
                                    <span style="color:#9a9a9a">Not Assigned</span>
                                </c:otherwise>
                            </c:choose>
                        </td>

                        <td>
                            <span class="service-badge">
                                ${b.bikeCompany} ${b.bikeModel}
                            </span>
                        </td>

                        <td>${b.pickupDate}</td>

                        <td>
                            <c:choose>
                                <c:when test="${b.status eq 'Completed'}">
                                    <span class="status completed">Completed</span>
                                </c:when>

                                <c:when test="${b.status eq 'In Progress'}">
                                    <span class="status progress">In Progress</span>
                                </c:when>

                                <c:otherwise>
                                    <span class="status pending">${b.status}</span>
                                </c:otherwise>
                            </c:choose>
                        </td>

                        <td>
                            <a href="${pageContext.request.contextPath}/admin/bookings/view/${b.bookingId}"
                               class="view-btn">
                                <i class="fa-solid fa-eye"></i>
                                View
                            </a>
                        </td>

                    </tr>

                </c:forEach>

            </tbody>

        </table>

    </div>

</section>

<!-- RECENT ACTIVITY -->

<div class="activity">

<div class="d-flex justify-content-between align-items-center mb-4">

<h3>

System Summary

</h3>

<a href="${pageContext.request.contextPath}/admin/dashboard"

class="quick-btn">

Refresh

</a>

</div>

<div class="activity-item">

<div>

<h6>

<i class="fa-solid fa-users text-warning"></i>

&nbsp;

Registered Customers

</h6>

<small class="text-secondary">

Total customers registered in RideCarePro.

</small>

</div>

<span class="text-warning">

${customerCount}

</span>

</div>

<div class="activity-item">

<div>

<h6>

<i class="fa-solid fa-user-gear text-info"></i>

&nbsp;

Working Employees

</h6>

<small class="text-secondary">

Total employees available.

</small>

</div>

<span class="text-info">

${employeeCount}

</span>

</div>

<div class="activity-item">

<div>

<h6>

<i class="fa-solid fa-calendar-check text-success"></i>

&nbsp;

Bookings Received

</h6>

<small class="text-secondary">

Total bookings received from customers.

</small>

</div>

<span class="text-success">

${bookingCount}

</span>

</div>

<div class="activity-item">

<div>

<h6>

<i class="fa-solid fa-clock text-warning"></i>

&nbsp;

Pending Services

</h6>

<small class="text-secondary">

Bookings waiting for service.

</small>

</div>

<span class="text-warning">

${pendingCount}

</span>

</div>

<div class="activity-item">

<div>

<h6>

<i class="fa-solid fa-circle-check text-success"></i>

&nbsp;

Completed Services

</h6>

<small class="text-secondary">

Successfully completed bookings.

</small>

</div>

<span class="text-success">

${completedCount}

</span>

</div>

</div>
<!-- QUICK ACTIONS -->



<!-- ADMIN INFORMATION -->

<div class="table-section mt-4"><!--=========================================
        PREMIUM QUICK ACTIONS
==========================================-->

<section class="quick-actions">

    <div class="section-header">

        <div>

            <h2>

                Quick Actions

            </h2>

            <p>

                Frequently used administrator shortcuts

            </p>

        </div>

    </div>

<div class="quick-grid">

    <a href="${pageContext.request.contextPath}/admin/bookings"
       class="quick-card text-decoration-none text-white">

        <i class="fa-solid fa-calendar-check"></i>

        <h3>Bookings</h3>

        <p>View and manage all customer bookings.</p>

    </a>

    <a href="${pageContext.request.contextPath}/admin/customers"
       class="quick-card text-decoration-none text-white">

        <i class="fa-solid fa-users"></i>

        <h3>Customers</h3>

        <p>Manage registered customers.</p>

    </a>

    <a href="${pageContext.request.contextPath}/admin/employees"
       class="quick-card text-decoration-none text-white">

        <i class="fa-solid fa-user-gear"></i>

        <h3>Employees</h3>

        <p>Manage mechanics and service engineers.</p>

    </a>

    <a href="${pageContext.request.contextPath}/employee/register"
       class="quick-card text-decoration-none text-white">

        <i class="fa-solid fa-user-plus"></i>

        <h3>Add Employee</h3>

        <p>Register a new RideCarePro employee.</p>

    </a>

    <a href="${pageContext.request.contextPath}/admin/services"
       class="quick-card text-decoration-none text-white">

        <i class="fa-solid fa-screwdriver-wrench"></i>

        <h3>Services</h3>

        <p>Manage all available service packages.</p>

    </a>

    <a href="${pageContext.request.contextPath}/admin/logout"
       class="quick-card text-decoration-none text-white">

        <i class="fa-solid fa-right-from-bracket"></i>

        <h3>Logout</h3>

        <p>Securely sign out of the admin dashboard.</p>

    </a>

</div>

</section>

<h3 class="mb-4">

Administrator Information

</h3>

<div class="profile-box">

    <div class="profile-left">

        <img src="${pageContext.request.contextPath}/images/logo-white.png">

        <div class="profile-info">

            <h2>${admin.adminName}</h2>

            <h4>System Administrator</h4>

            <p>

                Welcome back Boss.

                Manage customers, employees,
                bookings and services from
                one premium dashboard.

            </p>

        </div>

    </div>

    <div class="profile-right">

        <div class="info-card">

            <h3>${customerCount}</h3>

            <span>Customers</span>

        </div>

        <div class="info-card">

            <h3>${employeeCount}</h3>

            <span>Employees</span>

        </div>

        <div class="info-card">

            <h3>${bookingCount}</h3>

            <span>Bookings</span>

        </div>

    </div>

</div>

</div>

<!-- FOOTER -->

<footer class="text-center mt-5 pt-4 pb-3">

<hr class="border-secondary">

<p class="text-secondary mb-1">

© 2026 RideCarePro Admin Dashboard

</p>

<p class="text-secondary">

Developed using Spring Boot • Spring MVC • Spring Data JPA • Hibernate • MySQL

</p>

</footer>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script src="${pageContext.request.contextPath}/js/adminDashboard.js"></script>

</body>

</html>