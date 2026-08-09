<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>RideCarePro | Premium Services</title>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
rel="stylesheet">

<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/customerServices.css">

</head>

<body>

<!-- HERO -->

<section class="hero">

    <div class="overlay"></div>

    <div class="hero-content">

        <span class="badge-title">

            Premium Bike Care

        </span>

        <h1>

            RideCarePro <br>

            Premium Services

        </h1>

        <p>

            Trusted mechanics, genuine spare parts,
            transparent pricing and doorstep pickup.

        </p>

        <div class="hero-buttons">

            <a href="#services"
               class="btn-orange">

                Explore Services

            </a>

            <a href="${pageContext.request.contextPath}/customer/dashboard"
               class="btn-dark">

                Back Dashboard

            </a>

        </div>

    </div>

</section>

<!--====================================
        STATISTICS SECTION
=====================================-->

<section class="stats-section">

    <div class="stats-container">

        <div class="stat-card">

            <i class="fa-solid fa-screwdriver-wrench"></i>

            <h2 class="counter" data-target="1500">0</h2>

            <p>Services Completed</p>

        </div>

        <div class="stat-card">

            <i class="fa-solid fa-star"></i>

            <h2>4.9★</h2>

            <p>Average Rating</p>

        </div>

        <div class="stat-card">

            <i class="fa-solid fa-users"></i>

            <h2 class="counter" data-target="3200">0</h2>

            <p>Happy Riders</p>

        </div>

        <div class="stat-card">

            <i class="fa-solid fa-headset"></i>

            <h2>24/7</h2>

            <p>Support</p>

        </div>

    </div>

</section>



<!--====================================
            SEARCH SECTION
=====================================-->

<section class="search-section">

    <div class="search-box">

        <i class="fa-solid fa-magnifying-glass"></i>

        <input type="text"

               id="serviceSearch"

               placeholder="Search your favourite bike service...">

    </div>

</section>



<!--====================================
        CATEGORY FILTER
=====================================-->

<section class="category-section">

    <div class="category-buttons">

        <button class="category-btn active"

                data-filter="all">

            All

        </button>

        <button class="category-btn"

                data-filter="oil">

            Oil

        </button>

        <button class="category-btn"

                data-filter="repair">

            Repair

        </button>

        <button class="category-btn"

                data-filter="wash">

            Wash

        </button>

        <button class="category-btn"

                data-filter="electrical">

            Electrical

        </button>

        <button class="category-btn"

                data-filter="inspection">

            Inspection

        </button>

    </div>

</section>



<!--====================================
        FEATURED SERVICES
=====================================-->

<section class="services-section"

         id="services">

    <div class="section-title">

        <h2>

            Featured Services

        </h2>

        <p>

            Professional bike servicing with certified mechanics.

        </p>

    </div>

    <div class="services-grid">
    <!--==============================
      PREMIUM OIL CHANGE
===============================-->

<div class="service-card"

     data-category="oil">

    <div class="service-image">

        <img src="${pageContext.request.contextPath}/images/oil-change.jpg">

        <span class="service-tag">

            🔥 Popular

        </span>

    </div>

    <div class="service-content">

        <div class="service-rating">

            ⭐⭐⭐⭐⭐

            <span>4.9</span>

        </div>

        <h3>

            Premium Oil Change

        </h3>

        <p>

            Complete engine oil replacement using premium synthetic oils,
            oil filter replacement and full lubrication.

        </p>

        <ul class="service-features">

            <li>

                <i class="fa-solid fa-check"></i>

                Synthetic Engine Oil

            </li>

            <li>

                <i class="fa-solid fa-check"></i>

                Oil Filter Replacement

            </li>

            <li>

                <i class="fa-solid fa-check"></i>

                Chain Lubrication

            </li>

            <li>

                <i class="fa-solid fa-check"></i>

                Safety Inspection

            </li>

        </ul>

        <div class="service-bottom">

            <div>

                <h4>

                    ₹999

                </h4>

                <span>

                    45 Minutes

                </span>

            </div>

            <a href="${pageContext.request.contextPath}/bookService?service=Premium Oil Change"

               class="book-btn">

                Book Now

            </a>

        </div>

    </div>

</div>





<!--==============================
        BIKE SPA
===============================-->

<div class="service-card"

     data-category="wash">

    <div class="service-image">

        <img src="${pageContext.request.contextPath}/images/wash.jpg">

        <span class="service-tag">

            ⭐ Best Seller

        </span>

    </div>

    <div class="service-content">

        <div class="service-rating">

            ⭐⭐⭐⭐⭐

            <span>4.8</span>

        </div>

        <h3>

            Premium Bike Spa

        </h3>

        <p>

            Deep foam wash, polishing, ceramic coating and complete body detailing.

        </p>

        <ul class="service-features">

            <li>

                <i class="fa-solid fa-check"></i>

                Foam Wash

            </li>

            <li>

                <i class="fa-solid fa-check"></i>

                Premium Wax Polish

            </li>

            <li>

                <i class="fa-solid fa-check"></i>

                Alloy Cleaning

            </li>

            <li>

                <i class="fa-solid fa-check"></i>

                Ceramic Finish

            </li>

        </ul>

        <div class="service-bottom">

            <div>

                <h4>

                    ₹699

                </h4>

                <span>

                    60 Minutes

                </span>

            </div>

            <a href="${pageContext.request.contextPath}/bookService?service=Bike Spa"

               class="book-btn">

                Book Now

            </a>

        </div>

    </div>

</div>
<!--==============================
        COMPLETE SERVICE
===============================-->

<div class="service-card"

     data-category="repair">

    <div class="service-image">

        <img src="${pageContext.request.contextPath}/images/repair.jpg">

        <span class="service-tag">

            💎 Recommended

        </span>

    </div>

    <div class="service-content">

        <div class="service-rating">

            ⭐⭐⭐⭐⭐

            <span>5.0</span>

        </div>

        <h3>

            Complete Bike Service

        </h3>

        <p>

            Comprehensive bike servicing including engine tuning, brake inspection,
            clutch adjustment and safety checks.

        </p>

        <ul class="service-features">

            <li><i class="fa-solid fa-check"></i> Engine Tune-Up</li>

            <li><i class="fa-solid fa-check"></i> Brake Inspection</li>

            <li><i class="fa-solid fa-check"></i> Clutch Adjustment</li>

            <li><i class="fa-solid fa-check"></i> Full Safety Check</li>

        </ul>

        <div class="service-bottom">

            <div>

                <h4>₹2499</h4>

                <span>2 Hours</span>

            </div>

            <a href="${pageContext.request.contextPath}/bookService?service=Complete Service"

               class="book-btn">

                Book Now

            </a>

        </div>

    </div>

</div>





<!--==============================
        BRAKE SERVICE
===============================-->

<div class="service-card"

     data-category="repair">

    <div class="service-image">

        <img src="${pageContext.request.contextPath}/images/brake-service.jpg">

        <span class="service-tag">

            🛡 Safety

        </span>

    </div>

    <div class="service-content">

        <div class="service-rating">

            ⭐⭐⭐⭐⭐

            <span>4.8</span>

        </div>

        <h3>

            Brake Service

        </h3>

        <p>

            Complete front and rear brake inspection, brake pad cleaning,
            adjustment and performance testing.

        </p>

        <ul class="service-features">

            <li><i class="fa-solid fa-check"></i> Brake Pad Check</li>

            <li><i class="fa-solid fa-check"></i> Brake Fluid Inspection</li>

            <li><i class="fa-solid fa-check"></i> Disc Cleaning</li>

            <li><i class="fa-solid fa-check"></i> Performance Test</li>

        </ul>

        <div class="service-bottom">

            <div>

                <h4>₹799</h4>

                <span>50 Minutes</span>

            </div>

            <a href="${pageContext.request.contextPath}/bookService?service=Brake Service"

               class="book-btn">

                Book Now

            </a>

        </div>

    </div>

</div>
<!--==============================
        BATTERY CHECK
===============================-->

<div class="service-card"

     data-category="electrical">

    <div class="service-image">

        <img src="${pageContext.request.contextPath}/images/battery.png">

        <span class="service-tag">

            ⚡ Essential

        </span>

    </div>

    <div class="service-content">

        <div class="service-rating">

            ⭐⭐⭐⭐⭐

            <span>4.7</span>

        </div>

        <h3>

            Battery Health Check

        </h3>

        <p>

            Complete battery diagnosis, charging system inspection,
            terminal cleaning and voltage testing.

        </p>

        <ul class="service-features">

            <li>

                <i class="fa-solid fa-check"></i>

                Battery Testing

            </li>

            <li>

                <i class="fa-solid fa-check"></i>

                Charging Check

            </li>

            <li>

                <i class="fa-solid fa-check"></i>

                Terminal Cleaning

            </li>

            <li>

                <i class="fa-solid fa-check"></i>

                Voltage Inspection

            </li>

        </ul>

        <div class="service-bottom">

            <div>

                <h4>

                    ₹399

                </h4>

                <span>

                    30 Minutes

                </span>

            </div>

            <a href="${pageContext.request.contextPath}/bookService?service=Battery Check"

               class="book-btn">

                Book Now

            </a>

        </div>

    </div>

</div>





<!--==============================
        CHAIN CLEANING
===============================-->

<div class="service-card"

     data-category="repair">

    <div class="service-image">

        <img src="${pageContext.request.contextPath}/images/chain.jpg">

        <span class="service-tag">

            🔥 Fast Service

        </span>

    </div>

    <div class="service-content">

        <div class="service-rating">

            ⭐⭐⭐⭐⭐

            <span>4.8</span>

        </div>

        <h3>

            Chain Cleaning & Lubrication

        </h3>

        <p>

            Deep chain cleaning, lubrication,
            tension adjustment and sprocket inspection.

        </p>

        <ul class="service-features">

            <li>

                <i class="fa-solid fa-check"></i>

                Chain Wash

            </li>

            <li>

                <i class="fa-solid fa-check"></i>

                Premium Lubrication

            </li>

            <li>

                <i class="fa-solid fa-check"></i>

                Tension Adjustment

            </li>

            <li>

                <i class="fa-solid fa-check"></i>

                Sprocket Inspection

            </li>

        </ul>

        <div class="service-bottom">

            <div>

                <h4>

                    ₹299

                </h4>

                <span>

                    25 Minutes

                </span>

            </div>

            <a href="${pageContext.request.contextPath}/bookService?service=Chain Cleaning"

               class="book-btn">

                Book Now

            </a>

        </div>

    </div>

</div>
<!--==============================
        ENGINE TUNE-UP
===============================-->

<div class="service-card"

     data-category="repair">

    <div class="service-image">

        <img src="${pageContext.request.contextPath}/images/engine-tuneup.jpg">

        <span class="service-tag">

            💎 Premium

        </span>

    </div>

    <div class="service-content">

        <div class="service-rating">

            ⭐⭐⭐⭐⭐

            <span>5.0</span>

        </div>

        <h3>

            Engine Tune-Up

        </h3>

        <p>

            Professional engine tuning for better mileage,
            smoother performance and maximum power delivery.

        </p>

        <ul class="service-features">

            <li><i class="fa-solid fa-check"></i> Engine Diagnosis</li>

            <li><i class="fa-solid fa-check"></i> Spark Plug Check</li>

            <li><i class="fa-solid fa-check"></i> Fuel System Cleaning</li>

            <li><i class="fa-solid fa-check"></i> Performance Optimization</li>

        </ul>

        <div class="service-bottom">

            <div>

                <h4>₹1499</h4>

                <span>90 Minutes</span>

            </div>

            <a href="${pageContext.request.contextPath}/bookService?service=Engine Tune-Up"

               class="book-btn">

                Book Now

            </a>

        </div>

    </div>

</div>





<!--==============================
        GENERAL INSPECTION
===============================-->

<div class="service-card"

     data-category="inspection">

    <div class="service-image">

        <img src="${pageContext.request.contextPath}/images/inspection.jpg">

        <span class="service-tag">

            🛡 Recommended

        </span>

    </div>

    <div class="service-content">

        <div class="service-rating">

            ⭐⭐⭐⭐⭐

            <span>4.9</span>

        </div>

        <h3>

            General Inspection

        </h3>

        <p>

            A complete 30-point inspection covering tyres,
            suspension, brakes, lights, engine and safety systems.

        </p>

        <ul class="service-features">

            <li><i class="fa-solid fa-check"></i> 30 Point Check</li>

            <li><i class="fa-solid fa-check"></i> Tyre Inspection</li>

            <li><i class="fa-solid fa-check"></i> Electrical Check</li>

            <li><i class="fa-solid fa-check"></i> Safety Report</li>

        </ul>

        <div class="service-bottom">

            <div>

                <h4>₹499</h4>

                <span>40 Minutes</span>

            </div>

            <a href="${pageContext.request.contextPath}/bookService?service=General Inspection"

               class="book-btn">

                Book Now

            </a>

        </div>

    </div>

</div>

    </div>

</section>
<!--====================================
        WHY CHOOSE RIDECARE
=====================================-->

<section class="why-section">

    <div class="section-title">

        <span>

            Why Choose Us

        </span>

        <h2>

            Experience Premium Bike Care

        </h2>

        <p>

            We combine expert mechanics, genuine spare parts and cutting-edge
            technology to keep your motorcycle performing at its best.

        </p>

    </div>

    <div class="why-grid">

        <div class="why-card">

            <i class="fa-solid fa-shield-halved"></i>

            <h3>

                Genuine Parts

            </h3>

            <p>

                Only original OEM spare parts with warranty and guaranteed quality.

            </p>

        </div>



        <div class="why-card">

            <i class="fa-solid fa-user-gear"></i>

            <h3>

                Certified Mechanics

            </h3>

            <p>

                Highly trained professionals with years of servicing experience.

            </p>

        </div>



        <div class="why-card">

            <i class="fa-solid fa-truck-fast"></i>

            <h3>

                Pickup & Drop

            </h3>

            <p>

                Convenient doorstep pickup and delivery for your motorcycle.

            </p>

        </div>



        <div class="why-card">

            <i class="fa-solid fa-award"></i>

            <h3>

                Service Warranty

            </h3>

            <p>

                Every premium service comes with workmanship warranty.

            </p>

        </div>



        <div class="why-card">

            <i class="fa-solid fa-indian-rupee-sign"></i>

            <h3>

                Transparent Pricing

            </h3>

            <p>

                No hidden charges. Pay only for the services you choose.

            </p>

        </div>



        <div class="why-card">

            <i class="fa-solid fa-clock"></i>

            <h3>

                Quick Delivery

            </h3>

            <p>

                Same-day delivery available for selected maintenance services.

            </p>

        </div>

    </div>

</section>




<!--====================================
        SERVICE PROCESS
=====================================-->

<section class="process-section">

    <div class="section-title">

        <span>

            Our Process

        </span>

        <h2>

            Simple 6-Step Service Journey

        </h2>

    </div>

    <div class="process-container">

        <div class="process-card">

            <div class="step">

                01

            </div>

            <i class="fa-solid fa-calendar-check"></i>

            <h3>

                Book Service

            </h3>

        </div>



        <div class="process-card">

            <div class="step">

                02

            </div>

            <i class="fa-solid fa-motorcycle"></i>

            <h3>

                Pickup

            </h3>

        </div>



        <div class="process-card">

            <div class="step">

                03

            </div>

            <i class="fa-solid fa-magnifying-glass"></i>

            <h3>

                Inspection

            </h3>

        </div>



        <div class="process-card">

            <div class="step">

                04

            </div>

            <i class="fa-solid fa-screwdriver-wrench"></i>

            <h3>

                Service

            </h3>

        </div>



        <div class="process-card">

            <div class="step">

                05

            </div>

            <i class="fa-solid fa-circle-check"></i>

            <h3>

                Quality Check

            </h3>

        </div>



        <div class="process-card">

            <div class="step">

                06

            </div>

            <i class="fa-solid fa-truck"></i>

            <h3>

                Delivery

            </h3>

        </div>

    </div>

</section>
<!--====================================
        FEATURED MECHANICS
=====================================-->

<section class="mechanics-section">

    <div class="section-title">

        <span>

            Our Experts

        </span>

        <h2>

            Meet Our Certified Mechanics

        </h2>

        <p>

            Experienced professionals dedicated to delivering
            world-class bike servicing.

        </p>

    </div>

    <div class="mechanics-grid">

        <!-- Mechanic 1 -->

        <div class="mechanic-card">

            <img src="${pageContext.request.contextPath}/images/mechanic1.jpg">

            <div class="mechanic-content">

                <h3>

                    Rajesh Kumar

                </h3>

                <span class="designation">

                    Senior Bike Technician

                </span>

                <div class="rating">

                    ⭐⭐⭐⭐⭐

                    <span>4.9</span>

                </div>

                <ul>

                    <li>

                        <i class="fa-solid fa-check"></i>

                        10+ Years Experience

                    </li>

                    <li>

                        <i class="fa-solid fa-check"></i>

                        Engine Specialist

                    </li>

                    <li>

                        <i class="fa-solid fa-check"></i>

                        Available Today

                    </li>

                </ul>

            </div>

        </div>





        <!-- Mechanic 2 -->

        <div class="mechanic-card">

            <img src="${pageContext.request.contextPath}/images/mechanic2.jpeg">

            <div class="mechanic-content">

                <h3>

                    Aman Sharma

                </h3>

                <span class="designation">

                    Suspension Expert

                </span>

                <div class="rating">

                    ⭐⭐⭐⭐⭐

                    <span>4.8</span>

                </div>

                <ul>

                    <li>

                        <i class="fa-solid fa-check"></i>

                        8+ Years Experience

                    </li>

                    <li>

                        <i class="fa-solid fa-check"></i>

                        Brake Specialist

                    </li>

                    <li>

                        <i class="fa-solid fa-check"></i>

                        Pickup Team Lead

                    </li>

                </ul>

            </div>

        </div>





        <!-- Mechanic 3 -->

        <div class="mechanic-card">

            <img src="${pageContext.request.contextPath}/images/mechanic3.jpeg">

            <div class="mechanic-content">

                <h3>

                    Vivek Singh

                </h3>

                <span class="designation">

                    Electrical Technician

                </span>

                <div class="rating">

                    ⭐⭐⭐⭐⭐

                    <span>5.0</span>

                </div>

                <ul>

                    <li>

                        <i class="fa-solid fa-check"></i>

                        Electrical Expert

                    </li>

                    <li>

                        <i class="fa-solid fa-check"></i>

                        Battery Specialist

                    </li>

                    <li>

                        <i class="fa-solid fa-check"></i>

                        Available Now

                    </li>

                </ul>

            </div>

        </div>

    </div>

</section>
<!--====================================
        CUSTOMER REVIEWS
=====================================-->

<section class="reviews-section">

    <div class="section-title">

        <span>

            Testimonials

        </span>

        <h2>

            What Our Customers Say

        </h2>

        <p>

            Trusted by thousands of happy riders across the city.

        </p>

    </div>

    <div class="reviews-grid">

        <!-- Review 1 -->

        <div class="review-card">

            <img src="${pageContext.request.contextPath}/images/customer1.png"
                 class="customer-img">

            <h3>

                Rahul Mehta

            </h3>

            <span>

                Royal Enfield Classic 350

            </span>

            <div class="stars">

                ⭐⭐⭐⭐⭐

            </div>

            <p>

                "Excellent pickup service and genuine spare parts.
                My bike feels brand new after every service."

            </p>

        </div>





        <!-- Review 2 -->

        <div class="review-card">

            <img src="${pageContext.request.contextPath}/images/customer2.png"
                 class="customer-img">

            <h3>

                Priya Sharma

            </h3>

            <span>

                Yamaha R15 V4

            </span>

            <div class="stars">

                ⭐⭐⭐⭐⭐

            </div>

            <p>

                "Professional mechanics, transparent pricing and
                timely delivery. Highly recommended."

            </p>

        </div>





        <!-- Review 3 -->

        <div class="review-card">

            <img src="${pageContext.request.contextPath}/images/customer3.png"
                 class="customer-img">

            <h3>

                Arjun Verma

            </h3>

            <span>

                KTM Duke 390

            </span>

            <div class="stars">

                ⭐⭐⭐⭐⭐

            </div>

            <p>

                "RideCarePro is the only service center I trust.
                Amazing quality and friendly staff."

            </p>

        </div>

    </div>

</section>




<!--====================================
            FAQ SECTION
=====================================-->

<section class="faq-section">

    <div class="section-title">

        <span>

            FAQs

        </span>

        <h2>

            Frequently Asked Questions

        </h2>

    </div>

    <div class="faq-container">

        <div class="faq-item">

            <h3>

                Do you provide doorstep pickup?

            </h3>

            <p>

                Yes. Pickup and drop facilities are available for all premium services.

            </p>

        </div>

        <div class="faq-item">

            <h3>

                Are genuine spare parts used?

            </h3>

            <p>

                Absolutely. We use only genuine OEM spare parts for servicing.

            </p>

        </div>

        <div class="faq-item">

            <h3>

                How long does a complete service take?

            </h3>

            <p>

                Usually between 2 to 4 hours depending on the bike and service package.

            </p>

        </div>

        <div class="faq-item">

            <h3>

                Can I book online?

            </h3>

            <p>

                Yes. Simply choose a service and click "Book Now" to schedule your appointment.

            </p>

        </div>

    </div>

</section>
<!--====================================
        CALL TO ACTION
=====================================-->

<section class="cta-section">

    <div class="cta-content">

        <h2>

            Ready To Give Your Bike
            The Care It Deserves?

        </h2>

        <p>

            Book your premium bike service today and experience
            professional maintenance from certified mechanics.

        </p>

        <a href="${pageContext.request.contextPath}/bookService"

           class="cta-btn">

            <i class="fa-solid fa-calendar-check"></i>

            Book Service Now

        </a>

    </div>

</section>





<!--====================================
            FOOTER
=====================================-->

<footer class="footer">

    <div class="footer-container">

        <div class="footer-box">

            <h3>

                RideCarePro

            </h3>

            <p>

                Your trusted destination for premium bike servicing,
                genuine spare parts and professional maintenance.

            </p>

        </div>





        <div class="footer-box">

            <h3>

                Quick Links

            </h3>

            <a href="${pageContext.request.contextPath}/customer/dashboard">

                Dashboard

            </a>

            <a href="${pageContext.request.contextPath}/customer/profile">

                Profile

            </a>

            <a href="${pageContext.request.contextPath}/customer/bookingHistory">

                Booking History

            </a>

            <a href="${pageContext.request.contextPath}/customer/logout">

                Logout

            </a>

        </div>





        <div class="footer-box">

            <h3>

                Contact

            </h3>

            <p>

                <i class="fa-solid fa-location-dot"></i>

                RideCare Service Center

            </p>

            <p>

                <i class="fa-solid fa-phone"></i>

                +91 9876543210

            </p>

            <p>

                <i class="fa-solid fa-envelope"></i>

                support@ridecarepro.com

            </p>

        </div>





        <div class="footer-box">

            <h3>

                Follow Us

            </h3>

            <div class="social-links">

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

                    <i class="fab fa-youtube"></i>

                </a>

            </div>

        </div>

    </div>





    <div class="footer-bottom">

        © 2026 RideCarePro |
        Premium Bike Service Management System |
        All Rights Reserved.

    </div>

</footer>





<script src="${pageContext.request.contextPath}/js/customerServices.js"></script>

</body>

</html>