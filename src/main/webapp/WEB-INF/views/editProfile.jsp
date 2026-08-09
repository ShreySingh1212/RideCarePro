<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>Edit Profile | RideCarePro</title>

<link rel="preconnect"
      href="https://fonts.googleapis.com">

<link rel="preconnect"
      href="https://fonts.gstatic.com"
      crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
      rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/editProfile.css">

</head>

<body>

<div class="background-blur"></div>

<div class="edit-wrapper">
<section class="edit-hero">

    <div>

        <h1>

            <i class="fa-solid fa-user-pen"></i>

            Edit Your Profile

        </h1>

        <p>

            Keep your RideCarePro account information updated.

        </p>

    </div>

    <a href="${pageContext.request.contextPath}/customer/profile"
       class="back-btn">

        <i class="fa-solid fa-arrow-left"></i>

        Back to Profile

    </a>

</section>


<section class="glass-card">

<form action="${pageContext.request.contextPath}/customer/update-profile" method="post" enctype="multipart/form-data">

<div class="text-center mb-4">

    <c:choose>

        <c:when test="${not empty customer.profileImage}">
            <img src="${customer.profileImage}"
                 class="rounded-circle shadow"
                 style="width:120px;height:120px;object-fit:cover;"/>
        </c:when>

        <c:otherwise>
            <img src="https://ui-avatars.com/api/?name=${customer.fullName}&background=ff6b00&color=fff&size=128"
                 class="rounded-circle shadow"
                 style="width:120px;height:120px;object-fit:cover;"/>
        </c:otherwise>

    </c:choose>

    <div class="mt-3">
        <input type="file"
               name="profileImageFile"
               accept="image/*"
               class="form-control"/>
    </div>

</div>

<div class="form-grid">

<div class="form-group">

<label>

Full Name

</label>

<input
type="text"
name="fullName"
value="${customer.fullName}"
required>

</div>

<div class="form-group">

<label>

Email

</label>

<input
type="email"
name="email"
value="${customer.email}"
required>

</div>

<div class="form-group">

<label>

Phone

</label>

<input
type="text"
name="phone"
value="${customer.phone}"
required>

</div>

<div class="form-group">

<label>

Address

</label>

<textarea
name="address"
rows="5"
required>${customer.address}</textarea>

</div>

</div>
<div class="button-group">

<button
type="submit"
class="save-btn">

<i class="fa-solid fa-floppy-disk"></i>

Save Changes

</button>

<a
href="${pageContext.request.contextPath}/customer/profile"
class="cancel-btn">

Cancel

</a>

</div>

</form>

</section>

</div>

<script src="${pageContext.request.contextPath}/js/editProfile.js"></script>

</body>

</html>
