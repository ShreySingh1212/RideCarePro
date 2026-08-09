<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>RideCare Pro | Premium Bike Service</title>

<!-- Google Fonts -->

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<!-- Bootstrap -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

<!-- CSS -->

<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/variables.css">

<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/base.css">

<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/components.css">

<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/animations.css">

<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/style.css">



<link rel="stylesheet"
      href="${pageContext.request.contextPath}/css/homepage.css">

<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/responsive.css">

</head>

<body>
<nav class="navbar navbar-expand-lg fixed-top custom-navbar">

    <div class="container">

        <a class="navbar-brand d-flex align-items-center" href="#home">

            <img src="${pageContext.request.contextPath}/images/logo-white.png"
                 alt="RideCarePro Logo"
                 class="navbar-logo">

            <div class="brand-text">

                <span class="ride">Ride</span>
                <span class="care">Care</span>
                <span class="pro">Pro</span>

            </div>

        </a>

        <button class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#menu">

            <i class="fa-solid fa-bars"></i>

        </button>

        <div class="collapse navbar-collapse justify-content-between"
             id="menu">

            <ul class="navbar-nav mx-auto">

                <li class="nav-item">
                    <a class="nav-link active" href="#home">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#about">About</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#services">Services</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#gallery">Gallery</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#contact">Contact</a>
                </li>

            </ul>

            <div class="nav-actions">

                <a href="${pageContext.request.contextPath}/login"
                   class="btn-outline nav-btn">
                    Login
                </a>

                <a href="signup"
                   class="btn-primary nav-btn">
                    Sign Up
                </a>

            </div>

        </div>

    </div>

</nav>


<section class="hero">

    <div class="overlay"></div>

    <div class="container">

        <div class="row align-items-center hero-row">

            <div class="col-lg-8 col-xl-7 hero-text">

                <span class="hero-badge">
                    <i class="fa-solid fa-motorcycle"></i>
                    India's Trusted Bike Service Platform
                </span>

                <h5>WELCOME TO RIDECARE PRO</h5>

                <h1>
                    KEEP YOUR<br>
                    BIKE RUNNING<br>
                    LIKE NEW
                </h1>

                <p>
                    Premium bike servicing with certified mechanics,
                    genuine spare parts, doorstep pickup & delivery—
                    keeping your ride in peak condition.
                </p>

                <div class="hero-buttons">

                    <a href="bookService" class="btn hero-btn">
                        <i class="fa-solid fa-calendar-check"></i>
                        Book Service
                    </a>

                    <a href="#services" class="btn hero-btn2">
                        <i class="fa-solid fa-arrow-down"></i>
                        Explore Services
                    </a>

                </div>

            </div>

        </div>

    </div>

</section>

<!--=========================================
                ABOUT SECTION
==========================================-->

<section class="about-section" id="about">

    <div class="container">

        <div class="row align-items-center">

            <!-- Left Image -->

            <div class="col-lg-6">

                <div class="about-image">

                    <img src="images/about-bike.jpg"
                         class="img-fluid"
                         alt="Bike Workshop">

                </div>

            </div>

            <!-- Right Content -->

            <div class="col-lg-6">

                <span class="section-tag">
                    ABOUT RIDECARE PRO
                </span>

                <h2>
                    WE DON'T JUST
                    SERVICE BIKES,
                    WE RESTORE
                    PERFORMANCE.
                </h2>

                <p>

                    RideCare Pro provides premium motorcycle servicing,
                    maintenance and repair solutions with certified mechanics,
                    genuine spare parts and advanced diagnostics.
                    From routine servicing to complete engine care,
                    we keep your ride performing like new.

                </p>

                <div class="about-features">

                    <div class="feature-item">

                        <i class="fa-solid fa-circle-check"></i>

                        Certified Mechanics

                    </div>

                    <div class="feature-item">

                        <i class="fa-solid fa-circle-check"></i>

                        Genuine Spare Parts

                    </div>

                    <div class="feature-item">

                        <i class="fa-solid fa-circle-check"></i>

                        Doorstep Pickup

                    </div>

                    <div class="feature-item">

                        <i class="fa-solid fa-circle-check"></i>

                        Same Day Delivery

                    </div>

                </div>

                <a href="about" class="btn about-btn">

                    Learn More

                </a>

            </div>

        </div>

    </div>

</section>


<!-- ======================================================
                    SERVICES SECTION
====================================================== -->

<section class="services-section" id="services">

    <div class="service-overlay"></div>

    <div class="container">

        <div class="text-center service-heading mb-5">

    <div class="section-badge">
        <i class="fa-solid fa-screwdriver-wrench"></i>
        OUR SERVICES
    </div>

    <h2 class="section-title">
        Complete Bike Care
        <span>Under One Roof</span>
    </h2>

    <p>
        Premium motorcycle servicing, maintenance and repairs performed by
        certified mechanics using genuine parts.
    </p>

</div>

        <div class="row g-4">

            <!-- Card 1 -->

            <div class="col-lg-4 col-md-6">

                <div class="service-card">

                    <div class="service-icon">

                        <i class="fa-solid fa-gears"></i>

                    </div>

                    <h4>Engine Repair</h4>

                    <p>

                        Complete engine diagnostics,
                        repair and tuning for maximum
                        performance.

                    </p>

                    <a href="${pageContext.request.contextPath}/login">

                       <span>Book Now</span>
<i class="fa-solid fa-arrow-right"></i>

                    </a>

                </div>

            </div>

            <!-- Card 2 -->

            <div class="col-lg-4 col-md-6">

                <div class="service-card">

                    <div class="service-icon">

                        <i class="fa-solid fa-oil-can"></i>

                    </div>

                    <h4>Periodic Service</h4>

                    <p>

                        Regular servicing with
                        genuine engine oil,
                        filters and inspection.

                    </p>

                    <a href="${pageContext.request.contextPath}/login">

                        <span>Book Now</span>
<i class="fa-solid fa-arrow-right"></i>

                    </a>

                </div>

            </div>

            <!-- Card 3 -->

            <div class="col-lg-4 col-md-6">

                <div class="service-card">

                    <div class="service-icon">

                        <i class="fa-solid fa-circle-stop"></i>

                    </div>

                    <h4>Brake Service</h4>

                    <p>

                        Brake inspection,
                        replacement and
                        servicing.

                    </p>

                    <a href="${pageContext.request.contextPath}/login">

                        <span>Book Now</span>
<i class="fa-solid fa-arrow-right"></i>

                    </a>

                </div>

            </div>

            <!-- Card 4 -->

            <div class="col-lg-4 col-md-6">

                <div class="service-card">

                    <div class="service-icon">

                        <i class="fa-solid fa-soap"></i>

                    </div>

                    <h4>Bike Wash</h4>

                    <p>

                        Premium washing,
                        detailing and ceramic
                        cleaning.

                    </p>

                    <a href="${pageContext.request.contextPath}/login">

                        <span>Book Now</span>
<i class="fa-solid fa-arrow-right"></i>

                    </a>

                </div>

            </div>

            <!-- Card 5 -->

            <div class="col-lg-4 col-md-6">

                <div class="service-card">

                    <div class="service-icon">

                        <i class="fa-solid fa-car-battery"></i>

                    </div>

                    <h4>Battery Replacement</h4>

                    <p>

                        Battery testing,
                        charging and
                        replacement.

                    </p>

                    <a href="${pageContext.request.contextPath}/login">

                        <span>Book Now</span>
<i class="fa-solid fa-arrow-right"></i>

                    </a>

                </div>

            </div>

            <!-- Card 6 -->

            <div class="col-lg-4 col-md-6">

                <div class="service-card">

                    <div class="service-icon">

                        <i class="fa-solid fa-gauge-high"></i>

                    </div>

                    <h4>Tyre Services</h4>

                    <p>

                        Tyre replacement,
                        balancing and
                        alignment.

                    </p>

                    <a href="${pageContext.request.contextPath}/login">

                        <span>Book Now</span>
<i class="fa-solid fa-arrow-right"></i>

                    </a>

                </div>

            </div>

        </div>

    </div>
    <div class="services-footer">

    <p>
        Need a custom repair service?
    </p>
    

    <a href="#experts" class="services-btn">
    Contact Our Experts
</a>

</div>

</section> 

<!--====================================================
                WHY CHOOSE US
=====================================================-->

<section class="why-section" id="why">



    <div class="container">
    
    

        <!-- Heading -->

        <div class="text-center why-heading">

            <div class="section-badge">
                <i class="fa-solid fa-shield-halved"></i>
                WHY CHOOSE US
            </div>

            <h2 class="section-title">

            Why Riders<span>Choose RideCarePro</span>

</h2>

            <p>

                Every motorcycle deserves expert care.
                From certified mechanics to genuine spare
                parts, we ensure every ride is safer,
                smoother and more reliable.

            </p>

        </div>

        <!-- Premium Image -->

        <div class="why-image-wrapper reveal">

    <div class="why-image-overlay"></div>

            <img src="images/why-bike.jpg"
                 alt="Mechanic Working"
                 class="img-fluid why-image">

            <div class="experience-badge">

    <div class="stars">
        ★★★★★
    </div>

    <h2>12+</h2>

    <span>Years of Trust</span>

</div>

        </div>

        <!-- Features -->

        <div class="row g-4 mt-5">

            <!-- Card 1 -->

            <div class="col-lg-4 col-md-6">

                <div class="why-card reveal">
                
                <span class="why-number">

01

</span>

                    <div class="why-icon">
                        <i class="fa-solid fa-user-gear"></i>
                    </div>

                    <h4>Certified Mechanics</h4>
                    <div class="accent-line"></div>

                    <p>
                        Highly trained professionals with
                        years of experience servicing every
                        motorcycle brand.
                    </p>

                </div>

            </div>

            <!-- Card 2 -->

            <div class="col-lg-4 col-md-6">

                <div class="why-card reveal">
                <span class="why-number">

02

</span>

                    <div class="why-icon">
                        <i class="fa-solid fa-shield"></i>
                    </div>

                    <h4>Genuine Parts</h4>
                    <div class="accent-line"></div>

                    <p>
                        We only use OEM-quality spare parts
                        to maximize your bike's life and
                        performance.
                    </p>

                </div>

            </div>

            <!-- Card 3 -->

            <div class="col-lg-4 col-md-6">

                <div class="why-card reveal">
                <span class="why-number">

03

</span>

                    <div class="why-icon">
                        <i class="fa-solid fa-bolt"></i>
                    </div>

                    <h4>Fast Turnaround</h4>
                    <div class="accent-line"></div>

                    <p>
                        Efficient service process that saves
                        your valuable time without
                        compromising quality.
                    </p>

                </div>

            </div>

            <!-- Card 4 -->

            <div class="col-lg-4 col-md-6">

                <div class="why-card reveal">
                <span class="why-number">

04

</span>

                    <div class="why-icon">
                        <i class="fa-solid fa-truck"></i>
                    </div>

                    <h4>Pickup & Drop</h4>
                    <div class="accent-line"></div>

                    <p>
                        Convenient doorstep pickup and
                        delivery for hassle-free servicing.
                    </p>

                </div>

            </div>

            <!-- Card 5 -->

            <div class="col-lg-4 col-md-6">

                <div class="why-card reveal">
                <span class="why-number">

05

</span>

                    <div class="why-icon">
                        <i class="fa-solid fa-indian-rupee-sign"></i>
                    </div>

                    <h4>Transparent Pricing</h4>
                    <div class="accent-line"></div>

                    <p>
                        Honest estimates with no hidden
                        charges or unnecessary repairs.
                    </p>

                </div>

            </div>

            <!-- Card 6 -->

            <div class="col-lg-4 col-md-6">

                <div class="why-card reveal">
                <span class="why-number">

06

</span>

                    <div class="why-icon">
                        <i class="fa-solid fa-award"></i>
                    </div>

                    <h4>Service Warranty</h4>
                    <div class="accent-line"></div>

                    <p>
                        Every repair is backed by our
                        workmanship warranty for complete
                        peace of mind.
                    </p>

                </div>

            </div>

        </div>

    </div>

</section>
<!--====================================================
                    STATISTICS
=====================================================-->

<section class="stats-section" id="statistics">

    <div class="container">

        <!-- Heading -->

        <div class="text-center stats-heading">

            <div class="section-badge">
                <i class="fa-solid fa-chart-line"></i>
                OUR ACHIEVEMENTS
            </div>

            <h2 class="section-title">
                Trusted By <span>Thousands of Riders</span>
            </h2>

            <p>
                Our commitment to quality service, customer satisfaction,
                and expert workmanship has earned the trust of riders
                across the city.
            </p>

        </div>

        <!-- Statistics Cards -->

        <div class="row g-4 mt-4">

            <!-- Card 1 -->

            <div class="col-lg-3 col-md-6">

                <div class="stat-card reveal">

                    <div class="stat-icon">
                        <i class="fa-solid fa-motorcycle"></i>
                    </div>

                    <h2 class="counter" data-target="25000">0</h2>

                    <h4>Bikes Serviced</h4>

                    <span>Since 2013</span>

                </div>

            </div>

            <!-- Card 2 -->

            <div class="col-lg-3 col-md-6">

                <div class="stat-card reveal">

                    <div class="stat-icon">
                        <i class="fa-solid fa-face-smile"></i>
                    </div>

                    <h2 class="counter" data-target="18000">0</h2>

                    <h4>Happy Riders</h4>

                    <span>98% Satisfaction</span>

                </div>

            </div>

            <!-- Card 3 -->

            <div class="col-lg-3 col-md-6">

                <div class="stat-card reveal">

                    <div class="stat-icon">
                        <i class="fa-solid fa-star"></i>
                    </div>

                    <h2>4.9★</h2>

                    <h4>Customer Rating</h4>

                    <span>Google Reviews</span>

                </div>

            </div>

            <!-- Card 4 -->

            <div class="col-lg-3 col-md-6">

                <div class="stat-card reveal">

                    <div class="stat-icon">
                        <i class="fa-solid fa-user-gear"></i>
                    </div>

                    <h2 class="counter" data-target="120">0</h2>

                    <h4>Expert Mechanics</h4>

                    <span>Certified Team</span>

                </div>

            </div>

        </div>

    </div>

</section>
<!--=========================================
            GALLERY SECTION
==========================================-->

<section class="gallery-section" id="gallery">

    <div class="container">

        <div class="text-center gallery-heading reveal">

            <div class="section-badge">
                <i class="fa-solid fa-images"></i>
                OUR GALLERY
            </div>

            <h2 class="section-title">
    Our <span>Finest Work</span>
</h2>

<p>
Explore some of our best motorcycle repairs, restorations, maintenance services,
and workshop moments that reflect our commitment to quality.
</p>

        </div>

        <div class="gallery-grid mt-5">

            <!-- Image 1 -->
            <div class="gallery-item large reveal"
     data-image="${pageContext.request.contextPath}/images/gallery1.jpg">

    <img src="${pageContext.request.contextPath}/images/gallery1.jpg"
         alt="Workshop">

    <div class="gallery-overlay">

        <div class="gallery-icon">
            <i class="fa-solid fa-magnifying-glass-plus"></i>
        </div>

        <h4>Professional Workshop</h4>

        <p>Modern Equipment & Certified Mechanics</p>

    </div>

</div>

            <!-- Image 2 -->
           <div class="gallery-item reveal"
     data-image="${pageContext.request.contextPath}/images/gallery2.jpg">

    <img src="${pageContext.request.contextPath}/images/gallery2.jpg"
         alt="Workshop">

    <div class="gallery-overlay">

        <div class="gallery-icon">
            <i class="fa-solid fa-magnifying-glass-plus"></i>
        </div>

        <h4>Engine Diagnostics</h4>

        <p>Advanced Diagnostic Tools</p>

    </div>

</div>

            <!-- Image 3 -->
            <div class="gallery-item reveal"
     data-image="${pageContext.request.contextPath}/images/gallery3.jpg">

    <img src="${pageContext.request.contextPath}/images/gallery3.jpg"
         alt="Workshop">

    <div class="gallery-overlay">

        <div class="gallery-icon">
            <i class="fa-solid fa-magnifying-glass-plus"></i>
        </div>

        <h4>Premium Service</h4>

        <p>Quality Repairs Every Time</p>

    </div>

</div>


            <!-- Image 4 -->
            <div class="gallery-item large reveal"
     data-image="${pageContext.request.contextPath}/images/gallery4.jpg">

    <img src="${pageContext.request.contextPath}/images/gallery4.jpg"
         alt="Workshop">

    <div class="gallery-overlay">

        <div class="gallery-icon">
            <i class="fa-solid fa-magnifying-glass-plus"></i>
        </div>

        <h4>Customer Satisfaction</h4>

        <p>Trusted By Thousands Of Riders</p>

    </div>

</div>

            </div>

        </div>

    

</section>
<!--====================================================
                EXPERT MECHANICS
=====================================================-->

<section class="mechanics-section" id="experts">

    <div class="container">

        <!-- Heading -->

        <div class="text-center experts-heading">

            <div class="section-badge">
                <i class="fa-solid fa-users-gear"></i>
                OUR EXPERT TEAM
            </div>

            <h2 class="section-title">
                Meet The <span>Experts Behind Every Ride</span>
            </h2>

            <p>
                Our certified professionals bring years of experience,
                precision, and passion to every motorcycle that enters
                our workshop.
            </p>

        </div>

        <div class="row justify-content-center g-4 mt-4">

            <!-- Lead Technician -->

            <div class="col-lg-4 col-md-6">

                <div class="expert-card featured reveal">

                    <div class="expert-badge">
                        Lead Technician
                    </div>

                    <div class="expert-image">

                        <img src="images/mechanic1.png"
                             alt="Lead Mechanic">

                    </div>

                    <h3>Shiv Mishra</h3>

                    <h5>Master Technician</h5>

                    <div class="expert-exp">

                        <i class="fa-solid fa-award"></i>

                        12+ Years Experience

                    </div>

                    <div class="expert-stars">
    ★★★★★
</div>

<div class="expert-skills">

    <span>Engine Repair</span>

    <span>Diagnostics</span>

    <span>Performance Tuning</span>

</div>

                </div>

            </div>

            <!-- Expert 2 -->

            <div class="col-lg-4 col-md-6">

                <div class="expert-card reveal">

                    <div class="expert-image">

                        <img src="images/mechanic2.jpeg"
                             alt="Mechanic">

                    </div>

                    <h3>Shubh Gupta</h3>

                    <h5>Engine Specialist</h5>

                    <div class="expert-exp">

                        <i class="fa-solid fa-screwdriver-wrench"></i>

                        10+ Years Experience

                    </div>

                    <div class="expert-stars">
    ★★★★★
</div>

<div class="expert-skills">

    <span>Paint Work</span>

    <span>Dent Repair</span>

    <span>Bike Detailing</span>

</div>

                </div>

            </div>

            <!-- Expert 3 -->

            <div class="col-lg-4 col-md-6">

                <div class="expert-card reveal">

                    <div class="expert-image">

                        <img src="images/mechanic3.jpeg"
                             alt="Mechanic">

                    </div>

                    <h3>Shivaji Bhai Patel</h3>

                    <h5>Paint & Body Expert</h5>

                    <div class="expert-exp">

                        <i class="fa-solid fa-spray-can-sparkles"></i>

                        8+ Years Experience

                    </div>

                    <div class="expert-stars">
    ★★★★★
</div>

<div class="expert-skills">

    <span>Paint Work</span>

    <span>Dent Repair</span>

    <span>Bike Detailing</span>

</div>

                </div>

            </div>

        </div>

    </div>

</section>

<!--=========================================
            PREMIUM TESTIMONIALS
==========================================-->

<section class="testimonial-section">

    <div class="container">

        <!-- Heading -->

        <div class="section-heading text-center reveal">

            <span class="section-badge">
                <i class="fa-solid fa-star"></i>
                Customer Reviews
            </span>

            <h2 class="section-title">
                Trusted By <span>Passionate Riders</span>
            </h2>

            <p>
                Every motorcycle deserves expert care. Here's what our valued
                customers have to say after experiencing RideCarePro.
            </p>

        </div>

        <!-- Slider -->

        <div class="testimonial-slider">

            <div class="testimonial-track">

                <!-- CARD 1 -->

                <div class="testimonial-card active">

                    <div class="quote-icon">
                        <i class="fas fa-quote-right"></i>
                    </div>

                    <div class="stars">

                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>

                    </div>

                    <p class="testimonial-text">

                        RideCarePro restored my Royal Enfield like it was
                        brand new. Their professionalism, genuine spare
                        parts and timely delivery exceeded my expectations.

                    </p>

                    <div class="testimonial-user">

                        <div class="avatar">

                            <img src="${pageContext.request.contextPath}/images/customer1.png">

                        </div>

                        <div>

                            <h4>Rahul Sharma</h4>

                            <span>Royal Enfield Owner</span>

                        </div>

                    </div>

                </div>

                <!-- CARD 2 -->

                <div class="testimonial-card">

                    <div class="quote-icon">
                        <i class="fas fa-quote-right"></i>
                    </div>

                    <div class="stars">

                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>

                    </div>

                    <p class="testimonial-text">

                        Booking my bike service was effortless.
                        The mechanics explained everything clearly,
                        and my Yamaha rides smoother than ever.

                    </p>

                    <div class="testimonial-user">

                        <div class="avatar">

                            <img src="${pageContext.request.contextPath}/images/customer2.png">

                        </div>

                        <div>

                            <h4>Priya Verma</h4>

                            <span>Yamaha Rider</span>

                        </div>

                    </div>

                </div>

                <!-- CARD 3 -->

                <div class="testimonial-card">

                    <div class="quote-icon">
                        <i class="fas fa-quote-right"></i>
                    </div>

                    <div class="stars">

                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>

                    </div>

                    <p class="testimonial-text">

                        Excellent workmanship, fast turnaround
                        and outstanding customer support.
                        RideCarePro is now my trusted bike service partner.

                    </p>

                    <div class="testimonial-user">

                        <div class="avatar">

                            <img src="${pageContext.request.contextPath}/images/customer3.png">

                        </div>

                        <div>

                            <h4>Amit Singh</h4>

                            <span>KTM Duke Owner</span>

                        </div>

                    </div>

                </div>

            </div>

            <!-- Buttons -->

            <button class="testimonial-btn prev">

                <i class="fas fa-chevron-left"></i>

            </button>

            <button class="testimonial-btn next">

                <i class="fas fa-chevron-right"></i>

            </button>

            <!-- Dots -->

            <div class="testimonial-dots">

                <span class="dot active"></span>

                <span class="dot"></span>

                <span class="dot"></span>

            </div>

        </div>

    </div>

</section>
<!-- =====================================================
                    CONTACT SECTION
====================================================== -->

<section class="contact-section" id="contact">

    <div class="container">

        <!-- Heading -->

        <div class="section-heading text-center reveal">

            <span class="section-badge">
                <i class="fas fa-headset"></i>
                Contact RideCarePro
            </span>

            <h2 class="section-title">
                Ready To <span>Service Your Bike?</span>
            </h2>

            <p>
                Whether it's a routine service, emergency repair, or complete bike inspection,
                our certified mechanics are here to help.
            </p>

        </div>

        <div class="contact-wrapper">

            <!-- =========================================
                        LEFT SIDE
            ========================================== -->

            <div class="contact-info reveal">

                <div class="contact-card">

                    <div class="contact-icon">
                        <i class="fas fa-phone-alt"></i>
                    </div>

                    <div class="contact-text">

                        <h4>Call Us</h4>

                        <p>+91 98765 43210</p>

                    </div>

                </div>

                <div class="contact-card">

                    <div class="contact-icon">
                        <i class="fas fa-envelope"></i>
                    </div>

                    <div class="contact-text">

                        <h4>Email</h4>

                        <p>support@ridecarepro.com</p>

                    </div>

                </div>

                <div class="contact-card">

                    <div class="contact-icon">
                        <i class="fas fa-location-dot"></i>
                    </div>

                    <div class="contact-text">

                        <h4>Workshop</h4>

                        <p>Sector-62, Noida, Uttar Pradesh</p>

                    </div>

                </div>

                <div class="contact-card">

                    <div class="contact-icon">
                        <i class="fas fa-clock"></i>
                    </div>

                    <div class="contact-text">

                        <h4>Working Hours</h4>

                        <p>Monday - Saturday<br>9:00 AM - 8:00 PM</p>

                    </div>

                </div>

                <!-- SOCIAL -->

                <div class="contact-social">

                    <a href="#"><i class="fab fa-facebook-f"></i></a>

                    <a href="#"><i class="fab fa-instagram"></i></a>

                    <a href="#"><i class="fab fa-linkedin-in"></i></a>

                    <a href="#"><i class="fab fa-x-twitter"></i></a>

                </div>

            </div>

            <!-- =========================================
                        RIGHT SIDE
            ========================================== -->

            <div class="contact-form reveal">

                <form>

                    <div class="form-row">

                        <div class="input-box">

                            <input type="text" required>

                            <label>Full Name</label>

                        </div>

                        <div class="input-box">

                            <input type="email" required>

                            <label>Email Address</label>

                        </div>

                    </div>

                    <div class="form-row">

                        <div class="input-box">

                            <input type="tel" required>

                            <label>Phone Number</label>

                        </div>

                        <div class="input-box">

                            <input type="text" required>

                            <label>Bike Model</label>

                        </div>

                    </div>

                    <div class="input-box">

    <select required>

        <option value="" disabled selected>Select Service</option>

        <option>General Service</option>
        <option>Oil Change</option>
        <option>Engine Repair</option>
        <option>Brake Service</option>
        <option>Tyre Replacement</option>
        <option>Battery Replacement</option>
        <option>Accidental Repair</option>

    </select>

</div>

                    <div class="input-box textarea-box">

                        <textarea required></textarea>

                        <label>Your Message</label>

                    </div>

                    <button type="button"
        class="contact-btn"
        onclick="window.location.href='${pageContext.request.contextPath}/login'">

    Book Appointment

    <i class="fas fa-arrow-right"></i>

</button>

                </form>

            </div>

        </div>

    </div>

</section>

<!-- ===========================================================
                    THE MIND BEHIND RIDECAREPRO
============================================================ -->

<section class="developer-section" id="developer">

    <div class="developer-bg-circle circle-one"></div>
    <div class="developer-bg-circle circle-two"></div>

    <div class="container">

        <!-- Section Heading -->

        <div class="section-heading text-center reveal">

            <span class="section-badge">
                <i class="fas fa-code"></i>
                The Mind Behind RideCarePro
            </span>

            <h2 class="section-title">
                Crafted With <span>Passion</span>
            </h2>

            <p>
                Combining modern technologies, clean architecture and elegant
                user experiences to build premium web applications.
            </p>

        </div>

        <div class="developer-wrapper">

            <!-- ================= IMAGE ================= -->

            <div class="developer-left reveal">

                <div class="developer-photo-card">

                    <img src="${pageContext.request.contextPath}/images/developer.jpg"
                         alt="Shrey Pratap Singh">

                    <div class="developer-badge">

                        <i class="fas fa-laptop-code"></i>

                        Project Developer

                    </div>

                    <div class="developer-glow"></div>

                </div>

            </div>

            <!-- ================= CONTENT ================= -->

            <div class="developer-right reveal">

                <span class="developer-role">

                    JAVA • SPRING BOOT DEVELOPER

                </span>

                <h2>

                    Hi, I'm

                    <span>

                        Shrey Pratap Singh

                    </span>

                </h2>

                <h3 class="typing-text">

                    Java Developer

                </h3>

                <p class="developer-description">

                    I am a passionate Computer Science Engineering student
                    from Noida Institute of Engineering & Technology,
                    Greater Noida.

                    I specialize in Java, Spring Boot, JSP, MySQL and modern
                    responsive web development. My goal is to create
                    applications that are visually attractive, scalable and
                    easy to use.

                </p>

                <!-- Skill Chips -->

                <div class="developer-skills">

                    <span>Java</span>

                    <span>Spring Boot</span>

                    <span>Hibernate</span>

                    <span>JPA</span>

                    <span>Servlet</span>

                    <span>JSP</span>

                    <span>Bootstrap</span>

                    <span>HTML5</span>

                    <span>CSS3</span>

                    <span>JavaScript</span>

                    <span>MySQL</span>

                    <span>Git</span>

                    <span>REST API</span>

                </div>

                <!-- Achievement Cards -->

                <div class="developer-stats">

                    <div class="dev-stat">

                        <h3>10+</h3>

                        <p>Projects</p>

                    </div>

                    <div class="dev-stat">

                        <h3>12+</h3>

                        <p>Technologies</p>

                    </div>

                    <div class="dev-stat">

                        <h3>∞</h3>

                        <p>Learning</p>

                    </div>

                </div>

                <!-- Education -->

                <div class="developer-card">

                    <div class="icon">

                        <i class="fas fa-user-graduate"></i>

                    </div>

                    <div>

                        <h4>Education</h4>

                        <p>

                            B.Tech - Computer Science Engineering

                            <br>

                            Noida Institute of Engineering & Technology

                            <br>

                            Greater Noida

                        </p>

                    </div>

                </div>

                <!-- Project -->

                <div class="developer-card">

                    <div class="icon">

                        <i class="fas fa-motorcycle"></i>

                    </div>

                    <div>

                        <h4>RideCarePro</h4>

                        <p>

                            Premium Motorcycle Service Management System

                            built using Spring Boot, MySQL, Bootstrap,

                            JSP, Hibernate and JPA.

                        </p>

                    </div>

                </div>

                <!-- Quote -->

                <blockquote class="developer-quote">

                    <i class="fas fa-quote-left"></i>

                    Great software is built with clean code,
                    creative thinking and continuous learning.

                </blockquote>

                <!-- Buttons -->

                <div class="developer-buttons">

                    <a href="#home" class="project-btn">

                        <i class="fas fa-eye"></i>

                        View Project

                    </a>

                    <a href="#contact" class="contact-btn2">

                        <i class="fas fa-paper-plane"></i>

                        Contact Me

                    </a>

                </div>

                <!-- Social Links -->

                <div class="developer-social">

                    <a href="https://github.com/ShreySingh1212"
                       target="_blank"
                       title="GitHub">

                        <i class="fab fa-github"></i>

                    </a>

                    <a href="https://www.linkedin.com/in/shrey-singh-69b972388"
                       target="_blank"
                       title="LinkedIn">

                        <i class="fab fa-linkedin-in"></i>

                    </a>

                    <a href="mailto:shreysinghrajput02@gmail.com"
                       title="Email">

                        <i class="fas fa-envelope"></i>

                    </a>

                    <a href="tel:+918604768070"
                       title="Call">

                        <i class="fas fa-phone"></i>

                    </a>

                </div>

            </div>

        </div>

    </div>

</section>

<!--====================================================
                    PREMIUM FOOTER
=====================================================-->

<footer class="footer-section">

    <div class="footer-glow footer-glow-1"></div>
    <div class="footer-glow footer-glow-2"></div>

    <div class="container">

        <div class="footer-grid">

            <!-- ================= BRAND ================= -->

            <div class="footer-column footer-brand">

                <div class="footer-logo">

    <img src="${pageContext.request.contextPath}/images/logo-white.png"
         alt="RideCarePro">

</div>

    <div class="footer-logo-text">

        <h2>Ride Care Pro</h2>

        <p>Premium Motorcycle Service Platform</p>

    </div>



                <p>

                    RideCarePro is your trusted motorcycle service platform,
                    delivering premium maintenance, repairs, pickup & drop,
                    and a smooth online booking experience.

                </p>

                <div class="footer-features">

                    <div>

                        <i class="fas fa-check-circle"></i>

                        Trusted Service

                    </div>

                    <div>

                        <i class="fas fa-clock"></i>

                        Fast Booking

                    </div>

                    <div>

                        <i class="fas fa-shield-alt"></i>

                        Secure Platform

                    </div>

                </div>

            </div>

            <!-- ================= QUICK LINKS ================= -->

            <div class="footer-column">

                <h3>Quick Links</h3>

                <ul>

                    <li><a href="#home">Home</a></li>

                    <li><a href="#about">About</a></li>

                    <li><a href="#services">Services</a></li>

                    <li><a href="#gallery">Gallery</a></li>

                    <li><a href="#testimonials">Testimonials</a></li>

                    <li><a href="#contact">Contact</a></li>

                </ul>

            </div>

            <!-- ================= SERVICES ================= -->

            <div class="footer-column">

                <h3>Our Services</h3>

                <ul>

                    <li><a href="#">General Service</a></li>

                    <li><a href="#">Engine Repair</a></li>

                    <li><a href="#">Oil Change</a></li>

                    <li><a href="#">Bike Wash</a></li>

                    <li><a href="#">Pickup & Drop</a></li>

                    <li><a href="#">Emergency Support</a></li>

                </ul>

            </div>

            <!-- ================= CONTACT ================= -->

            <div class="footer-column">

                <h3>Contact</h3>

                <ul class="footer-contact">

                    <li>

                        <i class="fas fa-map-marker-alt"></i>

                        Greater Noida, Uttar Pradesh

                    </li>

                    <li>

                        <i class="fas fa-phone"></i>

                        <a href="tel:+918604768070">

                            +91 8604768070

                        </a>

                    </li>

                    <li>

                        <i class="fas fa-envelope"></i>

                        <a href="mailto:shreysinghrajput02@gmail.com">

                            shreysinghrajput02@gmail.com

                        </a>

                    </li>

                </ul>

            </div>

        </div>

        <!-- Divider -->

        <div class="footer-divider"></div>

        <!-- Bottom Footer -->

        <div class="footer-bottom">

            <div class="footer-social">

                <a href="https://github.com/ShreySingh1212"
                   target="_blank">

                    <i class="fab fa-github"></i>

                </a>

                <a href="https://www.linkedin.com/in/shrey-singh-69b972388"
                   target="_blank">

                    <i class="fab fa-linkedin-in"></i>

                </a>

                <a href="mailto:shreysinghrajput02@gmail.com">

                    <i class="fas fa-envelope"></i>

                </a>

            </div>

            <div class="footer-copy">

                © 2026 RideCarePro. All Rights Reserved.

                <br>

                Designed & Developed with

                <i class="fas fa-heart footer-heart"></i>

                by

                <span>

                    Shrey Pratap Singh

                </span>

            </div>

        </div>

    </div>

    <!-- Scroll To Top -->

    <button id="scrollTopBtn">

        <i class="fas fa-arrow-up"></i>

    </button>

</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script src="${pageContext.request.contextPath}/js/script.js"></script>

<script src="${pageContext.request.contextPath}/js/home.js"></script>

<div class="gallery-lightbox">

    <span class="close-lightbox">&times;</span>

    <img id="lightbox-img">

</div>
</body>

</html>