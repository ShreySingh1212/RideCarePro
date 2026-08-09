<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${not empty success}">
    <div class="success-message"> <i class="fa-solid fa-circle-check"></i> ${success} </div>
</c:if>

<c:if test="${not empty error}">
    <div class="alert alert-danger text-center mb-3">
        ${error}
    </div>
</c:if>


<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Forgot Password | RideCarePro</title>

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

height:100vh;

display:flex;

justify-content:center;

align-items:center;

background:
linear-gradient(rgba(0,0,0,.75),
rgba(0,0,0,.80)),
url("https://images.unsplash.com/photo-1511919884226-fd3cad34687c?auto=format&fit=crop&w=1600&q=80");

background-size:cover;
background-position:center;

}

.card{

width:450px;

background:rgba(20,20,20,.92);

padding:40px;

border-radius:20px;

box-shadow:0 0 30px rgba(0,0,0,.5);

color:white;

}

.logo{

text-align:center;

font-size:34px;

font-weight:bold;

color:#ff8800;

margin-bottom:25px;

}

.card h3{

text-align:center;

margin-bottom:10px;

}

.card p{

text-align:center;

color:#cfcfcf;

margin-bottom:30px;

}

.form-control{

background:#1a1a1a;

border:1px solid #444;

color:white;

padding:14px;

}

.form-control:focus{

background:#1a1a1a;

color:white;

border-color:#ff8800;

box-shadow:none;

}

.btn-orange{

background:#ff8800;

border:none;

padding:14px;

width:100%;

font-weight:bold;

color:white;

border-radius:40px;

transition:.3s;

}

.btn-orange:hover{

background:#ff6b00;

}

.back{

text-align:center;

margin-top:20px;

}

.back a{

color:#ff8800;

text-decoration:none;

}

.back a:hover{

text-decoration:underline;

}

.success-message{
    width:100%;
    margin-bottom:18px;
    padding:14px 16px;
    border-radius:14px;

    background:rgba(22,163,74,.16);
    border:1px solid rgba(22,163,74,.35);

    color:#d1fae5;
    text-align:center;
    font-weight:600;

    display:flex;
    justify-content:center;
    align-items:center;
    gap:10px;
}

.success-message i{
    color:#22c55e;
}

</style>

</head>

<body>

<div class="card">

<div class="logo">

RideCarePro

</div>

<h3>

Forgot Password

</h3>

<p>

Enter your registered email address to receive a password reset link.

</p>

<form action="${pageContext.request.contextPath}/customer/forgot-password" method="post">

<div class="mb-4">

<input

type="email"

name="email"

class="form-control"

placeholder="Enter Registered Email"

required>

</div>

<button

class="btn-orange"

type="submit">

<i class="fa-solid fa-paper-plane"></i>

Send Reset Link

</button>

</form>

<div class="back">

<a href="${pageContext.request.contextPath}/login">

<i class="fa-solid fa-arrow-left"></i>

Back to Login

</a>

</div>

</div>

</body>

</html>