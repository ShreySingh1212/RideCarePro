<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>RideCare Pro | Sign Up</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{

height:100vh;
display:flex;
justify-content:center;
align-items:center;

background:
linear-gradient(rgba(0,0,0,.75),rgba(0,0,0,.75)),
url("${pageContext.request.contextPath}/images/login.jpg");

background-size:cover;
background-position:center;

}

.signup-box{

width:520px;
padding:40px;
background:rgba(255,255,255,.08);
border-radius:20px;
backdrop-filter:blur(15px);
border:1px solid rgba(255,255,255,.15);
box-shadow:0 0 40px rgba(0,0,0,.4);

}

.logo{

text-align:center;
font-size:40px;
color:#ff6b00;
margin-bottom:10px;

}

h2{

text-align:center;
color:white;
font-weight:700;

}

p{

text-align:center;
color:#ccc;
margin-bottom:25px;

}

.form-control{

height:50px;
background:rgba(255,255,255,.10);
border:none;
color:white;

}

.form-control:focus{

background:rgba(255,255,255,.15);
border:1px solid #ff6b00;
box-shadow:none;
color:white;

}

.form-control::placeholder{

color:#ddd;

}

.input-group-text{

background:#ff6b00;
color:white;
border:none;

}

.btn-register{

width:100%;
height:50px;
background:#ff6b00;
border:none;
font-size:18px;
font-weight:600;
transition:.3s;

}

.btn-register:hover{

background:#ff8533;
transform:translateY(-2px);

}

.login-link{

text-align:center;
margin-top:20px;
color:#ddd;

}

.login-link a{

color:#ff6b00;
text-decoration:none;
font-weight:600;

}

.login-link a:hover{

color:white;

}

</style>

</head>

<body>

<div class="signup-box">

<div class="logo">
<i class="fa-solid fa-motorcycle"></i>
</div>

<h2>Create Account</h2>

<p>Join RideCare Pro Today</p>

<c:if test="${not empty error}">
    <div class="alert alert-danger text-center">
        ${error}
    </div>
</c:if>

<c:if test="${not empty success}">
    <div class="alert alert-success text-center">
        ${success}
    </div>
</c:if>

<form action="${pageContext.request.contextPath}/customer/register"
      method="post">
      <div class="mb-3">

    <div class="input-group">

        <span class="input-group-text">
            <i class="fa-solid fa-user"></i>
        </span>

        <input type="text"
               class="form-control"
               name="fullName"
               placeholder="Full Name"
               required>

    </div>

</div>

<div class="mb-3">

    <div class="input-group">

        <span class="input-group-text">
            <i class="fa-solid fa-envelope"></i>
        </span>

        <input type="email"
               class="form-control"
               name="email"
               placeholder="Email Address"
               required>

    </div>

</div>

<div class="mb-3">

    <div class="input-group">

        <span class="input-group-text">
            <i class="fa-solid fa-phone"></i>
        </span>

        <input type="text"
               class="form-control"
               name="phone"
               placeholder="Mobile Number"
               required>

    </div>

</div>

<div class="mb-3">

    <div class="input-group">

        <span class="input-group-text">
            <i class="fa-solid fa-location-dot"></i>
        </span>

        <input type="text"
               class="form-control"
               name="address"
               placeholder="Address"
               required>

    </div>

</div>

<div class="mb-3">

    <div class="input-group">

        <span class="input-group-text">
            <i class="fa-solid fa-lock"></i>
        </span>

        <input type="password"
               class="form-control"
               id="password"
               name="password"
               placeholder="Create Password"
               required>

    </div>

</div>

<div class="mb-4">

    <div class="input-group">

        <span class="input-group-text">
            <i class="fa-solid fa-lock"></i>
        </span>

        <input type="password"
               class="form-control"
               id="confirmPassword"
               placeholder="Confirm Password"
               required>

    </div>

</div>

<button type="submit" class="btn btn-register">

    <i class="fa-solid fa-user-plus"></i>

    Create Account

</button>

</form>

<div class="login-link">

    Already have an account?

    <a href="${pageContext.request.contextPath}/login">

        Login Here

    </a>

</div>
<script>

let password = document.getElementById("password");
let confirmPassword = document.getElementById("confirmPassword");

confirmPassword.addEventListener("keyup", function () {

    if (confirmPassword.value === "") {

        confirmPassword.style.border = "";

        return;
    }

    if (password.value !== confirmPassword.value) {

        confirmPassword.style.border = "2px solid red";

    } else {

        confirmPassword.style.border = "2px solid lime";

    }

});

document.querySelector("form").addEventListener("submit", function (e) {

    if (password.value !== confirmPassword.value) {

        e.preventDefault();

        alert("Password and Confirm Password do not match!");

        confirmPassword.focus();

    }

});

</script>

</body>
</html>