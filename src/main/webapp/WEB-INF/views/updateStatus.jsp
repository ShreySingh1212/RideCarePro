<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Update Booking Status | RideCarePro</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">

<style>

body{
    background:#111;
    color:white;
}

.card{
    max-width:650px;
    margin:50px auto;
    background:#181818;
    border:none;
    border-radius:15px;
}

.card-header{
    background:#ff8800;
    color:white;
    font-size:24px;
    font-weight:bold;
}

.form-control,
.form-select{
    background:#2b2b2b;
    color:white;
    border:none;
}

.form-control:focus,
.form-select:focus{
    background:#2b2b2b;
    color:white;
    box-shadow:none;
}

.btn-orange{
    background:#ff8800;
    color:white;
    border:none;
}

.btn-orange:hover{
    background:#ff6600;
    color:white;
}

</style>

</head>

<body>

<div class="container">

<div class="card">

<div class="card-header">

<i class="fa-solid fa-pen"></i>

Update Booking Status

</div>

<div class="card-body">

<form action="${pageContext.request.contextPath}/employee/updateStatus" method="post">

<input type="hidden"
name="bookingId"
value="${booking.bookingId}">

<div class="mb-3">

<label class="form-label">

Customer

</label>

<input type="text"
class="form-control"
value="${booking.customerName}"
readonly>

</div>

<div class="mb-3">

<label class="form-label">

Bike

</label>

<input type="text"
class="form-control"
value="${booking.bikeCompany} ${booking.bikeModel}"
readonly>

</div>

<div class="mb-3">

<label class="form-label">

Service

</label>

<input type="text"
class="form-control"
value="${booking.serviceName}"
readonly>

</div>

<div class="mb-3">

<label class="form-label">

Update Status

</label>

<select name="status"
class="form-select">

<option value="Pending"
${booking.status=='Pending'?'selected':''}>

Pending

</option>

<option value="In Progress"
${booking.status=='In Progress'?'selected':''}>

In Progress

</option>

<option value="Completed"
${booking.status=='Completed'?'selected':''}>

Completed

</option>

</select>

</div>

<button class="btn btn-orange">

<i class="fa-solid fa-floppy-disk"></i>

Save Status

</button>

<a href="${pageContext.request.contextPath}/employee/assignedJobs"
class="btn btn-secondary">

Cancel

</a>

</form>

</div>

</div>

</div>

</body>

</html>