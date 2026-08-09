<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Contact Us | RideCarePro</title>

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
background:#0d0d0d;
color:#fff;
overflow-x:hidden;
}

.orange{
color:#ff8800;
}

/* NAVBAR */

.navbar{
background:rgba(0,0,0,.92);
backdrop-filter:blur(10px);
}

.navbar-brand{
font-size:30px;
font-weight:bold;
color:#ff8800 !important;
}

.nav-link{
color:#fff !important;
margin-left:18px;
transition:.3s;
}

.nav-link:hover{
color:#ff8800 !important;
}

/* HERO */

.hero{

height:55vh;

background:

linear-gradient(rgba(0,0,0,.75),

rgba(0,0,0,.80)),

url("https://images.unsplash.com/photo-1511919884226-fd3cad34687c?auto=format&fit=crop&w=1600&q=80");

background-size:cover;

background-position:center;

display:flex;

justify-content:center;

align-items:center;

text-align:center;

}

.hero h1{

font-size:60px;

font-weight:bold;

}

.hero p{

font-size:20px;

margin-top:15px;

color:#ddd;

}

/* CONTACT */

.contact{

padding:90px 0;

}

.contact-box{

background:#181818;

padding:35px;

border-radius:18px;

box-shadow:0 0 20px rgba(0,0,0,.4);

}

.contact-box h3{

margin-bottom:25px;

color:#ff8800;

}

.form-control{

background:#111;

border:1px solid #333;

color:#fff;

padding:15px;

}

.form-control:focus{

background:#111;

border-color:#ff8800;

box-shadow:none;

color:#fff;

}

textarea{

resize:none;

}

.btn-orange{

background:#ff8800;

border:none;

padding:12px 30px;

font-weight:bold;

color:white;

border-radius:35px;

transition:.3s;

}

.btn-orange:hover{

background:#ff6b00;

}

.info-card{

background:#181818;

padding:25px;

border-radius:18px;

margin-bottom:25px;

transition:.4s;

}

.info-card:hover{

transform:translateY(-8px);

}

.info-card i{

font-size:38px;

color:#ff8800;

margin-bottom:15px;

}

.info-card h5{

margin-bottom:12px;

}

.info-card p{

color:#cfcfcf;

line-height:1.7;

}

/* MAP */

.map{

padding-bottom:90px;

}

.map iframe{

width:100%;

height:420px;

border:0;

border-radius:18px;

}

/* WORKING HOURS */

.hours{

background:#111;

padding:90px 0;

}

.hour-card{

background:#1b1b1b;

padding:35px;

border-radius:18px;

text-align:center;

height:100%;

transition:.4s;

}

.hour-card:hover{

transform:translateY(-10px);

border:1px solid #ff8800;

}

.hour-card i{

font-size:45px;

color:#ff8800;

margin-bottom:20px;

}
.hour-card h4{

margin-bottom:20px;

}

.hour-card p{

color:#d0d0d0;

line-height:2;

}

/* SOCIAL */

.social{

padding:70px 0;

text-align:center;

}

.social a{

display:inline-flex;

justify-content:center;

align-items:center;

width:60px;

height:60px;

border-radius:50%;

background:#1b1b1b;

color:#ff8800;

font-size:24px;

margin:10px;

text-decoration:none;

transition:.4s;

}

.social a:hover{

background:#ff8800;

color:#fff;

transform:translateY(-8px);

}

/* FOOTER */

footer{

background:#000;

padding:30px;

text-align:center;

color:#bbb;

}

@media(max-width:768px){

.hero{

height:45vh;

}

.hero h1{

font-size:42px;

}

.hero p{

font-size:16px;

}

}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark sticky-top">

<div class="container">

<a class="navbar-brand" href="/">RideCarePro</a>

<button class="navbar-toggler"

type="button"

data-bs-toggle="collapse"

data-bs-target="#menu">

<span class="navbar-toggler-icon"></span>

</button>

<div class="collapse navbar-collapse" id="menu">

<ul class="navbar-nav ms-auto">

<li class="nav-item">

<a class="nav-link" href="/">Home</a>

</li>

<li class="nav-item">

<a class="nav-link" href="about">About</a>

</li>

<li class="nav-item">

<a class="nav-link" href="services">Services</a>

</li>

<li class="nav-item">

<a class="nav-link active" href="#">Contact</a>

</li>

<li class="nav-item">

<a class="nav-link" href="login">Login</a>

</li>

</ul>

</div>

</div>

</nav>

<!-- HERO -->

<section class="hero">

<div>

<h1>

Contact

<span class="orange">

RideCarePro

</span>

</h1>

<p>

We'd love to hear from you. Reach out anytime.

</p>

</div>

</section>

<!-- CONTACT -->

<section class="contact">

<div class="container">

<div class="row g-5">

<div class="col-lg-7">

<div class="contact-box">

<h3>

Send Us A Message

</h3>

<form action="contact" method="post">

<div class="row">

<div class="col-md-6 mb-3">

<input

type="text"

class="form-control"

name="name"

placeholder="Full Name"

required>

</div>

<div class="col-md-6 mb-3">

<input

type="email"

class="form-control"

name="email"

placeholder="Email Address"

required>

</div>

</div>

<div class="mb-3">

<input

type="text"

class="form-control"

name="subject"

placeholder="Subject"

required>

</div>

<div class="mb-4">

<textarea

class="form-control"

rows="6"

name="message"

placeholder="Write your message..."

required>

</textarea>

</div>

<button

type="submit"

class="btn-orange">

<i class="fa-solid fa-paper-plane"></i>

Send Message

</button>

</form>

</div>

</div>

<div class="col-lg-5">

<div class="info-card">

<i class="fa-solid fa-location-dot"></i>

<h5>Office Address</h5>

<p>

A-80 Pocket-4 PHI-II,

Greater Noida,

Uttar Pradesh 201310

</p>

</div>

<div class="info-card">

<i class="fa-solid fa-phone"></i>

<h5>Phone Number</h5>

<p>

+91 9876543210

<br>

+91 9876501234

</p>

</div>

<div class="info-card">

<i class="fa-solid fa-envelope"></i>

<h5>Email Address</h5>

<p>

support@ridecarepro.com

<br>

info@ridecarepro.com

</p>

</div>

</div>

</div>

</div>

</section>
<!-- GOOGLE MAP -->

<section class="map">

<div class="container">

<div class="text-center mb-5">

<h2>

Find

<span class="orange">

Us

</span>

</h2>

<p class="text-secondary">

Visit our workshop or book an online service.

</p>

</div>

<iframe
src="https://www.google.com/maps?q=Greater+Noida&output=embed"
loading="lazy"
allowfullscreen>
</iframe>

</div>

</section>

<!-- WORKING HOURS -->

<section class="hours">

<div class="container">

<div class="text-center mb-5">

<h2>

Working

<span class="orange">

Hours

</span>

</h2>

</div>

<div class="row g-4">

<div class="col-md-4">

<div class="hour-card">

<i class="fa-solid fa-clock"></i>

<h4>Monday - Friday</h4>

<p>

09:00 AM<br>

08:00 PM

</p>

</div>

</div>

<div class="col-md-4">

<div class="hour-card">

<i class="fa-solid fa-calendar-day"></i>

<h4>Saturday</h4>

<p>

09:00 AM<br>

06:00 PM

</p>

</div>

</div>

<div class="col-md-4">

<div class="hour-card">

<i class="fa-solid fa-mug-hot"></i>

<h4>Sunday</h4>

<p>

Emergency Services Only<br>

10:00 AM - 04:00 PM

</p>

</div>

</div>

</div>

</div>

</section>

<!-- SOCIAL MEDIA -->

<section class="social">

<div class="container">

<h2 class="mb-4">

Follow

<span class="orange">

RideCarePro

</span>

</h2>

<a href="#">

<i class="fab fa-facebook-f"></i>

</a>

<a href="#">

<i class="fab fa-instagram"></i>

</a>

<a href="#">

<i class="fab fa-x-twitter"></i>

</a>

<a href="#">

<i class="fab fa-linkedin-in"></i>

</a>

<a href="#">

<i class="fab fa-youtube"></i>

</a>

</div>

</section>

<!-- FOOTER -->

<footer>

<div class="container">

<h5 class="mb-3">

RideCarePro

</h5>

<p>

Premium Bike Service Management System

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

<hr class="border-secondary">

<p class="mb-0">

© 2026 RideCarePro. All Rights Reserved.

</p>

</div>

</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>