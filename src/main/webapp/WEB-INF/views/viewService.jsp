<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>View Service | RideCarePro</title>

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

background:linear-gradient(135deg,#0f0f0f,#1b1b1b);

min-height:100vh;

display:flex;

justify-content:center;

align-items:center;

}

.card{

width:750px;

background:#181818;

padding:40px;

border-radius:20px;

box-shadow:0 10px 40px rgba(0,0,0,.6);

color:white;

}

.logo{

font-size:32px;

font-weight:bold;

text-align:center;

color:#ff8800;

margin-bottom:25px;

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

}

label{

font-weight:bold;

margin-bottom:8px;

}

.btn-orange{

background:#ff8800;

border:none;

color:white;

}

.btn-orange:hover{

background:#ff6b00;

color:white;

}

</style>

</head>

<body>

<div class="card">

<div class="logo">

<i class="fa-solid fa-screwdriver-wrench"></i>

RideCarePro

</div>

<h3 class="text-center mb-4">

Service Details

</h3>

<div class="row">

<div class="col-md-6 mb-3">

<label>Service ID</label>

<input

type="text"

class="form-control"

readonly

value="${bikeService.serviceId}">

</div>

<div class="col-md-6 mb-3">

<label>Service Name</label>

<input

type="text"

class="form-control"

readonly

value="${bikeService.serviceName}">

</div>

<div class="col-md-12 mb-3">

<label>Description</label>

<textarea

class="form-control"

rows="4"

readonly>${bikeService.description}</textarea>

</div>

<div class="col-md-6 mb-3">

<label>Price</label>

<input

type="text"

class="form-control"

readonly

value="₹ ${bikeService.price}">

</div>

<div class="col-md-6 mb-3">

<label>Duration</label>

<input


type="text"

class="form-control"

readonly

value="${bikeService.duration}">

</div>

</div>
<div class="d-flex justify-content-between mt-4">

    <a href="${pageContext.request.contextPath}/service/list"
       class="btn btn-secondary px-4">

        <i class="fa-solid fa-arrow-left"></i>

        Back

    </a>

    <a href="${pageContext.request.contextPath}/service/edit/${bikeService.serviceId}"
       class="btn btn-orange px-4">

        <i class="fa-solid fa-pen"></i>

        Edit Service

    </a>

</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>

// ===============================
// Page Fade Animation
// ===============================

window.onload = function(){

    const card = document.querySelector(".card");

    card.style.opacity = "0";
    card.style.transform = "translateY(30px)";

    setTimeout(function(){

        card.style.transition = ".5s";

        card.style.opacity = "1";

        card.style.transform = "translateY(0)";

    },100);

};

// ===============================
// Readonly Input Hover Effect
// ===============================

document.querySelectorAll(".form-control").forEach(input=>{

    input.addEventListener("mouseenter",function(){

        this.style.borderColor="#ff8800";

    });

    input.addEventListener("mouseleave",function(){

        this.style.borderColor="#444";

    });

});

console.log("RideCarePro View Service Page Loaded Successfully");

</script>

</body>

</html>