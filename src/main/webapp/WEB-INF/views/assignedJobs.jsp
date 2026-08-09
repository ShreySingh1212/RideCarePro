<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Assigned Jobs | RideCarePro</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Segoe UI',sans-serif;
}

body{
background:#111;
color:white;
}

.container{
margin-top:40px;
}

.card{
background:#181818;
border:none;
border-radius:15px;
}

.card-header{
background:#ff8800;
color:white;
font-size:24px;
font-weight:bold;
border-radius:15px 15px 0 0 !important;
}

.table{
color:white;
}

.table thead{
background:#ff8800;
}

.table tbody tr:hover{
background:#222;
}

.btn-orange{
background:#ff8800;
color:white;
border:none;
}

.btn-orange:hover{
background:#ff6600;
color:white;
}

.btn-warning{
font-weight:bold;
}

.badge-pending{
background:#ffc107;
color:black;
padding:8px 15px;
border-radius:20px;
}

.badge-progress{
background:#17a2b8;
padding:8px 15px;
border-radius:20px;
}

.badge-completed{
background:#28a745;
padding:8px 15px;
border-radius:20px;
}

</style>

</head>

<body>

<div class="container">

<div class="card">

<div class="card-header">

<i class="fa-solid fa-calendar-check"></i>

Assigned Jobs

</div>

<div class="card-body">

<table class="table table-dark table-hover">

<thead>

<tr>

<th>Booking ID</th>
<th>Customer</th>
<th>Bike</th>
<th>Service</th>
<th>Pickup Date</th>
<th>Status</th>
<th>Action</th>

</tr>

</thead>

<tbody>

<c:forEach var="booking" items="${bookings}">

<tr>

<td>${booking.bookingId}</td>

<td>${booking.customerName}</td>

<td>${booking.bikeCompany} ${booking.bikeModel}</td>

<td>${booking.serviceName}</td>

<td>${booking.pickupDate}</td>

<td>

<c:choose>

<c:when test="${booking.status=='Pending'}">

<span class="badge-pending">

${booking.status}

</span>

</c:when>

<c:when test="${booking.status=='In Progress'}">

<span class="badge-progress">

${booking.status}

</span>

</c:when>

<c:otherwise>

<span class="badge-completed">

${booking.status}

</span>

</c:otherwise>

</c:choose>

</td>

<td>

<a href="${pageContext.request.contextPath}/employee/updateStatus/${booking.bookingId}"
class="btn btn-warning btn-sm">

<i class="fa-solid fa-pen"></i>

Update

</a>

</td>

</tr>

</c:forEach>

<c:if test="${empty bookings}">

<tr>

<td colspan="7" class="text-center">

No Assigned Jobs Found

</td>

</tr>

</c:if>

</tbody>

</table>

<div class="mt-4">

<a href="${pageContext.request.contextPath}/employee/dashboard"
class="btn btn-orange">

<i class="fa-solid fa-arrow-left"></i>

Back to Dashboard

</a>

</div>

</div>

</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>