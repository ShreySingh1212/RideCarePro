<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Customers | RideCarePro</title>

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
width:260px;
height:100vh;
background:#181818;
padding-top:25px;
box-shadow:5px 0 20px rgba(0,0,0,.5);
z-index:1000;
}

.logo{
text-align:center;
font-size:30px;
font-weight:bold;
color:#ff8800;
margin-bottom:40px;
}

.sidebar a{
display:block;
padding:16px 28px;
text-decoration:none;
color:white;
font-size:17px;
transition:.3s;
}

.sidebar a:hover,
.sidebar a.active{
background:#ff8800;
padding-left:40px;
}

.sidebar i{
margin-right:15px;
}

/* Main */

.main{
margin-left:260px;
padding:30px;
}

/* Top Bar */

.topbar{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:35px;
}

.search-box{
width:350px;
}

.search-box input{
background:#1d1d1d;
border:none;
color:white;
}

.search-box input:focus{
background:#1d1d1d;
color:white;
box-shadow:none;
}

.admin-profile{
display:flex;
align-items:center;
gap:15px;
}

.admin-profile img{
width:55px;
height:55px;
border-radius:50%;
border:3px solid #ff8800;
object-fit:cover;
}

/* Cards */

.card-box{
background:#181818;
padding:30px;
border-radius:18px;
text-align:center;
height:100%;
transition:.3s;
}

.card-box:hover{
transform:translateY(-8px);
}

.card-box i{
font-size:42px;
color:#ff8800;
margin-bottom:20px;
}

.card-box h2{
font-size:38px;
font-weight:bold;
}

.card-box p{
color:#bdbdbd;
margin-top:10px;
}

/* Table */

.table-section{
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

.table td,
.table th{
vertical-align:middle;
}

/* Buttons */

.btn-orange{
background:#ff8800;
color:white;
border:none;
}

.btn-orange:hover{
background:#ff6b00;
color:white;
}

.btn-danger{
border-radius:30px;
}

.btn-info{
border-radius:30px;
color:white;
}

/* Premium Header */

.page-header{
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:35px;
gap:20px;
}

.page-header h1{
font-size:38px;
font-weight:700;
margin-bottom:6px;
}

.page-header p{
color:#9ea4ad;
margin:0;
}

.header-actions{
display:flex;
align-items:center;
gap:18px;
}

.search-box-premium{
width:280px;
padding:12px 16px;
border-radius:12px;
border:1px solid rgba(255,255,255,.08);
background:#1d1d1d;
color:#fff;
outline:none;
}

.search-box-premium:focus{
border-color:#ff8800;
box-shadow:0 0 15px rgba(255,136,0,.25);
}

.admin-profile-premium{
display:flex;
align-items:center;
gap:12px;
background:#181818;
padding:8px 14px;
border-radius:14px;
border:1px solid rgba(255,255,255,.06);
}

.admin-profile-premium img{
width:50px;
height:50px;
border-radius:50%;
border:3px solid #ff8800;
object-fit:cover;
}

.customer-avatar{
width:42px;
height:42px;
border-radius:50%;
background:#ff8800;
display:flex;
align-items:center;
justify-content:center;
font-weight:700;
color:#fff;
margin-right:12px;
flex-shrink:0;
}

.customer-cell{
display:flex;
align-items:center;
}

.customer-meta small{
color:#9ea4ad;
}

.btn-delete{
background:#ff4d4d;
border:none;
padding:8px 14px;
border-radius:10px;
color:#fff;
font-weight:600;
transition:.25s;
text-decoration:none;
}

.btn-delete:hover{
background:#ff1f1f;
transform:translateY(-2px);
color:#fff;
}

/* Responsive */

@media(max-width:992px){

.sidebar{
width:80px;
}

.sidebar span{
display:none;
}

.logo{
font-size:18px;
}

.main{
margin-left:80px;
}

.search-box{
width:220px;
}

}

@media(max-width:768px){

.topbar{
flex-direction:column;
align-items:flex-start;
gap:20px;
}

.search-box{
width:100%;
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

<a href="${pageContext.request.contextPath}/admin/dashboard">
<i class="fa-solid fa-house"></i>
<span>Dashboard</span>
</a>

<a href="${pageContext.request.contextPath}/admin/customers" class="active">
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

<!-- Main -->

<div class="main">

<!-- Topbar -->

<!-- Premium Header -->

<div class="page-header">

    <div>

        <h1>Customer Management</h1>

        <p>Manage all registered RideCarePro customers</p>

    </div>

    <div class="header-actions">

        <input
                type="text"
                id="customerSearch"
                class="search-box-premium"
                placeholder="Search customer...">

        <div class="admin-profile-premium">

            <img src="${pageContext.request.contextPath}/images/developer.jpg">

            <div>

                <strong>${admin.adminName}</strong><br>

                <small>Administrator</small>

            </div>

        </div>

    </div>

</div>

<!-- Cards -->

<div class="row g-4">

<div class="col-lg-3 col-md-6">

<div class="card-box">

<i class="fa-solid fa-users"></i>

<h2>${customers.size()}</h2>

<p>Total Customers</p>

</div>

</div>

<div class="col-lg-3 col-md-6">

<div class="card-box">

<i class="fa-solid fa-user-check"></i>

<h2>${customerCount}</h2>

<p>Registered Users</p>

</div>

</div>

<div class="col-lg-3 col-md-6">

<div class="card-box">

<i class="fa-solid fa-envelope"></i>

<h2>${customerCount}</h2>

<p>Email Verified</p>

</div>

</div>

<div class="col-lg-3 col-md-6">

<div class="card-box">

<i class="fa-solid fa-phone"></i>

<h2>${customerCount}</h2>

<p>Active Customers</p>

</div>

</div>

</div>

<!-- Customer Table Starts Below -->

<div class="table-section mt-5">

<div class="d-flex justify-content-between align-items-center mb-4">

<h3>
Customer Management
</h3>

<a href="${pageContext.request.contextPath}/admin/dashboard"
class="btn btn-orange">

<i class="fa-solid fa-arrow-left"></i>

Back Dashboard

</a>

</div>
<table class="table table-dark table-hover align-middle" id="customerTable">

    <thead>

        <tr>

            <th width="7%">ID</th>

            <th width="18%">Customer Name</th>

            <th width="18%">Email</th>

            <th width="12%">Phone</th>

            <th width="25%">Address</th>

            <th width="10%">Joined</th>

            <th width="10%" class="text-center">Actions</th>

        </tr>

    </thead>

    <tbody>

    <c:choose>

        <c:when test="${not empty customers}">

            <c:forEach items="${customers}" var="customer">

                <tr>

                    <td>

                        <strong>#${customer.customerId}</strong>

                    </td>

                    <td>

    <div class="customer-cell">

        <div class="customer-avatar">

            ${customer.fullName.substring(0,1)}

        </div>

        <div class="customer-meta">

            <div class="fw-semibold">${customer.fullName}</div>

            <small>RideCarePro Customer</small>

        </div>

    </div>

</td>
                    <td>

                        ${customer.email}

                    </td>

                    <td>

                        ${customer.phone}

                    </td>

                    <td>

                        ${customer.address}

                    </td>

                    <td>

                        ${customer.createdAt}

                    </td>

                    <td class="text-center">

                        <button
                            class="btn btn-info btn-sm me-1"
                            data-bs-toggle="modal"
                            data-bs-target="#customerModal${customer.customerId}">

                            <i class="fa-solid fa-eye"></i>

                        </button>

                        <a href="${pageContext.request.contextPath}/admin/customer/delete/${customer.customerId}"
   class="btn-delete"
   onclick="return confirm('Delete this customer?')">

    <i class="fa-solid fa-trash"></i>

</a>

                    </td>

                </tr>

                <!-- Customer Details Modal -->

                <div class="modal fade"

                     id="customerModal${customer.customerId}"

                     tabindex="-1">

                    <div class="modal-dialog modal-lg">

                        <div class="modal-content bg-dark text-white">

                            <div class="modal-header">

                                <h4>

                                    Customer Details

                                </h4>

                                <button

                                    class="btn-close btn-close-white"

                                    data-bs-dismiss="modal">

                                </button>

                            </div>

                            <div class="modal-body">

                                <div class="row">

                                    <div class="col-md-6 mb-3">

                                        <label class="fw-bold">

                                            Customer ID

                                        </label>

                                        <input

                                            class="form-control"

                                            readonly

                                            value="${customer.customerId}">

                                    </div>

                                    <div class="col-md-6 mb-3">

                                        <label class="fw-bold">

                                            Full Name

                                        </label>

                                        <input

                                            class="form-control"

                                            readonly

                                            value="${customer.fullName}">

                                    </div>

                                    <div class="col-md-6 mb-3">

                                        <label class="fw-bold">

                                            Email

                                        </label>

                                        <input

                                            class="form-control"

                                            readonly

                                            value="${customer.email}">

                                    </div>

                                    <div class="col-md-6 mb-3">

                                        <label class="fw-bold">

                                            Phone

                                        </label>

                                        <input

                                            class="form-control"

                                            readonly

                                            value="${customer.phone}">

                                    </div>

                                    <div class="col-md-12 mb-3">

                                        <label class="fw-bold">

                                            Address

                                        </label>

                                        <textarea

                                            class="form-control"

                                            rows="3"

                                            readonly>${customer.address}</textarea>

                                    </div>

                                    <div class="col-md-12">

                                        <label class="fw-bold">

                                            Registration Date

                                        </label>

                                        <input

                                            class="form-control"

                                            readonly

                                            value="${customer.createdAt}">

                                    </div>

                                </div>

                            </div>

                            <div class="modal-footer">

                                <button

                                    class="btn btn-secondary"

                                    data-bs-dismiss="modal">

                                    Close

                                </button>

                            </div>

                        </div>

                    </div>

                </div>

            </c:forEach>

        </c:when>

        <c:otherwise>

            <tr>

                <td colspan="7" class="text-center p-5">

                    <h4 class="text-warning">

                        No Customers Found

                    </h4>

                </td>

            </tr>

        </c:otherwise>

    </c:choose>

    </tbody>

</table>

</div>

<!-- Footer Section Starts Below -->
<!-- Footer -->

<footer class="text-center mt-5 pt-4 pb-3">

    <hr class="border-secondary">

    <p class="text-secondary mb-1">

        © 2026 RideCarePro Admin Panel

    </p>

    <p class="text-secondary">

        Manage Customers • Bookings • Employees • Services

    </p>

</footer>

</div>

<!-- Bootstrap -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>

/* ===============================
   Customer Search
================================ */

const searchBox = document.getElementById("customerSearch");

searchBox.addEventListener("keyup", function(){

    let value = this.value.toLowerCase();

    let table = document.getElementById("customerTable");

    let rows = table.getElementsByTagName("tr");

    for(let i=1;i<rows.length;i++){

        let rowText = rows[i].textContent.toLowerCase();

        if(rowText.indexOf(value)>-1){

            rows[i].style.display="";

        }else{

            rows[i].style.display="none";

        }

    }

});

/* ===============================
   Highlight Active Menu
================================ */

const menuItems=document.querySelectorAll(".sidebar a");

menuItems.forEach(item=>{

item.addEventListener("click",function(){

menuItems.forEach(i=>i.classList.remove("active"));

this.classList.add("active");

});

});

/* ===============================
   Tooltip
================================ */

const tooltipTriggerList =
[].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));

tooltipTriggerList.map(function (tooltipTriggerEl) {

return new bootstrap.Tooltip(tooltipTriggerEl);

});

/* ===============================
   Table Hover Animation
================================ */

const rows=document.querySelectorAll("#customerTable tbody tr");

rows.forEach(row=>{

row.addEventListener("mouseenter",()=>{

row.style.transition=".3s";

row.style.transform="scale(1.01)";

});

row.addEventListener("mouseleave",()=>{

row.style.transform="scale(1)";

});

});

/* ===============================
   Welcome Message
================================ */

console.log("RideCarePro Customer Management Loaded Successfully.");

</script>

</body>

</html>