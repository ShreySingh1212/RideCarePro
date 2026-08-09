<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Employees | RideCarePro</title>

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

/* ================= Sidebar ================= */

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

/* ================= Main ================= */

.main{
margin-left:260px;
width:calc(100% - 260px);
padding:30px;
overflow-x:hidden;
box-sizing:border-box;
background:#0b0f16;
}

.stats-row{
display:grid;
grid-template-columns:repeat(3,1fr);
gap:24px;
margin:30px 0;
}

@media(max-width:992px){
.stats-row{
grid-template-columns:1fr;
}
}
/* ================= Topbar ================= */

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

.compact-profile{
display:inline-flex;
max-width:320px;
margin-bottom:20px;
}

.admin-profile img{
width:55px;
height:55px;
border-radius:50%;
border:3px solid #ff8800;
object-fit:cover;
}

/* ================= Cards ================= */

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
color:#cfcfcf;
}

/* ================= Table ================= */

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

/* ================= Buttons ================= */

.btn-orange{
background:#ff8800;
color:white;
border:none;
}

.btn-orange:hover{
background:#ff6b00;
color:white;
}

.modal-content{
background:#181818;
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
gap:16px;
}

.search-box-premium{
width:260px;
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

.btn-add-employee{
background:#ff8800;
color:#fff;
padding:12px 18px;
border-radius:12px;
text-decoration:none;
font-weight:600;
transition:.25s;
}

.btn-add-employee:hover{
background:#ff6a00;
transform:translateY(-2px);
color:#fff;
}

.employee-avatar{
width:44px;
height:44px;
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

.employee-cell{
display:flex;
align-items:center;
}

.employee-meta small{
color:#9ea4ad;
}

.status-pill{
padding:6px 12px;
border-radius:50px;
font-size:12px;
font-weight:700;
display:inline-block;
}

.status-active{
background:rgba(0,255,136,.15);
color:#5dffb1;
}

.status-inactive{
background:rgba(255,80,80,.15);
color:#ff8f8f;
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
/* ================= Responsive ================= */

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

<a href="${pageContext.request.contextPath}/admin/customers">

<i class="fa-solid fa-users"></i>

<span>Customers</span>

</a>

<a href="${pageContext.request.contextPath}/admin/bookings">

<i class="fa-solid fa-calendar-check"></i>

<span>Bookings</span>

</a>

<a href="${pageContext.request.contextPath}/admin/employees" class="active">

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

<div class="page-header">

    <div>

        <h1>Employee Management</h1>

        <p>Manage all RideCarePro employees and technicians</p>

    </div>

    <div class="header-actions">

        <input type="text"
               id="employeeSearch"
               class="search-box-premium"
               placeholder="Search employee...">

        <a href="${pageContext.request.contextPath}/employee/register"
           class="btn-add-employee">

            <i class="fa-solid fa-user-plus"></i>

            Add Employee

        </a>

    </div>

</div>







<!-- Statistics -->

<div class="stats-row">



<div class="card-box">

<i class="fa-solid fa-user-gear"></i>

<h2>${employees.size()}</h2>

<p>Total Employees</p>

</div>





<div class="card-box">

<i class="fa-solid fa-user-check"></i>

<h2>${employeeCount}</h2>

<p>Working Staff</p>

</div>





<div class="card-box">

<i class="fa-solid fa-user-plus"></i>

<h2>${employees.size()}</h2>

<p>Registered Employees</p>

</div>



</div>
<!-- Employee Table Starts -->

<div class="table-section mt-5">

<div class="d-flex justify-content-between align-items-center mb-4">

<h3>Employee List</h3>

<div>

<a href="${pageContext.request.contextPath}/admin/dashboard"

class="btn btn-orange ms-2">

<i class="fa-solid fa-arrow-left"></i>

Dashboard

</a>

</div>

</div>
<table class="table table-dark table-hover align-middle" id="employeeTable">

    <thead>

        <tr>

            <th>ID</th>
            <th>Employee Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Specialization</th>
            <th>Actions</th>

        </tr>

    </thead>

    <tbody>

    <c:choose>

        <c:when test="${not empty employees}">

            <c:forEach items="${employees}" var="employee">

                <tr>

                    <td>

                        <strong>#${employee.employeeId}</strong>

                    </td>

                    <td>

    <div class="employee-cell">

        <div class="employee-avatar">

            ${employee.fullName.substring(0,1)}

        </div>

        <div class="employee-meta">

            <div class="fw-semibold">${employee.fullName}</div>

            <small>${employee.email}</small>

        </div>

    </div>

</td>

                    <td>

                        ${employee.email}

                    </td>

                    <td>

                        ${employee.phone}

                    </td>

                    <td>
    ${employee.specialization}
</td>

<td>

    <span class="status-pill ${employee.status == 'Active' ? 'status-active' : 'status-inactive'}">

        ${employee.status}

    </span>

</td>

                    <td>

                        <button

                        class="btn btn-info btn-sm"

                        data-bs-toggle="modal"

                        data-bs-target="#viewEmployee${employee.employeeId}">

                        <i class="fa-solid fa-eye"></i>

                        </button>

                        <a

                        href="${pageContext.request.contextPath}/employee/edit/${employee.employeeId}"

                        class="btn btn-warning btn-sm">

                        <i class="fa-solid fa-pen"></i>

                        </a>

                       <a href="${pageContext.request.contextPath}/admin/employee/delete/${employee.employeeId}"
   class="btn-delete"
   onclick="return confirm('Delete this employee?')">

    <i class="fa-solid fa-trash"></i>

</a>

                    </td>

                </tr>

                <!-- View Employee Modal -->

                <div class="modal fade"

                id="viewEmployee${employee.employeeId}"

                tabindex="-1">

                    <div class="modal-dialog modal-lg">

                        <div class="modal-content">

                            <div class="modal-header">

                                <h4>

                                    Employee Details

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

                                        Employee ID

                                        </label>

                                        <input

                                        class="form-control"

                                        readonly

                                        value="${employee.employeeId}">

                                    </div>

                                    <div class="col-md-6 mb-3">

                                        <label class="fw-bold">

                                        Employee Name

                                        </label>

                                        <input

                                        class="form-control"

                                        readonly

                                        value="${employee.fullName}">

                                    </div>

                                    <div class="col-md-6 mb-3">

                                        <label class="fw-bold">

                                        Email

                                        </label>

                                        <input

                                        class="form-control"

                                        readonly

                                        value="${employee.email}">

                                    </div>

                                    <div class="col-md-6 mb-3">

                                        <label class="fw-bold">

                                        Phone

                                        </label>

                                        <input

                                        class="form-control"

                                        readonly

                                        value="${employee.phone}">

                                    </div>

                                    <div class="col-md-12 mb-3">

                                        <label class="fw-bold">
    Specialization
</label>

<input
    class="form-control"
    readonly
    value="${employee.specialization}">

                                    </div>

                                </div>

                            </div>

                            <div class="modal-footer">

                                <a

                                href="${pageContext.request.contextPath}/employee/edit/${employee.employeeId}"

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

                <td colspan="6"

                class="text-center p-5">

                    <h4 class="text-warning">

                        No Employees Found

                    </h4>

                </td>

            </tr>

        </c:otherwise>

    </c:choose>

    </tbody>

</table>

</div>

<!-- Footer Starts Here -->
<!-- Footer -->

<footer class="text-center mt-5 pt-4 pb-3">

    <hr class="border-secondary">

    <p class="text-secondary mb-1">

        © 2026 RideCarePro Employee Management

    </p>

    <p class="text-secondary">

        Developed using Spring Boot • Spring MVC • Spring Data JPA • Hibernate • MySQL

    </p>

</footer>



<!-- Bootstrap JS -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>

/* =======================================
        Employee Search
======================================= */

const searchInput = document.getElementById("employeeSearch");

searchInput.addEventListener("keyup", function(){

    let value = this.value.toLowerCase();

    let table = document.getElementById("employeeTable");

    let rows = table.getElementsByTagName("tr");

    for(let i=1;i<rows.length;i++){

        let text = rows[i].textContent.toLowerCase();

        if(text.indexOf(value) > -1){

            rows[i].style.display="";

        }else{

            rows[i].style.display="none";

        }

    }

});

/* =======================================
      Active Sidebar Menu
======================================= */

const sidebarLinks=document.querySelectorAll(".sidebar a");

sidebarLinks.forEach(link=>{

link.addEventListener("click",function(){

sidebarLinks.forEach(item=>item.classList.remove("active"));

this.classList.add("active");

});

});

/* =======================================
      Row Hover Animation
======================================= */

const employeeRows=document.querySelectorAll("#employeeTable tbody tr");

employeeRows.forEach(row=>{

row.addEventListener("mouseenter",()=>{

row.style.transition=".3s";

row.style.transform="scale(1.01)";

});

row.addEventListener("mouseleave",()=>{

row.style.transform="scale(1)";

});

});

/* =======================================
        Loading Animation
======================================= */

window.onload=function(){

document.body.style.opacity="0";

setTimeout(()=>{

document.body.style.transition=".4s";

document.body.style.opacity="1";

},100);

};

/* =======================================
Employee Search
======================================= */

document.getElementById('employeeSearch').addEventListener('keyup', function() {

const value = this.value.toLowerCase();

document.querySelectorAll('#employeeTable tbody tr').forEach(row => {

row.style.display =
    row.innerText.toLowerCase().includes(value) ? '' : 'none';
});


/* =======================================
        Dashboard Message
======================================= */

console.log("RideCarePro Employee Management Loaded Successfully");

</script>

</div>
</body>

</html>