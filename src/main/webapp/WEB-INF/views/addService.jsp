<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Add Bike Service | RideCarePro</title>

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

background:linear-gradient(135deg,#0f0f0f,#1d1d1d);

height:100vh;

display:flex;

justify-content:center;

align-items:center;

}

.card{

width:700px;

background:#181818;

border-radius:20px;

padding:40px;

box-shadow:0 10px 40px rgba(0,0,0,.6);

color:white;

}

.logo{

font-size:32px;

font-weight:bold;

text-align:center;

color:#ff8800;

margin-bottom:30px;

}

.form-control{

background:#222;

border:1px solid #444;

color:white;

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

margin-bottom:8px;

font-weight:600;

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

Add New Bike Service

</h3>

<form action="${pageContext.request.contextPath}/service/save"

method="post">
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
            placeholder="Enter Service Name"
            required>

    </div>

    <div class="col-md-12 mb-3">

        <label>

            <i class="fa-solid fa-align-left"></i>

            Description

        </label>

        <textarea
            name="description"
            class="form-control"
            rows="4"
            placeholder="Enter Service Description"
            required></textarea>

    </div>

    <div class="col-md-6 mb-3">

        <label>

            <i class="fa-solid fa-indian-rupee-sign"></i>

            Price (₹)

        </label>

        <input
            type="number"
            step="0.01"
            min="0"
            name="price"
            class="form-control"
            placeholder="Enter Price"
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
            placeholder="Example: 2 Hours"
            required>

    </div>

</div>

<div class="d-flex justify-content-between mt-4">

    <a href="${pageContext.request.contextPath}/service/list"

       class="btn btn-secondary px-4">

        <i class="fa-solid fa-arrow-left"></i>

        Back

    </a>

    <button
        type="submit"
        class="btn btn-orange px-5">

        <i class="fa-solid fa-floppy-disk"></i>

        Save Service

    </button>

</div>
</form>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>

// ==========================
// Fade In Animation
// ==========================

window.onload = function(){

    document.querySelector(".card").style.opacity = "0";
    document.querySelector(".card").style.transform = "translateY(30px)";

    setTimeout(function(){

        document.querySelector(".card").style.transition = ".5s";
        document.querySelector(".card").style.opacity = "1";
        document.querySelector(".card").style.transform = "translateY(0px)";

    },100);

};

// ==========================
// Input Focus Effect
// ==========================

const inputs=document.querySelectorAll(".form-control");

inputs.forEach(input=>{

    input.addEventListener("focus",function(){

        this.style.borderColor="#ff8800";

    });

    input.addEventListener("blur",function(){

        this.style.borderColor="#444";

    });

});

// ==========================
// Simple Validation
// ==========================

document.querySelector("form").addEventListener("submit",function(e){

    let serviceName=document.querySelector("[name='serviceName']").value.trim();
    let description=document.querySelector("[name='description']").value.trim();
    let price=document.querySelector("[name='price']").value.trim();
    let duration=document.querySelector("[name='duration']").value.trim();

    if(serviceName=="" || description=="" || price=="" || duration==""){

        alert("Please fill all fields.");

        e.preventDefault();

    }

});

console.log("RideCarePro Add Service Loaded Successfully");

</script>

</body>

</html>