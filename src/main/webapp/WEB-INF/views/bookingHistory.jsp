
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<title>RideCarePro | Booking History</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css"
rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
rel="stylesheet">

<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/bookingHistory.css">

</head>

<body>

<div class="background-blur"></div>

<div class="container-fluid py-5">

<div class="booking-header">

<h1>

<i class="fa-solid fa-clock-rotate-left"></i>

Booking History

</h1>

<p>

Track all your RideCarePro service bookings

</p>

</div>

<div class="row mb-4">

    <div class="col-md-6">

        <input type="text"
               id="bookingSearch"
               class="form-control"
               placeholder="🔍 Search by Bike, Service or Booking ID">

    </div>

    <div class="col-md-6">

        <select id="statusFilter" class="form-select">

            <option value="all">All Status</option>
            <option value="Pending">Pending</option>
            <option value="In Progress">In Progress</option>
            <option value="Completed">Completed</option>

        </select>

    </div>

</div>


<div class="booking-list">

<c:choose>

<c:when test="${not empty bookings}">

<c:forEach var="booking" items="${bookings}">

<div class="booking-card booking-item">

<div class="booking-top"
     data-status="${booking.status}"
     data-search="${booking.bookingId} ${booking.bikeCompany} ${booking.bikeModel} ${booking.serviceName}">

<div>

<h3>

${booking.bikeCompany}

${booking.bikeModel}

</h3>

<p>

Booking ID :
#${booking.bookingId}

</p>

</div>

<div>

<c:set var="statusClass"
       value="${booking.status == 'In Progress' ? 'status-in-progress' : booking.status.toLowerCase()}" />

<span class="status ${statusClass}">
    ${booking.status}
</span>

</div>

</div>
<div class="booking-details">

<div>

<i class="fa-solid fa-wrench"></i>

<b>Service</b>

<p>

${booking.serviceName}

</p>

</div>

<div>

<i class="fa-solid fa-calendar"></i>

<b>Date</b>

<p>

${booking.pickupDate}

</p>

</div>

<div>

<i class="fa-solid fa-clock"></i>

<b>Time</b>

<p>

${booking.pickupTime}

</p>

</div>

<div>

<i class="fa-solid fa-user-gear"></i>

<b>Employee</b>

<p>

${booking.assignedEmployee}

</p>

</div>

</div>
<div class="address-box">

<i class="fa-solid fa-location-dot"></i>

${booking.pickupAddress}

</div>

<div class="button-area">

<a href="${pageContext.request.contextPath}/booking/view/${booking.bookingId}"

class="btn-orange">

<i class="fa-solid fa-eye"></i>

View Details

</a>

</div>

</div>

</c:forEach>

</c:when>

<c:otherwise>

<div class="alert alert-warning text-center">

    <i class="fa-solid fa-circle-info"></i>

    No bookings found.

</div>

</c:otherwise>

</c:choose>

</div>

<div class="text-center mt-5">

<a href="${pageContext.request.contextPath}/customer/dashboard"

class="btn-dark">

<i class="fa-solid fa-arrow-left"></i>

Back to Dashboard

</a>

</div>

</div>

<script src="${pageContext.request.contextPath}/js/bookingHistory.js"></script>

</body>

</html>