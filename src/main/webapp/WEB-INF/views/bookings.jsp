<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Bookings | RideCarePro</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">

<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/adminBookings.css">

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

<a href="${pageContext.request.contextPath}/admin/bookings" class="active">

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

<!-- ================= PAGE HEADER ================= -->

<div class="page-header">

    <div>

        <h1>Booking Management</h1>

        <p>

            Manage customer bookings, assign employees and update service status.

        </p>

    </div>

    <div class="header-right">

        <input
                type="text"
                id="bookingSearch"
                class="search-box"
                placeholder="Search booking...">

    </div>

</div>

<!-- ================= KPI CARDS ================= -->

<div class="stats-grid">

    <div class="stat-card">

        <i class="fa-solid fa-calendar-check"></i>

        <h2>${bookingCount}</h2>

        <span>Total Bookings</span>

    </div>

    <div class="stat-card">

        <i class="fa-solid fa-clock"></i>

        <h2>${pendingCount}</h2>

        <span>Pending</span>

    </div>

    <div class="stat-card">

        <i class="fa-solid fa-spinner"></i>

        <h2>${inProgressCount}</h2>

        <span>In Progress</span>

    </div>

    <div class="stat-card">

        <i class="fa-solid fa-circle-check"></i>

        <h2>${completedCount}</h2>

        <span>Completed</span>

    </div>

</div>

<!-- ================= BOOKINGS TABLE ================= -->

<div class="table-card">

<div class="table-header">

<h2>Recent Bookings</h2>

</div>
<div class="table-responsive">

<table class="booking-table" id="bookingTable">

<thead>

<tr>

<th>ID</th>

<th>Customer</th>

<th>Bike</th>

<th>Pickup Date</th>

<th>Employee</th>

<th>Status</th>

<th>Action</th>

</tr>

</thead>

<tbody>

<c:forEach items="${bookings}" var="booking">

<tr>

<td>

#${booking.bookingId}

</td>

<td>

<div class="customer-info">

<strong>${booking.phone}</strong><br>

<small>${booking.phone}</small>

</div>

</td>

<td>

${booking.bikeCompany}

<br>

<small>${booking.bikeModel}</small>

</td>

<td>

${booking.pickupDate}

</td>

<td>

<form action="${pageContext.request.contextPath}/admin/assignEmployee"
      method="post">

<input type="hidden"
       name="bookingId"
       value="${booking.bookingId}">

<select
name="employeeId"
class="employee-select"
onchange="this.form.submit()">

<option value="">Assign</option>

<c:forEach items="${employees}" var="employee">

<option
value="${employee.fullName}"

${booking.assignedEmployee == employee.fullName ? 'selected' : ''}>

${employee.fullName}

</option>

</c:forEach>

</select>

</form>

</td>

<td>

<form action="${pageContext.request.contextPath}/admin/updateStatus"
      method="post">

<input type="hidden"
       name="bookingId"
       value="${booking.bookingId}">

<select
name="status"
class="status-select"
onchange="this.form.submit()">

<option
${booking.status=='Pending'?'selected':''}>

Pending

</option>

<option
${booking.status=='In Progress'?'selected':''}>

In Progress

</option>

<option
${booking.status=='Completed'?'selected':''}>

Completed

</option>

<option
${booking.status=='Cancelled'?'selected':''}>

Cancelled

</option>

</select>

</form>

</td>

<td>

<a href="${pageContext.request.contextPath}/admin/bookings/view/${booking.bookingId}"
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

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>

/* ===============================
      Booking Search
================================ */

const bookingSearch=document.getElementById("bookingSearch");

bookingSearch.addEventListener("keyup",function(){

let filter=this.value.toLowerCase();

let rows=document.querySelectorAll("#bookingTable tbody tr");

rows.forEach(function(row){

let text=row.innerText.toLowerCase();

if(text.indexOf(filter)>-1){

row.style.display="";

}else{

row.style.display="none";

}

});

});

/* ===============================
      Active Sidebar
================================ */

const links=document.querySelectorAll(".sidebar a");

links.forEach(link=>{

link.addEventListener("click",function(){

links.forEach(item=>item.classList.remove("active"));

this.classList.add("active");

});

});

/* ===============================
      Row Hover Effect
================================ */

const tableRows=document.querySelectorAll("#bookingTable tbody tr");

tableRows.forEach(row=>{

row.addEventListener("mouseenter",()=>{

row.style.transition=".3s";

row.style.transform="scale(1.01)";

});

row.addEventListener("mouseleave",()=>{

row.style.transform="scale(1)";

});

});

/* ===============================
      Auto Fade
================================ */

window.onload=function(){

document.body.style.opacity="0";

setTimeout(()=>{

document.body.style.transition=".4s";

document.body.style.opacity="1";

},100);

};

/* ===============================
      Status Colors
================================ */

document.querySelectorAll("select[name='status']").forEach(function(select){

function updateColor(){

if(select.value==="Completed"){

select.style.border="2px solid #28a745";

}

else if(select.value==="In Progress"){

select.style.border="2px solid #17a2b8";

}

else{

select.style.border="2px solid #ffc107";

}

}

updateColor();

select.addEventListener("change",updateColor);

});

/* ===============================
      Console Message
================================ */

console.log("RideCarePro Booking Management Loaded Successfully");

</script>

</body>

</html>