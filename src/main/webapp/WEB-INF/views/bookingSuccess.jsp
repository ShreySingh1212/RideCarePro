<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Successful</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
background:linear-gradient(135deg,#0f172a,#1e293b);
height:100vh;
display:flex;
justify-content:center;
align-items:center;
font-family:Arial;
}

.card{
width:700px;
border:none;
border-radius:20px;
box-shadow:0 10px 30px rgba(0,0,0,.4);
padding:40px;
text-align:center;
}

.tick{
font-size:70px;
color:green;
}

h2{
font-weight:bold;
margin-top:15px;
}

.table td{
text-align:left;
}

.btn-home{
margin-top:20px;
}

</style>

</head>
<body>

<div class="card">

<div class="tick">✅</div>

<h2>Service Booked Successfully!</h2>

<p class="text-success">
Your booking has been received successfully.
</p>

<hr>

<table class="table">

<tr>
<td><b>Name</b></td>
<td>${booking.customerName}</td>
</tr>

<tr>
<td><b>Phone</b></td>
<td>${booking.phone}</td>
</tr>

<tr>
<td><b>Bike</b></td>
<td>${booking.bikeCompany} ${booking.bikeModel}</td>
</tr>

<tr>
<td><b>Registration No.</b></td>
<td>${booking.registrationNumber}</td>
</tr>

<tr>
<td><b>Service</b></td>
<td>${booking.serviceName}</td>
</tr>

<tr>
<td><b>Pickup Date</b></td>
<td>${booking.pickupDate}</td>
</tr>

<tr>
<td><b>Pickup Time</b></td>
<td>${booking.pickupTime}</td>
</tr>

<tr>
<td><b>Status</b></td>
<td>
<span class="badge bg-warning text-dark">
${booking.status}
</span>
</td>
</tr>

</table>

<a href="/" class="btn btn-primary btn-home">
🏠 Back to Home
</a>

</div>

</body>
</html>