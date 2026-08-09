<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Edit Service | RideCarePro</title>

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

display:flex;

justify-content:center;

align-items:center;

min-height:100vh;

}

.card{

width:750px;

background:#181818;

padding:40px;

border-radius:20px;

box-shadow:0 12px 40px rgba(0,0,0,.6);

color:white;

}

.logo{

text-align:center;

font-size:32px;

font-weight:bold;

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

border-color:#ff8800;

box-shadow:none;

}

.btn-orange{

background:#ff8800;

border:none;

color:white;

}

.btn-orange:hover{

background:#ff6b00;

}

label{

font-weight:600;

margin-bottom:8px;

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

Edit Bike Service

</h3>

<form action="${pageContext.request.contextPath}/service/update"

method="post">

<input type="hidden"

name="serviceId"

value="${bikeService.serviceId}">
<div class="row">

    <div class="col-md-12 mb-3">

        <label>

            <i class="fa-solid fa-screwdriver-wrench"></i>

            Service Name

        </label>

        <input
            type="text"
            name="serviceName"
            class="form-control"
            value="${bikeService.serviceName}"
            required>

    </div>

    <div class="col-md-12 mb-3">

        <label>

            <i class="fa-solid fa-align-left"></i>

            Description

        </label>

        <textarea
            name="description"
            rows="4"
            class="form-control"
            required>${bikeService.description}</textarea>

    </div>

    <div class="col-md-6 mb-3">

        <label>

            <i class="fa-solid fa-indian-rupee-sign"></i>

            Price

        </label>

        <input
            type="number"
            step="0.01"
            min="0"
            name="price"
            class="form-control"
            value="${bikeService.price}"
            required>

    </div>

    <div class="col-md-6 mb-3">

        <label>

            <i class="fa-solid fa-clock"></i>

            Duration

        </label>

        <input
            type="text"
            name="duration"
            class="form-control"
            value="${bikeService.duration}"
            placeholder="Example: 2 Hours"
            required>

    </div>

</div>

<div class="d-flex justify-content-between mt-4">

    <a href="${pageContext.request.contextPath}/service/list"
       class="btn btn-secondary px-4">

        <i class="fa-solid fa-arrow-left"></i>

        Cancel

    </a>

    <button
        type="submit"
        class="btn btn-orange px-5">

        <i class="fa-solid fa-floppy-disk"></i>

        Update Service

    </button>

</div>
</form>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>

// ================================
// Page Animation
// ================================

window.onload = function () {

    const card = document.querySelector(".card");

    card.style.opacity = "0";
    card.style.transform = "translateY(30px)";

    setTimeout(() => {

        card.style.transition = "0.5s";
        card.style.opacity = "1";
        card.style.transform = "translateY(0)";

    }, 100);

};

// ================================
// Input Focus Effect
// ================================

document.querySelectorAll(".form-control").forEach(input => {

    input.addEventListener("focus", function () {

        this.style.borderColor = "#ff8800";

    });

    input.addEventListener("blur", function () {

        this.style.borderColor = "#444";

    });

});

// ================================
// Form Validation
// ================================

document.querySelector("form").addEventListener("submit", function(e){

    const serviceName = document.querySelector("[name='serviceName']").value.trim();
    const description = document.querySelector("[name='description']").value.trim();
    const price = document.querySelector("[name='price']").value.trim();
    const duration = document.querySelector("[name='duration']").value.trim();

    if(serviceName==="" || description==="" || price==="" || duration===""){

        alert("Please fill all fields.");

        e.preventDefault();

    }

});

console.log("RideCarePro Edit Service Page Loaded Successfully");

</script>

</body>
</html>