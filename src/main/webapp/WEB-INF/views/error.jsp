<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Error | RideCarePro</title>

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
linear-gradient(rgba(0,0,0,.80),
rgba(0,0,0,.85)),
url("https://images.unsplash.com/photo-1489824904134-891ab64532f1?auto=format&fit=crop&w=1600&q=80");

background-size:cover;
background-position:center;

}

.error-box{

width:550px;

background:rgba(20,20,20,.95);

padding:45px;

border-radius:20px;

text-align:center;

color:white;

box-shadow:0 0 35px rgba(0,0,0,.6);

animation:slide .8s ease;

}

@keyframes slide{

from{

opacity:0;
transform:translateY(30px);

}

to{

opacity:1;
transform:translateY(0);

}

}

.error-icon{

width:110px;
height:110px;

margin:auto;

border-radius:50%;

background:#dc3545;

display:flex;

justify-content:center;
align-items:center;

font-size:55px;

margin-bottom:25px;

}

h1{

font-size:42px;

font-weight:bold;

margin-bottom:15px;

}

p{

color:#d4d4d4;

font-size:18px;

margin-bottom:35px;

line-height:1.8;

}

.btn-home{

display:inline-block;

padding:14px 35px;

background:#ff8800;

color:white;

text-decoration:none;

font-weight:bold;

border-radius:40px;

margin-right:10px;

transition:.3s;

}

.btn-home:hover{

background:#ff6600;

color:white;

}

.btn-back{

display:inline-block;

padding:14px 35px;

background:#6c757d;

color:white;

text-decoration:none;

font-weight:bold;

border-radius:40px;

transition:.3s;

}

.btn-back:hover{

background:#5c636a;

color:white;

}

</style>

</head>

<body>

<div class="error-box">

<div class="error-icon">

<i class="fa-solid fa-xmark"></i>

</div>

<h1>

Oops!

</h1>

<p>

Something went wrong while processing your request.

Please try again later or return to the homepage.

</p>

<a href="/" class="btn-home">

<i class="fa-solid fa-house"></i>

Home

</a>

<a href="javascript:history.back()" class="btn-back">

<i class="fa-solid fa-arrow-left"></i>

Go Back

</a>

</div>

</body>

</html>