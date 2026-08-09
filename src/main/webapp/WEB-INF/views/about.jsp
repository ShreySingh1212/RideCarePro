<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>About Us | RideCarePro</title>

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
background:#0b0b0b;
color:white;
overflow-x:hidden;
}

/* NAVBAR */

.navbar{
background:rgba(0,0,0,.9);
backdrop-filter:blur(8px);
}

.navbar-brand{
font-size:30px;
font-weight:bold;
color:#ff8800 !important;
}

.nav-link{
color:white !important;
margin-left:18px;
font-weight:500;
transition:.4s;
}

.nav-link:hover{
color:#ff8800 !important;
}

/* HERO */

.hero{
height:70vh;
background:
linear-gradient(rgba(0,0,0,.7),
rgba(0,0,0,.8)),
url('https://images.unsplash.com/photo-1558981806-ec527fa84c39?auto=format&fit=crop&w=1600&q=80');

background-size:cover;
background-position:center;

display:flex;
justify-content:center;
align-items:center;
text-align:center;
}

.hero h1{
font-size:60px;
font-weight:700;
}

.hero p{
font-size:20px;
color:#ddd;
margin-top:15px;
}

.orange{
color:#ff8800;
}

/* ABOUT */

.about-section{

padding:90px 0;

}

.about-image img{

width:100%;

border-radius:15px;

box-shadow:0 15px 30px rgba(0,0,0,.5);

}

.about-content h2{

font-size:42px;

margin-bottom:25px;

}

.about-content p{

font-size:18px;

line-height:1.8;

color:#d4d4d4;

}

/* COUNTER */

.counter{

margin-top:50px;

}

.counter-box{

background:#171717;

padding:35px;

border-radius:15px;

text-align:center;

transition:.4s;

border:1px solid #292929;

}

.counter-box:hover{

transform:translateY(-10px);

border-color:#ff8800;

}

.counter-box i{

font-size:45px;

color:#ff8800;

margin-bottom:20px;

}

.counter-box h2{

font-size:42px;

}

.counter-box p{

color:#bcbcbc;

}

/* WHY CHOOSE */

.why{

padding:90px 0;

background:#111;

}

.why-card{

padding:35px;

background:#1b1b1b;

border-radius:15px;

text-align:center;

height:100%;

transition:.4s;

}

.why-card:hover{

transform:translateY(-12px);

}

.why-card i{

font-size:45px;

color:#ff8800;

margin-bottom:20px;

}

.why-card h4{

margin-bottom:15px;

}

/* TEAM */

.team{

padding:90px 0;

}

.member{

background:#171717;

border-radius:15px;

overflow:hidden;

transition:.4s;

}

.member:hover{

transform:translateY(-10px);

}

.member img{

width:100%;

height:320px;

object-fit:cover;

}

.member-body{

padding:25px;

text-align:center;

}

.member-body h4{

margin-bottom:10px;

}

.member-body p{

color:#ff8800;

}
/* ACHIEVEMENTS */

.achievement{
padding:90px 0;
background:#0f0f0f;
}

.achievement-card{
background:#1a1a1a;
padding:30px;
border-radius:15px;
text-align:center;
transition:.4s;
border:1px solid #262626;
height:100%;
}

.achievement-card:hover{
border-color:#ff8800;
transform:translateY(-10px);
}

.achievement-card h3{
font-size:40px;
color:#ff8800;
margin-bottom:15px;
}

.achievement-card p{
color:#cfcfcf;
font-size:17px;
}

/* CTA */

.cta{
padding:100px 0;
background:linear-gradient(135deg,#ff8800,#ff5a00);
text-align:center;
}

.cta h2{
font-size:48px;
font-weight:bold;
margin-bottom:20px;
}

.cta p{
font-size:20px;
margin-bottom:30px;
}

.cta .btn{
padding:14px 40px;
font-size:18px;
border-radius:50px;
font-weight:bold;
}

/* FOOTER */

footer{
background:#000;
padding:30px 0;
text-align:center;
color:#bbb;
}

footer a{
color:#ff8800;
text-decoration:none;
}

@media(max-width:768px){

.hero{
height:55vh;
}

.hero h1{
font-size:40px;
}

.hero p{
font-size:16px;
}

.about-content h2{
font-size:32px;
}

.cta h2{
font-size:34px;
}

.member img{
height:260px;
}

}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark sticky-top">

<div class="container">

<a class="navbar-brand" href="/">RideCarePro</a>

<button class="navbar-toggler" type="button"
data-bs-toggle="collapse"
data-bs-target="#menu">

<span class="navbar-toggler-icon"></span>

</button>

<div class="collapse navbar-collapse" id="menu">

<ul class="navbar-nav ms-auto">

<li class="nav-item">
    <a class="nav-link"
       href="${pageContext.request.contextPath}/">
       Home
    </a>
</li>

<li class="nav-item">
    <a class="nav-link active"
       href="#">
       About
    </a>
</li>

<li class="nav-item">
    <a class="nav-link"
       href="${pageContext.request.contextPath}/#services">
       Services
    </a>
</li>

<li class="nav-item">
    <a class="nav-link"
       href="${pageContext.request.contextPath}/#contact">
       Contact
    </a>
</li>

<li class="nav-item">
    <a class="nav-link"
       href="${pageContext.request.contextPath}/login">
       Login
    </a>
</li>

</ul>

</div>

</div>

</nav>

<!-- HERO -->

<section class="hero">

<div>

<h1>
About
<span class="orange">RideCarePro</span>
</h1>

<p>
Professional Bike Service With Quality You Can Trust
</p>

</div>

</section>

<!-- ABOUT -->

<section class="about-section">

<div class="container">

<div class="row align-items-center">

<div class="col-lg-6 mb-4">

<div class="about-image">

<img src="https://images.unsplash.com/photo-1517524008697-84bbe3c3fd98?auto=format&fit=crop&w=1200&q=80">

</div>

</div>

<div class="col-lg-6">

<div class="about-content">

<h2>
Driven By
<span class="orange">Passion</span>
</h2>

<p>
RideCarePro is a modern bike service management platform designed to
make motorcycle maintenance easy, transparent and reliable.
Our mission is to provide premium servicing with certified mechanics,
genuine spare parts and doorstep convenience.
</p>

<p>
From routine maintenance to emergency repairs, we ensure that every
bike receives expert care using advanced diagnostic tools and
professional workmanship.
</p>

<div class="row counter">

<div class="col-md-4 mb-3">

<div class="counter-box">

<i class="fa-solid fa-motorcycle"></i>

<h2>8K+</h2>

<p>Bikes</p>

</div>

</div>

<div class="col-md-4 mb-3">

<div class="counter-box">

<i class="fa-solid fa-users"></i>

<h2>5K+</h2>

<p>Customers</p>

</div>

</div>

<div class="col-md-4 mb-3">

<div class="counter-box">

<i class="fa-solid fa-award"></i>

<h2>12+</h2>

<p>Years</p>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</section>
<!-- WHY CHOOSE US -->

<section class="why">

<div class="container">

<div class="text-center mb-5">

<h2>Why Choose <span class="orange">RideCarePro</span></h2>

<p class="text-secondary">
Experience unmatched bike servicing with modern technology and expert mechanics.
</p>

</div>

<div class="row g-4">

<div class="col-md-4">

<div class="why-card">

<i class="fa-solid fa-user-gear"></i>

<h4>Certified Mechanics</h4>

<p>
Our experienced technicians diagnose and repair every bike using professional equipment.
</p>

</div>

</div>

<div class="col-md-4">

<div class="why-card">

<i class="fa-solid fa-screwdriver-wrench"></i>

<h4>Genuine Spare Parts</h4>

<p>
We use only high-quality original spare parts to maximize your bike's performance and durability.
</p>

</div>

</div>

<div class="col-md-4">

<div class="why-card">

<i class="fa-solid fa-truck-fast"></i>

<h4>Doorstep Pickup</h4>

<p>
Book online and let our team collect and deliver your motorcycle safely at your convenience.
</p>

</div>

</div>

</div>

</div>

</section>

<!-- TEAM -->

<section class="team">

<div class="container">

<div class="text-center mb-5">

<h2>Meet Our <span class="orange">Experts</span></h2>

<p class="text-secondary">
Dedicated professionals committed to delivering exceptional service.
</p>

</div>

<div class="row g-4">

<div class="col-lg-4">

<div class="member">

<img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=700&q=80">

<div class="member-body">

<h4>Rahul Sharma</h4>

<p>Senior Service Engineer</p>

</div>

</div>

</div>

<div class="col-lg-4">

<div class="member">

<img src="https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?auto=format&fit=crop&w=700&q=80">

<div class="member-body">

<h4>Amit Verma</h4>

<p>Workshop Manager</p>

</div>

</div>

</div>

<div class="col-lg-4">

<div class="member">

<img src="https://images.unsplash.com/photo-1502767089025-6572583495b0?auto=format&fit=crop&w=700&q=80">

<div class="member-body">

<h4>Priya Singh</h4>

<p>Customer Support Head</p>

</div>

</div>

</div>

</div>

</div>

</section>

<!-- ACHIEVEMENTS -->

<section class="achievement">

<div class="container">

<div class="text-center mb-5">

<h2>Our <span class="orange">Achievements</span></h2>

</div>

<div class="row g-4">

<div class="col-md-3">

<div class="achievement-card">

<h3>8000+</h3>

<p>Motorcycles Serviced</p>

</div>

</div>

<div class="col-md-3">

<div class="achievement-card">

<h3>5000+</h3>

<p>Happy Customers</p>

</div>

</div>

<div class="col-md-3">

<div class="achievement-card">

<h3>99%</h3>

<p>Customer Satisfaction</p>

</div>

</div>

<div class="col-md-3">

<div class="achievement-card">

<h3>24×7</h3>

<p>Customer Support</p>

</div>

</div>

</div>

</div>

</section>

<!-- CALL TO ACTION -->

<section class="cta">

<div class="container">

<h2>Ready To Service Your Bike?</h2>

<p>
Book your next service with RideCarePro and enjoy premium care with trusted professionals.
</p>

<a href="bookService" class="btn btn-light btn-lg">

Book Service Now

</a>

</div>

</section>

<!-- FOOTER -->

<footer>

<div class="container">

<p>

© 2026 RideCarePro | Designed By RideCarePro Team

</p>

<p>

<i class="fa-solid fa-location-dot orange"></i>

Greater Noida, Uttar Pradesh

&nbsp;&nbsp;

<i class="fa-solid fa-phone orange"></i>

+91 9876543210

&nbsp;&nbsp;

<i class="fa-solid fa-envelope orange"></i>

support@ridecarepro.com

</p>

</div>

</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>