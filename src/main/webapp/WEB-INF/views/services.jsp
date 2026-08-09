<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Bike Services | RideCarePro</title>

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

.sidebar{
position:fixed;
top:0;
left:0;
width:260px;
height:100vh;
background:#181818;
padding-top:25px;
box-shadow:5px 0 20px rgba(0,0,0,.5);
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

.main{
margin-left:260px;
padding:30px;
}

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
}

.card-box{
background:#181818;
padding:30px;
border-radius:18px;
text-align:center;
transition:.3s;
}

.card-box:hover{
transform:translateY(-8px);
}

.card-box i{
font-size:45px;
color:#ff8800;
margin-bottom:15px;
}

.card-box h2{
font-size:36px;
}

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

.btn-orange{
background:#ff8800;
color:white;
border:none;
}

.btn-orange:hover{
background:#ff6b00;
color:white;
}

.form-control{
background:#222;
color:white;
border:1px solid #444;
}

.form-control:focus{
background:#222;
color:white;
box-shadow:none;
border-color:#ff8800;
}

.modal-content{
background:#181818;
color:white;
}

.service-cell{
display:flex;
align-items:center;
gap:12px;
}

.service-avatar{
width:42px;
height:42px;
border-radius:50%;
background:#ff8800;
display:flex;
align-items:center;
justify-content:center;
font-weight:700;
color:#fff;
flex-shrink:0;
}

.price-badge{
background:rgba(255,136,0,.15);
color:#ffb347;
padding:6px 12px;
border-radius:50px;
font-weight:700;
display:inline-block;
}

.btn-view{
background:#00b4d8;
border:none;
color:#fff;
}

.btn-view:hover{
background:#0096c7;
color:#fff;
}

.btn-delete{
background:#ff4d4d;
border:none;
color:#fff;
padding:6px 12px;
border-radius:8px;
}

.btn-delete:hover{
background:#ff1f1f;
color:#fff;
}

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

}

</style>

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

<a href="${pageContext.request.contextPath}/service/admin" class="active">

<i class="fa-solid fa-screwdriver-wrench"></i>

<span>Services</span>

</a>

<a href="${pageContext.request.contextPath}/admin/logout">

<i class="fa-solid fa-right-from-bracket"></i>

<span>Logout</span>

</a>

</div>

<div class="main">

<div class="topbar">

<div class="search-box">

<input type="text"
id="serviceSearch"
class="form-control"
placeholder="Search Service...">

</div>

<div class="admin-profile">

<img src="${pageContext.request.contextPath}/images/developer.jpg">

<div>

<h5>${admin.adminName}</h5>

<small class="text-secondary">

Administrator

</small>

</div>

</div>

</div>

<div class="row g-4">

<div class="col-lg-4">

<div class="card-box">

<i class="fa-solid fa-screwdriver-wrench"></i>

<h2>${services.size()}</h2>

<p>Total Services</p>

</div>

</div>

<div class="col-lg-4">

<div class="card-box">

<i class="fa-solid fa-motorcycle"></i>

<h2>${services.size()}</h2>

<p>Bike Services</p>

</div>

</div>

<div class="col-lg-4">

<div class="card-box">

<i class="fa-solid fa-gear"></i>

<h2>${services.size()}</h2>

<p>Available Packages</p>

</div>

</div>

</div>

<div class="table-section mt-5">

<div class="d-flex justify-content-between align-items-center mb-4">

<h3>Service List</h3>

<div>

<a href="${pageContext.request.contextPath}/service/add"

class="btn btn-orange">

<i class="fa-solid fa-plus"></i>

Add Service

</a>

<a href="${pageContext.request.contextPath}/admin/dashboard"

class="btn btn-orange ms-2">

<i class="fa-solid fa-arrow-left"></i>

Dashboard

</a>

</div>

</div>
<table class="table table-dark table-hover align-middle" id="serviceTable">

    <thead>

        <tr>

            <th>ID</th>
            <th>Service Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Estimated Time</th>
            <th>Actions</th>

        </tr>

    </thead>

    <tbody>

    <c:choose>

        <c:when test="${not empty services}">

            <c:forEach items="${services}" var="service">

                <tr>

                    <td>

                        <strong>#${service.serviceId}</strong>

                    </td>

                    <td>

                        <div class="service-cell">

    <div class="service-avatar">

        ${service.serviceName.substring(0,1)}

    </div>

    <div>

        <div class="fw-semibold">${service.serviceName}</div>

        <small class="text-secondary">RideCarePro Package</small>

    </div>

</div>

                    </td>

                    <td>

                        ${service.description}

                    </td>

                    <td>

                        <span class="price-badge">

    ₹ ${service.price}

</span>

                    </td>

                    <td>

                        ${service.duration}

                    </td>

                    <td>

                        <button
class="btn btn-view btn-sm"
                        

                        data-bs-toggle="modal"

                        data-bs-target="#serviceModal${service.serviceId}">

                            <i class="fa-solid fa-eye"></i>

                        </button>

                        <a

                        href="${pageContext.request.contextPath}/service/edit/${service.serviceId}"

                        class="btn btn-warning btn-sm">

                            <i class="fa-solid fa-pen"></i>

                        </a>

                        <a

                        href="${pageContext.request.contextPath}/service/delete/${service.serviceId}"

                        class="btn-delete btn-sm"

                        onclick="return confirm('Delete this service?')">

                            <i class="fa-solid fa-trash"></i>

                        </a>

                    </td>

                </tr>

                <!-- View Service Modal -->

                <div class="modal fade"

                     id="serviceModal${service.serviceId}"

                     tabindex="-1">

                    <div class="modal-dialog modal-lg">

                        <div class="modal-content">

                            <div class="modal-header">

                                <h4>

                                    Service Details

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

                                            Service ID

                                        </label>

                                        <input

                                        class="form-control"

                                        readonly

                                        value="${service.serviceId}">

                                    </div>

                                    <div class="col-md-6 mb-3">

                                        <label class="fw-bold">

                                            Service Name

                                        </label>

                                        <input

                                        class="form-control"

                                        readonly

                                        value="${service.serviceName}">

                                    </div>

                                    <div class="col-md-12 mb-3">

                                        <label class="fw-bold">

                                            Description

                                        </label>

                                        <textarea

                                        rows="4"

                                        class="form-control"

                                        readonly>${service.description}</textarea>

                                    </div>

                                    <div class="col-md-6 mb-3">

                                        <label class="fw-bold">

                                            Price

                                        </label>

                                        <input

                                        class="form-control"

                                        readonly

                                        value="₹ ${service.price}">

                                    </div>

                                    <div class="col-md-6 mb-3">

                                        <label class="fw-bold">

                                            Estimated Time

                                        </label>

                                        <input

                                        class="form-control"

                                        readonly

                                        value="${service.duration}">

                                    </div>

                                </div>

                            </div>

                            <div class="modal-footer">

                                <a

                                href="${pageContext.request.contextPath}/service/edit/${service.serviceId}"

                                class="btn btn-warning">

                                    <i class="fa-solid fa-pen"></i>

                                    Edit

                                </a>

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

                <td colspan="6" class="text-center p-5">

                    <h4 class="text-warning">

                        No Services Available

                    </h4>

                </td>

            </tr>

        </c:otherwise>

    </c:choose>

    </tbody>

</table>

</div>

<!-- Footer Starts Below -->
<!-- Footer -->

<footer class="text-center mt-5 pt-4 pb-3">

    <hr class="border-secondary">

    <p class="text-secondary mb-1">

        © 2026 RideCarePro Service Management

    </p>

    <p class="text-secondary">

        Developed using Spring Boot • Spring MVC • Spring Data JPA • Hibernate • MySQL

    </p>

</footer>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>

/* ===============================
        Service Search
================================ */

const search=document.getElementById("serviceSearch");

search.addEventListener("keyup",function(){

let filter=this.value.toLowerCase();

let rows=document.querySelectorAll("#serviceTable tbody tr");

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
      Sidebar Active
================================ */

const sidebar=document.querySelectorAll(".sidebar a");

sidebar.forEach(item=>{

item.addEventListener("click",function(){

sidebar.forEach(link=>link.classList.remove("active"));

this.classList.add("active");

});

});

/* ===============================
      Row Hover Effect
================================ */

const rows=document.querySelectorAll("#serviceTable tbody tr");

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
      Fade Animation
================================ */

window.onload=function(){

document.body.style.opacity="0";

setTimeout(()=>{

document.body.style.transition=".4s";

document.body.style.opacity="1";

},100);

};

/* ===============================
      Console
================================ */

console.log("RideCarePro Service Management Loaded Successfully");

</script>

</body>

</html>