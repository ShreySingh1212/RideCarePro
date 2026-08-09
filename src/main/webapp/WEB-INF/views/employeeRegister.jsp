<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Registration | RideCarePro</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body{
    margin:0;
    padding:0;
    font-family:Arial,Helvetica,sans-serif;
    background:linear-gradient(rgba(0,0,0,.75),rgba(0,0,0,.75)),
    url('https://images.unsplash.com/photo-1486006920555-c77dcf18193c?auto=format&fit=crop&w=1600&q=80');
    background-size:cover;
    background-position:center;
}

.card{
    margin-top:40px;
    background:rgba(0,0,0,.85);
    border-radius:15px;
    color:white;
    box-shadow:0 0 20px orange;
}

.card-header{
    background:orange;
    color:black;
    text-align:center;
    font-size:28px;
    font-weight:bold;
    border-radius:15px 15px 0 0;
}

.form-control{
    background:#222;
    color:white;
    border:1px solid orange;
}

.form-control:focus{
    background:#222;
    color:white;
    border-color:orange;
    box-shadow:none;
}

.btn-register{
    background:orange;
    color:black;
    font-weight:bold;
    width:100%;
}

.btn-register:hover{
    background:#ff9800;
}

a{
    color:orange;
    text-decoration:none;
}

a:hover{
    color:white;
}
</style>

</head>

<body>

<div class="container">

<div class="row justify-content-center">

<div class="col-md-7">

<div class="card">

<div class="card-header">
Employee Registration
</div>

<div class="card-body">

<form action="${pageContext.request.contextPath}/employee/register" method="post">

<div class="mb-3">
<label>Full Name</label>
<input type="text" name="fullName" class="form-control" required>
</div>

<div class="mb-3">
<label>Email</label>
<input type="email" name="email" class="form-control" required>
</div>

<div class="mb-3">
<label>Phone Number</label>
<input type="text" name="phone" class="form-control" required>
</div>

<div class="mb-3">
<label>Password</label>
<input type="password" name="password" class="form-control" required>
</div>

<div class="mb-3">
<label>Specialization</label>
<select name="specialization" class="form-control">

<option value="General Service">General Service</option>

<option value="Engine Repair">Engine Repair</option>

<option value="Oil Change">Oil Change</option>

<option value="Brake Service">Brake Service</option>

<option value="Battery Service">Battery Service</option>

<option value="Tyre Service">Tyre Service</option>

</select>
</div>

<div class="mb-3">
<label>Experience (Years)</label>
<input type="number" name="experience" class="form-control" required>
</div>

<div class="mb-3">
<label>Status</label>

<select name="status" class="form-control">

<option value="ACTIVE">ACTIVE</option>

<option value="INACTIVE">INACTIVE</option>

</select>

</div>

<button class="btn btn-register">
Register Employee
</button>

</form>

<hr>

<div class="text-center">

Already Registered?

<a href="${pageContext.request.contextPath}/login">
Login Here
</a>

</div>

</div>

</div>

</div>

</div>

</div>

</body>
</html>