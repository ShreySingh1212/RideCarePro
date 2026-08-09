<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>RideCare Pro | Secure Login</title>

<link rel="icon"
href="${pageContext.request.contextPath}/images/logo-white.png">

<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

<link
href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
rel="stylesheet">

<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/login.css">

</head>

<body>

<!-- Floating Background -->

<div class="floating-circle circle1"></div>
<div class="floating-circle circle2"></div>
<div class="floating-circle circle3"></div>

<div class="login-wrapper">

    <!-- LEFT PANEL -->

    <section class="left-panel">

        <div class="overlay"></div>

        <div class="hero-content">

            <img
            src="${pageContext.request.contextPath}/images/logo-white.png"
            class="brand-logo"
            alt="RideCare Pro">

            <span class="premium-badge">

                PREMIUM MOTORCYCLE SERVICE

            </span>

            <h1>

                RideCare Pro

            </h1>

            <h2>

                Ride Better.<br>

                Ride Longer.

            </h2>

            <p>

                India's premium motorcycle servicing platform.

                Book expert mechanics, schedule pickup & delivery,
                track repairs live and enjoy hassle-free maintenance.

            </p>

            <!-- STATS -->

            <div class="stats-row">

                <div class="stat-card">

                    <h3>25K+</h3>

                    <span>Customers</span>

                </div>

                <div class="stat-card">

                    <h3>180+</h3>

                    <span>Mechanics</span>

                </div>

                <div class="stat-card">

                    <h3>4.9★</h3>

                    <span>Ratings</span>

                </div>

            </div>

            <!-- FEATURES -->

            <div class="features">

                <div class="feature">

                    <i class="fa-solid fa-screwdriver-wrench"></i>

                    <div>

                        <h4>Certified Mechanics</h4>

                        <p>

                            Trained professionals for every bike.

                        </p>

                    </div>

                </div>

                <div class="feature">

                    <i class="fa-solid fa-truck-fast"></i>

                    <div>

                        <h4>Doorstep Pickup</h4>

                        <p>

                            Pickup & delivery at your convenience.

                        </p>

                    </div>

                </div>

                <div class="feature">

                    <i class="fa-solid fa-shield-heart"></i>

                    <div>

                        <h4>Trusted Service</h4>

                        <p>

                            Genuine spare parts with service warranty.

                        </p>

                    </div>

                </div>

            </div>

        </div>

    </section>

    <!-- RIGHT PANEL -->

    <section class="right-panel">

        <div class="login-card">

            <div class="login-top">

                <div class="login-icon">

                    <i class="fa-solid fa-user-lock"></i>

                </div>

                <h2>

                    Welcome Back

                </h2>

                <p>

                    Sign in to continue your RideCare journey.

                </p>

            </div>
            <!-- Error Message -->

<c:if test="${not empty error}">
    <div class="alert alert-danger custom-alert">

        <i class="fa-solid fa-circle-exclamation"></i>

        <span>${error}</span>

    </div>
</c:if>

<!-- Success Message -->

<c:if test="${not empty success}">
    <div class="alert alert-success custom-alert">

        <i class="fa-solid fa-circle-check"></i>

        <span>${success}</span>

    </div>
</c:if>

<!-- LOGIN FORM -->

<form id="loginForm"
      action="${pageContext.request.contextPath}/login"
      method="post">

    <!-- ROLE -->

    <div class="input-box">

        <label>

            Login As

        </label>

        <div class="input-group">

            <span class="input-group-text">

                <i class="fa-solid fa-user-shield"></i>

            </span>

            <select
                    name="role"
                    class="form-control"
                    required>

                <option value="">Choose Your Role</option>

                <option value="CUSTOMER">
                    Customer
                </option>

                <option value="EMPLOYEE">
                    Employee
                </option>

                <option value="ADMIN">
                    Administrator
                </option>

            </select>

        </div>

    </div>


    <!-- EMAIL -->

    <div class="input-box">

        <label>

            Email Address

        </label>

        <div class="input-group">

            <span class="input-group-text">

                <i class="fa-solid fa-envelope"></i>

            </span>

            <input

                type="email"

                class="form-control"

                name="email"

                placeholder="Enter your email"

                autocomplete="email"

                required>

        </div>

    </div>


    <!-- PASSWORD -->

    <div class="input-box">

        <label>

            Password

        </label>

        <div class="input-group">

            <span class="input-group-text">

                <i class="fa-solid fa-lock"></i>

            </span>

            <input

                id="password"

                type="password"

                class="form-control"

                name="password"

                placeholder="Enter your password"

                autocomplete="current-password"

                required>

            <span
                class="input-group-text password-toggle"
                id="togglePassword">

                <i class="fa-solid fa-eye"></i>

            </span>

        </div>

    </div>


    <!-- OPTIONS -->

    <div class="login-options">

        <label class="remember">

           <input type="checkbox" id="rememberMe" name="rememberMe">

            <span>

                Remember Me

            </span>

        </label>

        

    </div>


    <!-- LOGIN BUTTON -->

    <button
            class="btn-login"
            type="submit">

        <span class="btn-text">

            <i class="fa-solid fa-right-to-bracket"></i>

            Login Securely

        </span>

        <span class="btn-glow"></span>

    </button>

</form>
<a href="${pageContext.request.contextPath}/customer/forgot-password"
   class="forgot-link-bottom">

    <i class="fas fa-key"></i>
    Forgot Password?

</a>


<!-- DIVIDER -->

<div class="divider">

    <span>

        OR

    </span>

</div>


<!-- REGISTER -->

<div class="bottom-links">

    <p>

        Don't have an account?

    </p>

    <a href="${pageContext.request.contextPath}/signup">

        Create Customer Account

    </a>

</div>


<div class="bottom-links employee">

    <p>

        Are you joining our service team?

    </p>

    <a href="${pageContext.request.contextPath}/employee/register">

        Employee Registration

    </a>

</div>

<!-- FOOTER -->

<div class="login-footer">

    <div>

        <i class="fa-solid fa-shield-halved"></i>

        Secure Login

    </div>

    <div>

        <i class="fa-solid fa-lock"></i>

        Encrypted Connection

    </div>

</div>

</div>

</section>

</div>