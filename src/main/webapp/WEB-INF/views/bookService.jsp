<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">



<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>RideCarePro | Book Service</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
rel="stylesheet">

<!-- ADD THIS LINE -->
<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/booking.css">

</head>

<body>

<div class="container booking-section">

<div class="booking-card">

<c:if test="${param.success != null}">
    <div class="alert alert-success text-center fw-bold mb-4">
        <i class="fa-solid fa-circle-check"></i>
        Your service booking has been submitted successfully!
    </div>
</c:if>

<h1 class="page-title">
Book Your <span>Bike Service</span>
</h1>

<p class="page-sub">
Professional Pickup & Doorstep Service for Every Bike.
</p>
<div class="row mb-4">

    <div class="col-md-4">

        <div class="feature-box">

            <i class="fa-solid fa-oil-can"></i>

            <h5>Oil Change</h5>

            <p>
                Premium engine oil replacement with genuine products.
            </p>

        </div>

    </div>

    <div class="col-md-4">

        <div class="feature-box">

            <i class="fa-solid fa-gears"></i>

            <h5>Engine Repair</h5>

            <p>
                Expert engine diagnosis and complete repair service.
            </p>

        </div>

    </div>

    <div class="col-md-4">

        <div class="feature-box">

            <i class="fa-solid fa-truck-fast"></i>

            <h5>Doorstep Pickup</h5>

            <p>
                We collect your bike from your home and deliver it back.
            </p>

        </div>

    </div>

</div>

<form action="${pageContext.request.contextPath}/bookService"
      method="post">

<div class="row">

    <div class="col-md-6 mb-4">

        <label>

            <i class="fa-solid fa-user text-warning"></i>

            Customer Name

        </label>

        <input
type="text"
class="form-control"
name="customerName"
value="${sessionScope.loggedCustomer.fullName}">

    </div>

    <div class="col-md-6 mb-4">

        <label>

            <i class="fa-solid fa-phone text-warning"></i>

            Phone Number

        </label>

        <input
type="tel"
class="form-control"
name="phone"
placeholder="9876543210"
pattern="[0-9]{10}"
maxlength="10"
required>

    </div>

    <div class="col-md-6 mb-4">

        <label>

            <i class="fa-solid fa-motorcycle text-warning"></i>

            Bike Company

        </label>

        <input
        type="text"
        class="form-control"
        name="bikeCompany"
        placeholder="Royal Enfield"
        required>

    </div>

    <div class="col-md-6 mb-4">

        <label>

            <i class="fa-solid fa-bicycle text-warning"></i>

            Bike Model

        </label>

        <input
        type="text"
        class="form-control"
        name="bikeModel"
        placeholder="Hunter 350"
        required>

    </div>

    <div class="col-md-6 mb-4">

        <label>

            <i class="fa-solid fa-id-card text-warning"></i>

            Registration Number

        </label>

        <input
type="text"
class="form-control"
name="registrationNumber"
placeholder="UP16AB1234"
style="text-transform:uppercase;"
oninput="this.value=this.value.toUpperCase();"
required>

    </div>

    <div class="col-md-6 mb-4">

        <label>

            <i class="fa-solid fa-screwdriver-wrench text-warning"></i>

            Service Type

        </label>

        <select
        class="form-select"
        name="serviceName">

<option value="">Select Service</option>
<option>General Service</option>
<option>Full Bike Service</option>
<option>Oil Change</option>
<option>Brake Inspection</option>
<option>Engine Repair</option>
<option>Chain Cleaning</option>
<option>Battery Check</option>
<option>Wheel Alignment</option>
<option>Water Wash</option>
        </select>

    </div>
        <div class="col-12 mb-4">

        <label>

            <i class="fa-solid fa-location-dot text-warning"></i>

            Pickup Address

        </label>

        <textarea
        class="form-control"
        name="pickupAddress"
        placeholder="Enter complete pickup address..."
        required></textarea>

    </div>

    <div class="col-md-6 mb-4">

        <label>

            <i class="fa-solid fa-calendar-days text-warning"></i>

            Pickup Date

        </label>

        <input type="date" id="pickupDate" name="pickupDate" required>

    </div>

    <div class="col-md-6 mb-4">

        <label>

            <i class="fa-solid fa-clock text-warning"></i>

            Pickup Time

        </label>

        <select
class="form-select"
name="pickupTime"
required>
<option value="">Select Pickup Time</option>
<option>09:00 AM - 11:00 AM</option>
<option>11:00 AM - 01:00 PM</option>
<option>01:00 PM - 03:00 PM</option>
<option>03:00 PM - 05:00 PM</option>
<option>05:00 PM - 07:00 PM</option>
        </select>

    </div>

    <div class="col-12 mb-4">

        <label>

            <i class="fa-solid fa-note-sticky text-warning"></i>

            Additional Notes

        </label>

        <textarea
        class="form-control"
        name="remarks"
        placeholder="Write any issue related to your bike (Optional)"></textarea>

    </div>

</div>

<div class="row mt-3">

    <div class="col-md-6 d-grid mb-3">

        <button
        type="submit"
        class="btn btn-book">

            <i class="fa-solid fa-motorcycle"></i>

            Book Service Now

        </button>

    </div>

    <div class="col-md-6 d-grid mb-3">

        <a
        href="${pageContext.request.contextPath}/customer/dashboard"
        class="btn btn-outline-light back-btn">

            <i class="fa-solid fa-arrow-left"></i>

            Back to Dashboard

        </a>

    </div>

</div>

</form>

<hr class="text-secondary mt-5">

<div class="row text-center">

    <div class="col-md-4">

        <i class="fa-solid fa-shield-halved text-warning fa-2x mb-3"></i>

        <h5 class="text-white">

            Trusted Mechanics

        </h5>

        <p class="text-secondary">

            Certified professionals for every service.

        </p>

    </div>

    <div class="col-md-4">

        <i class="fa-solid fa-screwdriver-wrench text-warning fa-2x mb-3"></i>

        <h5 class="text-white">

            Genuine Parts

        </h5>

        <p class="text-secondary">

            Original spare parts with quality assurance.

        </p>

    </div>

    <div class="col-md-4">

        <i class="fa-solid fa-headset text-warning fa-2x mb-3"></i>

        <h5 class="text-white">

            24×7 Support

        </h5>

        <p class="text-secondary">

            We are always available to assist you.

        </p>

    </div>

</div>
<!-- Footer -->

<hr class="border-secondary mt-5">

<div class="text-center mt-4">

    <h4 class="text-warning fw-bold">
        RideCarePro
    </h4>

    <p class="text-light">
        Your Trusted Partner for Premium Bike Service
    </p>

    <div class="mt-3">

        <i class="fa-brands fa-facebook fa-xl text-primary mx-2"></i>

        <i class="fa-brands fa-instagram fa-xl text-danger mx-2"></i>

        <i class="fa-brands fa-x-twitter fa-xl text-light mx-2"></i>

        <i class="fa-brands fa-linkedin fa-xl text-info mx-2"></i>

    </div>

    <p class="text-secondary mt-4">

        © 2026 RideCarePro. All Rights Reserved.

    </p>

</div>

</div>

</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
document.addEventListener("DOMContentLoaded", function () {
    let today = new Date().toISOString().split("T")[0];
    document.getElementById("pickupDate").setAttribute("min", today);
});
</script>

</body>

</html>