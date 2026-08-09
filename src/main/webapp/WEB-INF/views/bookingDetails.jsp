<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
content="width=device-width, initial-scale=1">

<title>RideCarePro | Booking Details</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css"
rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
rel="stylesheet">

<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/bookingDetails.css">

</head>

<body>

<div class="background-blur"></div>

<div class="container py-5">

<div class="hero">

    <div class="hero-left">

        <span class="badge-title">

            <i class="fa-solid fa-file-circle-check"></i>

            BOOKING DETAILS

        </span>

        <h1>

            Booking #${booking.bookingId}

        </h1>

        <p>

            Complete booking information for this RideCarePro service request.

        </p>

    </div>

    <div class="hero-right">

        <c:choose>

    <c:when test="${booking.status eq 'Completed'}">
        <span class="status completed">Completed</span>
    </c:when>

    <c:when test="${booking.status eq 'Pending'}">
        <span class="status pending">Pending</span>
    </c:when>

    <c:when test="${booking.status eq 'In Progress'}">
        <span class="status progress">In Progress</span>
    </c:when>

    <c:when test="${booking.status eq 'Cancelled'}">
        <span class="status cancelled">Cancelled</span>
    </c:when>

    <c:otherwise>
        <span class="status default">${booking.status}</span>
    </c:otherwise>

</c:choose>

    </div>

</div>



<div class="row g-4">

<div class="col-lg-6">

<div class="info-card">

<h4>

<i class="fa-solid fa-user"></i>

Customer

</h4>

<p>${booking.customerName}</p>

</div>

</div>

<div class="col-lg-6">

<div class="info-card">

<h4>

<i class="fa-solid fa-motorcycle"></i>

Bike

</h4>

<p>

${booking.bikeCompany}

${booking.bikeModel}

</p>

</div>

</div>

<div class="col-lg-6">

<div class="info-card">

<h4>

<i class="fa-solid fa-wrench"></i>

Service

</h4>

<p>${booking.serviceName}</p>

</div>

</div>

<div class="col-lg-6">

<div class="info-card">

<h4>

<i class="fa-solid fa-user-gear"></i>

Assigned Employee

</h4>

<p>${booking.assignedEmployee}</p>

</div>

</div>

<div class="col-lg-6">

<div class="info-card">

<h4>

<i class="fa-solid fa-calendar"></i>

Pickup Date

</h4>

<p>${booking.pickupDate}</p>

</div>

</div>

<div class="col-lg-6">

<div class="info-card">

<h4>

<i class="fa-solid fa-clock"></i>

Pickup Time

</h4>

<p>${booking.pickupTime}</p>

</div>

</div>

<div class="col-lg-6">

<div class="info-card">

<h4>

<i class="fa-solid fa-id-card"></i>

Registration No.

</h4>

<p>${booking.registrationNumber}</p>

</div>

</div>

<div class="col-lg-6">

<div class="info-card">

<h4>

<i class="fa-solid fa-phone"></i>

Phone

</h4>

<p>${booking.phone}</p>

</div>

</div>

<div class="col-12">

<div class="info-card">

<h4>

<i class="fa-solid fa-location-dot"></i>

Pickup Address

</h4>

<p>${booking.pickupAddress}</p>

</div>

</div>

<div class="col-12">

<div class="info-card">

<h4>

<i class="fa-solid fa-note-sticky"></i>

Remarks

</h4>

<p>${booking.remarks}</p>

</div>

</div>

</div>

<div class="text-center mt-5">

<div class="action-buttons">

<a href="javascript:history.back();" class="back-btn">

<i class="fa-solid fa-arrow-left"></i>

Back

</a>

<button
class="print-btn"
onclick="window.print()">

<i class="fa-solid fa-print"></i>

Print

</button>

</div>

</div>

</div>

<script src="${pageContext.request.contextPath}/js/bookingDetails.js"></script>

</body>

</html>