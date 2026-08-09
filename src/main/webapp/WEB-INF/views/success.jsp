<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Success | RideCarePro</title>

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
url("https://images.unsplash.com/photo-1503376780353-7e6692767b70?auto=format&fit=crop&w=1600&q=80");

background-size:cover;
background-position:center;

}

.success-box{

width:520px;

background:rgba(20,20,20,.94);

padding:45px;

border-radius:20px;

text-align:center;

color:white;

box-shadow:0 0 30px rgba(0,0,0,.5);

animation:fadeIn .8s ease;

}

@keyframes fadeIn{

from{

opacity:0;
transform:translateY(30px);

}

to{

opacity:1;
transform:translateY(0);

}

}

.success-icon{

width:110px;

height:110px;

margin:auto;

border-radius:50%;

background:#28a745;

display:flex;

justify-content:center;

align-items:center;

font-size:55px;

color:white;

margin-bottom:25px;

}

h2{

font-weight:bold;

margin-bottom:15px;

}

p{

color:#d4d4d4;

font-size:18px;

margin-bottom:30px;

}

.btn-home{

display:inline-block;

background:#ff8800;

padding:14px 35px;

color:white;

text-decoration:none;

font-weight:bold;

border-radius:40px;

transition:.3s;

margin-right:10px;

}

.btn-home:hover{

background:#ff6600;

color:white;

}

.btn-dashboard{

display:inline-block;

background:#198754;

padding:14px 35px;

color:white;

text-decoration:none;

font-weight:bold;

border-radius:40px;

transition:.3s;

}

.btn-dashboard:hover{

background:#157347;

color:white;

}

</style>

</head>

<body>

<div class="success-box">

<div class="success-icon">

<i class="fa-solid fa-check"></i>

</div>

<h2>

Success!

</h2>

<p>

Your request has been completed successfully.

Thank you for choosing <strong>RideCarePro</strong>.

</p>

<a href="/" class="btn-home">

<i class="fa-solid fa-house"></i>

Home

</a>

<a href="customerDashboard" class="btn-dashboard">

<i class="fa-solid fa-gauge-high"></i>

Dashboard

</a>

</div>

</body>

</html>