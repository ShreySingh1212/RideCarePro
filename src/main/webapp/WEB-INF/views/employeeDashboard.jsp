<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Employee Dashboard | RideCarePro</title>

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
background:#0f0f0f;
color:white;
overflow-x:hidden;
}

/* Sidebar */

.sidebar{
position:fixed;
top:0;
left:0;
width:250px;
height:100%;
background:#181818;
padding-top:25px;
}

.logo{
text-align:center;
font-size:28px;
font-weight:bold;
color:#ff8800;
margin-bottom:40px;
}

.sidebar a{
display:block;
padding:16px 28px;
text-decoration:none;
color:white;
transition:.3s;
font-size:17px;
}

.sidebar a:hover{
background:#ff8800;
padding-left:40px;
}

.sidebar i{
margin-right:12px;
}

/* Main */

.main{
margin-left:250px;
padding:30px;
}

/* Topbar */

.topbar{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:30px;
}

.employee{

display:flex;
align-items:center;
gap:15px;

}

.employee img{

width:55px;
height:55px;
border-radius:50%;
border:3px solid #ff8800;

}

/* Welcome */

.banner{

background:linear-gradient(135deg,#ff8800,#ff6600);
padding:35px;
border-radius:18px;
margin-bottom:35px;

}

.banner h2{

font-weight:bold;

}

/* Cards */

.card-box{

background:#181818;
padding:30px;
border-radius:18px;
text-align:center;
transition:.3s;
height:100%;

}

.card-box:hover{

transform:translateY(-10px);

}

.card-box i{

font-size:45px;
color:#ff8800;
margin-bottom:20px;

}

.card-box h2{

font-size:38px;

}

.card-box p{

color:#ccc;

}

/* Table */

.table-box{

margin-top:40px;
background:#181818;
padding:30px;
border-radius:18px;

}

.table{

color:white;

}

.table thead{

background:#ff8800;

}

.badge-progress{

background:#17a2b8;
padding:8px 15px;
border-radius:20px;

}

.badge-complete{

background:#28a745;
padding:8px 15px;
border-radius:20px;

}

.badge-pending{

background:#ffc107;
color:black;
padding:8px 15px;
border-radius:20px;

}
/* Activity */

.activity-box{

margin-top:40px;
background:#181818;
padding:30px;
border-radius:18px;

}

.activity{

display:flex;
justify-content:space-between;
align-items:center;
padding:15px 0;
border-bottom:1px solid #2d2d2d;

}

.activity:last-child{

border-bottom:none;

}

.action-btn{

background:#ff8800;
color:white;
padding:8px 18px;
border-radius:25px;
text-decoration:none;
font-weight:bold;
transition:.3s;

}

.action-btn:hover{

background:#ff6600;
color:white;

}

@media(max-width:992px){

.sidebar{

width:80px;

}

.sidebar a span{

display:none;

}

.logo{

font-size:18px;

}

.main{

margin-left:80px;

}

}

@media(max-width:768px){

.topbar{

flex-direction:column;
align-items:flex-start;
gap:20px;

}

}

</style>

</head>

<body>

<!-- Sidebar -->

<div class="sidebar">

<div class="logo">

RideCarePro

</div>

<a href="${pageContext.request.contextPath}/employee/dashboard">
    <i class="fa-solid fa-house"></i>
    <span>Dashboard</span>
</a>

<a href="${pageContext.request.contextPath}/employee/assignedJobs">
    <i class="fa-solid fa-calendar-check"></i>
    <span>Assigned Jobs</span>
</a>

<a href="#">

<i class="fa-solid fa-screwdriver-wrench"></i>

<span>Services</span>

</a>

<a href="#">

<i class="fa-solid fa-star"></i>

<span>Ratings</span>

</a>

<a href="${pageContext.request.contextPath}/employee/logout">
    <i class="fa-solid fa-right-from-bracket"></i>
    <span>Logout</span>
</a>

</div>

<!-- Main -->

<div class="main">

<!-- Topbar -->

<div class="topbar">

<h3>

Employee Dashboard

</h3>

<div class="employee">

<img src="https://i.pravatar.cc/100?img=15">

<div>

<h5 class="mb-0">

${employee.fullName}

</h5>

<small class="text-secondary">

${employee.specialization}

</small>

<small class="text-warning">

Experience :
${employee.experience} Years

</small>

</div>

</div>

</div>

<!-- Welcome Banner -->

<div class="banner">

<h2>
Welcome Back ${employee.fullName} 👋
</h2>

<p>

You have
<b>${todayJobs}</b>
assigned services.

Complete them on time to provide excellent customer service.

</p>

</div>

<!-- Dashboard Cards -->

<div class="row g-4">

<div class="col-lg-3 col-md-6">

<div class="card-box">

<i class="fa-solid fa-calendar-day"></i>

<h2>${todayJobs}</h2>
<p>

Today's Jobs

</p>

</div>

</div>

<div class="col-lg-3 col-md-6">

<div class="card-box">

<i class="fa-solid fa-circle-check"></i>

<h2>${completedJobs}</h2>

<p>

Completed Jobs

</p>

</div>

</div>

<div class="col-lg-3 col-md-6">

<div class="card-box">

<i class="fa-solid fa-star"></i>

<h2>4.9</h2>

<p>

Average Rating

</p>

</div>

</div>

<div class="col-lg-3 col-md-6">

<div class="card-box">

<i class="fa-solid fa-clock"></i>

<h2>${pendingJobs}</h2>

<p>

Pending Jobs

</p>

</div>

</div>

</div>

<!-- Assigned Services -->

<div class="table-box">

<div class="d-flex justify-content-between align-items-center mb-4">

<h3>

Today's Assigned Services

</h3>

<a href="#" class="action-btn">

Refresh

</a>

</div>

<table class="table table-dark table-hover">

<thead>

<tr>

<th>ID</th>

<th>Customer</th>

<th>Bike</th>

<th>Service</th>

<th>Status</th>

</tr>

</thead>

<tbody>

<c:forEach var="booking" items="${assignedBookings}">

<tr>

<td>${booking.bookingId}</td>

<td>${booking.customerName}</td>

<td>${booking.bikeCompany} ${booking.bikeModel}</td>

<td>${booking.serviceName}</td>

<td>

<c:choose>

<c:when test="${booking.status=='Pending'}">
<span class="badge-pending">${booking.status}</span>
</c:when>

<c:when test="${booking.status=='In Progress'}">
<span class="badge-progress">${booking.status}</span>
</c:when>

<c:otherwise>
<span class="badge-complete">${booking.status}</span>
</c:otherwise>

</c:choose>

</td>

</tr>

</c:forEach>

<c:if test="${empty assignedBookings}">

<tr>

<td colspan="5" class="text-center">

No Assigned Services

</td>

</tr>

</c:if>

</tbody>

</table>

</div>
<!-- RECENT ACTIVITY -->

<div class="activity-box">

    <h3>Recent Activity</h3>

    <hr>

    <div class="text-center p-5">

        <i class="fa-solid fa-clock fa-3x text-warning mb-3"></i>

        <h5>No Recent Activity</h5>

        <p class="text-secondary">

            Activity will appear here once booking updates are performed.

        </p>

    </div>

</div>

<!-- CUSTOMER RATINGS -->

<div class="table-box mt-4">

    <h3 class="mb-4">

        Customer Ratings

    </h3>

    <div class="text-center p-5">

        <i class="fa-solid fa-star fa-3x text-warning mb-3"></i>

        <h5>No Ratings Available</h5>

        <p class="text-secondary">

            Customer ratings will appear after the feedback module is implemented.

        </p>

    </div>

</div>

<!-- QUICK ACTIONS -->

<div class="table-box mt-4">

<h3 class="mb-4">

Quick Actions

</h3>

<div class="row g-4">

<div class="col-md-4">

<a href="${pageContext.request.contextPath}/employee/assignedJobs"
class="action-btn d-block text-center">

<i class="fa-solid fa-screwdriver-wrench"></i>

&nbsp;

Update Service Status

</a>

</div>

<div class="col-md-4">

<a href="${pageContext.request.contextPath}/employee/assignedJobs"
class="action-btn d-block text-center">

<i class="fa-solid fa-calendar-check"></i>

&nbsp;

View Today's Jobs

</a>

</div>

<div class="col-md-4">

<a href="#"
class="action-btn d-block text-center">

<i class="fa-solid fa-user"></i>

&nbsp;

My Profile (Coming Soon)

</a>

</div>

</div>

</div>

<!-- FOOTER -->

<footer class="text-center mt-5 pt-4 pb-3">

<hr class="border-secondary">

<p class="text-secondary mb-1">

© 2026 RideCarePro Employee Dashboard

</p>

<p class="text-secondary">

Powered by Spring Boot • JSP • JPA • MySQL

</p>

</footer>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>