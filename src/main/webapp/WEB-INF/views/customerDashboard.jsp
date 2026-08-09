<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>RideCarePro | Customer Dashboard</title>

<!-- Google Font -->

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<!-- Dashboard CSS -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/dashboard.css">

</head>

<body>

	<div class="background-blur"></div>

	<!-- ===========================
        SIDEBAR
============================ -->

	<aside class="sidebar">

		<div class="logo">

			<i class="fa-solid fa-motorcycle"></i>

			<h2>RideCarePro</h2>

		</div>

		<div class="customer-card">

			<img class="profile-avatar-small"
     src="${not empty customer.profileImage ? customer.profileImage : 'https://ui-avatars.com/api/?name='.concat(customer.fullName).concat('&background=ff6b00&color=fff&size=96')}"
     alt="${customer.fullName}">

			<h3>${customer.fullName}</h3>

			<p>Welcome Back 👋</p>

		</div>

		<ul class="menu">

			<li class="active"><a
				href="${pageContext.request.contextPath}/customer/dashboard"> <i
					class="fa-solid fa-house"></i> Dashboard

			</a></li>

			<li><a href="${pageContext.request.contextPath}/bookService">

					<i class="fa-solid fa-screwdriver-wrench"></i> Book Service

			</a></li>

			<li><a
				href="${pageContext.request.contextPath}/customer/bookingHistory">

					<i class="fa-solid fa-clock-rotate-left"></i> Booking History

			</a></li>

			<li><a
				href="${pageContext.request.contextPath}/customer/profile"> <i
					class="fa-solid fa-user"></i> My Profile

			</a></li>

		</ul>

		<div class="logout-section">

			<a href="${pageContext.request.contextPath}/customer/logout"> <i
				class="fa-solid fa-right-from-bracket"></i> Logout

			</a>

		</div>

	</aside>

	<!-- ===========================
        MAIN CONTENT
============================ -->

	<div class="main-content">
		<div class="topbar">

			<button class="menu-toggle">

				<i class="fa-solid fa-bars"></i>

			</button>

			<div class="search-box">

				<i class="fa-solid fa-search"></i> <input type="text"
					placeholder="Search services, bookings...">

			</div>

			<div class="top-right">

				<div class="live-info">

					<h5 id="greeting">${greeting},${customer.fullName}</h5>

					<span id="liveClock"></span>

				</div>

				<div class="notification">

					<i class="fa-solid fa-bell"></i> <span class="notification-badge">

						${notificationCount} </span>

				</div>

				<div class="profile">

					<img class="profile-avatar-large"
     src="${not empty customer.profileImage ? customer.profileImage : 'https://ui-avatars.com/api/?name='.concat(customer.fullName).concat('&background=ff6b00&color=fff&size=128')}"
     alt="${customer.fullName}">

					<div>

						<h5>${customer.fullName}</h5>

						<small> RideCarePro Member </small>

					</div>

				</div>

			</div>

		</div>
		<section class="hero">

			<div class="hero-content">

				<h5>Welcome to RideCarePro</h5>

				<h1>Keep Your Bike Running Like New</h1>

				<p>Schedule professional motorcycle services, track your
					bookings, monitor your bike's health, and receive timely
					maintenance reminders—all in one place.</p>

				<div class="hero-buttons">

					<a href="${pageContext.request.contextPath}/bookService"
						class="book-btn"> Book Service </a> <a
						href="${pageContext.request.contextPath}/customer/bookingHistory"
						class="history-btn"> View History </a>

				</div>

			</div>



		</section>
		<!-- ===========================
        STATISTICS
============================ -->

		<section class="stats">

			<div class="stat-card">

				<div class="icon">
					<i class="fa-solid fa-calendar-check"></i>
				</div>

				<div class="stat-content">

					<h2 class="counter">${totalBookings}</h2>

					<p>Total Bookings</p>

					<div class="stat-growth">

						<i class="fa-solid fa-arrow-trend-up"></i> 12% This Month

					</div>

				</div>

			</div>

			<div class="stat-card">

				<div class="icon">
					<i class="fa-solid fa-hourglass-half"></i>
				</div>

				<div class="stat-content">

					<h2 class="counter">${pendingBookings}</h2>

					<p>Pending Services</p>

					<div class="stat-growth">

						<i class="fa-solid fa-clock"></i> Awaiting Service

					</div>

				</div>

			</div>

			<div class="stat-card">

				<div class="icon">
					<i class="fa-solid fa-circle-check"></i>
				</div>

				<div class="stat-content">

					<h2 class="counter">${completedBookings}</h2>

					<p>Completed</p>

					<div class="stat-growth">

						<i class="fa-solid fa-star"></i> Excellent Record

					</div>

				</div>

			</div>

			<div class="stat-card">

				<div class="icon">
					<i class="fa-solid fa-indian-rupee-sign"></i>
				</div>

				<div class="stat-content">

					<h2 class="counter">${totalSpent}</h2>

					<p>Total Spent</p>

					<div class="stat-growth">

						<i class="fa-solid fa-heart"></i> Trusted Customer

					</div>

				</div>

			</div>

		</section>
		<!-- ===========================
    FEATURED SERVICES
============================ -->

		<section>

			<div class="section-title">

				<h2>Featured Services</h2>

				<a href="${pageContext.request.contextPath}/customer/services"
					class="view-all-btn"> View All <i
					class="fa-solid fa-arrow-right"></i>
				</a>

			</div>

			<div class="services">

				<div class="service-card">

					<div class="service-image">

						<img
							src="${pageContext.request.contextPath}/images/oil-change.jpg">

						<div class="service-badge">Popular</div>

					</div>

					<div class="service-content">

						<h3>Premium Oil Change</h3>

						<p>Premium synthetic engine oil replacement with complete
							inspection.</p>

						<div class="rating">

							★★★★★ <span>4.9</span>

						</div>

						<div class="service-footer">

							<div class="price">₹999</div>

							<a href="${pageContext.request.contextPath}/bookService"
								class="book-service-btn"> Book Now </a>

						</div>

					</div>

				</div>

				<div class="service-card">

					<div class="service-image">

						<img src="${pageContext.request.contextPath}/images/wash.jpg">

						<div class="service-badge">Best Seller</div>

					</div>

					<div class="service-content">

						<h3>Bike Spa</h3>

						<p>Complete foam wash with polish and ceramic coating.</p>

						<div class="rating">

							★★★★★ <span>4.8</span>

						</div>

						<div class="service-footer">

							<div class="price">₹699</div>

							<a href="${pageContext.request.contextPath}/bookService"
								class="book-service-btn"> Book Now </a>

						</div>

					</div>

				</div>

				<div class="service-card">

					<div class="service-image">

						<img src="${pageContext.request.contextPath}/images/repair.jpg">

						<div class="service-badge">Recommended</div>

					</div>

					<div class="service-content">

						<h3>Complete Service</h3>

						<p>Full servicing including engine, brakes, chain and
							electrical inspection.</p>

						<div class="rating">

							★★★★★ <span>5.0</span>

						</div>

						<div class="service-footer">

							<div class="price">₹2499</div>

							<a href="${pageContext.request.contextPath}/bookService"
								class="book-service-btn"> Book Now </a>

						</div>

					</div>

				</div>

			</div>

		</section>
		<!-- ===========================
        QUICK ACTIONS
============================ -->

		<section class="quick-actions">

			<div class="section-title">

				<h2>Quick Actions</h2>

			</div>

			<div class="action-grid">

				<a href="${pageContext.request.contextPath}/bookService"
					class="action-card">

					<div class="action-icon">

						<i class="fa-solid fa-screwdriver-wrench"></i>

					</div>

					<h3>Book Service</h3>

					<p>Schedule a motorcycle service quickly.</p>

					<div class="action-arrow">

						<i class="fa-solid fa-arrow-right"></i>

					</div>

				</a> <a
					href="${pageContext.request.contextPath}/customer/bookingHistory"
					class="action-card">

					<div class="action-icon">

						<i class="fa-solid fa-clock-rotate-left"></i>

					</div>

					<h3>Booking History</h3>

					<p>View your previous bookings.</p>

					<div class="action-arrow">

						<i class="fa-solid fa-arrow-right"></i>

					</div>

				</a> <a href="${pageContext.request.contextPath}/customer/profile"
					class="action-card">

					<div class="action-icon">

						<i class="fa-solid fa-user"></i>

					</div>

					<h3>My Profile</h3>

					<p>Manage your personal details.</p>

					<div class="action-arrow">

						<i class="fa-solid fa-arrow-right"></i>

					</div>

				</a> <a href="${pageContext.request.contextPath}/notifications"
					class="action-card">

					<div class="action-icon">

						<i class="fa-solid fa-bell"></i>

					</div>

					<h3>Notifications</h3>

					<p>Check all service updates.</p>

					<div class="action-arrow">

						<i class="fa-solid fa-arrow-right"></i>

					</div>

				</a>

			</div>

		</section>
		<!-- ===========================
        UPCOMING SERVICE
============================ -->

		<section class="upcoming-service">

			<div class="section-title">

				<h2>Upcoming Service</h2>

			</div>

			<c:choose>

				<c:when test="${not empty upcomingBooking}">

					<div class="upcoming-card">

						<div class="upcoming-left">

							<span class="status-badge"> ${upcomingBooking.status} </span>

							<h2>${upcomingBooking.serviceName}</h2>

							<p>${upcomingBooking.bikeCompany}
								${upcomingBooking.bikeModel}</p>

							<div class="service-details">

								<div class="detail-box">

									<i class="fa-solid fa-calendar-days"></i>

									${upcomingBooking.pickupDate}

								</div>

								<div class="detail-box">

									<i class="fa-solid fa-clock"></i> ${upcomingBooking.pickupTime}

								</div>

								<div class="detail-box">

									<i class="fa-solid fa-location-dot"></i>

									${upcomingBooking.pickupAddress}

								</div>

							</div>

							<div class="upcoming-buttons">

								<a
									href="${pageContext.request.contextPath}/customer/bookingHistory"
									class="view-btn"> View Booking </a>

							</div>

						</div>

						<div class="upcoming-image">

							<img
								src="${pageContext.request.contextPath}/images/service-bike.png">

						</div>

					</div>

				</c:when>

				<c:otherwise>

					<div class="upcoming-card">

						<h2>No Upcoming Service</h2>

						<p>You don't have any pending bookings.</p>

					</div>

				</c:otherwise>

			</c:choose>

		</section>
		<!-- ===========================
        NOTIFICATION CENTER
============================ -->

		<section class="notifications">

			<div class="section-title">

				<h2>Notification Center</h2>

			</div>

			<div class="notification-list">

				<c:choose>

					<c:when test="${not empty notifications}">

						<c:forEach var="notification" items="${notifications}">

							<div class="notification-card">

								<div class="notification-icon">

									<i class="fa-solid fa-bell"></i>

								</div>

								<div class="notification-content">

									<p>${notification}</p>

								</div>

							</div>

						</c:forEach>

					</c:when>

					<c:otherwise>

						<div class="notification-card">

							<div class="notification-content">

								<p>No notifications available.</p>

							</div>

						</div>

					</c:otherwise>

				</c:choose>

			</div>

		</section>
		<!-- ===========================
        RECENT BOOKINGS
============================ -->

		<section class="booking-history">

			<div class="booking-header">

				<h2>Recent Bookings</h2>

				<div class="booking-search">

					<i class="fa-solid fa-search"></i> <input type="text"
						placeholder="Search booking">

				</div>

			</div>

			<div class="booking-table">

				<table>

					<thead>

						<tr>

							<th>ID</th>

							<th>Service</th>

							<th>Date</th>

							<th>Status</th>

							<th>Amount</th>

							<th>Action</th>

						</tr>

					</thead>

					<tbody>

						<c:forEach items="${recentBookings}" var="booking">

							<tr>

								<td>#${booking.bookingId}</td>

								<td>${booking.serviceName}</td>

								<td>${booking.pickupDate}</td>

								<td><span
									class="status
                        ${booking.status=='Completed'?'status-completed':
                        booking.status=='Pending'?'status-pending':
                        'status-cancelled'}">

										${booking.status} </span></td>

								<td>$999</td>

								<td><a
									href="${pageContext.request.contextPath}/booking/view/${booking.bookingId}"
									class="action-btn view-history-btn"> View </a></td>

							</tr>

						</c:forEach>

					</tbody>

				</table>

			</div>

		</section>
		<!-- ===========================
        BIKE HEALTH
============================ -->

		<section class="bike-health">

			<div class="section-title">

				<h2>Bike Health Monitor</h2>

			</div>

			<div class="health-card">

				<div class="health-header">

					<div>

						<h2>${bikeName}</h2>

						<p>Current Health Summary</p>

					</div>

					<div class="health-score">

						<h1>${healthScore}%</h1>

						<p>Overall Health</p>

					</div>

				</div>

				<div class="health-bars">

					<div class="health-item">

						<h4>

							<span>Engine</span> <span>95%</span>

						</h4>

						<div class="progress">

							<span style="width: 95%"></span>

						</div>

					</div>

					<div class="health-item">

						<h4>

							<span>Brakes</span> <span>88%</span>

						</h4>

						<div class="progress">

							<span style="width: 88%"></span>

						</div>

					</div>

					<div class="health-item">

						<h4>

							<span>Battery</span> <span>90%</span>

						</h4>

						<div class="progress">

							<span style="width: 90%"></span>

						</div>

					</div>

					<div class="health-item">

						<h4>

							<span>Tyres</span> <span>82%</span>

						</h4>

						<div class="progress">

							<span style="width: 82%"></span>

						</div>

					</div>

				</div>

				<div class="recommendation">

					<h3>

						<i class="fa-solid fa-lightbulb"></i> Recommendation

					</h3>

					<p>Your motorcycle is performing well. Schedule a routine
						maintenance service next month for the best riding experience.</p>

				</div>

			</div>

		</section>
		<!-- ===========================
        CUSTOMER REVIEWS
============================ -->

		<section class="reviews">

			<div class="section-title">

				<h2>Customer Reviews</h2>

			</div>

			<div class="review-grid">

				<div class="review-card">

					<div class="review-header">

						<img src="${pageContext.request.contextPath}/images/profile.png">

						<div>

							<h3>Rahul Sharma</h3>

							<span>Royal Enfield Owner</span>

						</div>

					</div>

					<div class="review-text">"Excellent service and friendly
						mechanics. My bike feels brand new."</div>

					<div class="review-footer">⭐⭐⭐⭐⭐</div>

				</div>

				<div class="review-card">

					<div class="review-header">

						<img src="${pageContext.request.contextPath}/images/profile.png">

						<div>

							<h3>Priya Verma</h3>

							<span>TVS Apache Owner</span>

						</div>

					</div>

					<div class="review-text">"Booking was easy and updates were
						provided throughout the service."</div>

					<div class="review-footer">⭐⭐⭐⭐⭐</div>

				</div>

				<div class="review-card">

					<div class="review-header">

						<img src="${pageContext.request.contextPath}/images/profile.png">

						<div>

							<h3>Aman Singh</h3>

							<span>KTM Duke Owner</span>

						</div>

					</div>

					<div class="review-text">"The Bike Health Monitor is a
						fantastic feature. Highly recommended."</div>

					<div class="review-footer">⭐⭐⭐⭐⭐</div>

				</div>

			</div>

		</section>
		<!-- ===========================
            FOOTER
============================ -->

		<footer class="footer">

			<div class="footer-grid">

				<!-- Company -->

				<div>

					<div class="footer-logo">

						<i class="fa-solid fa-motorcycle"></i>

						<div>

							<h3>RideCarePro</h3>

							<p>Premium Motorcycle Care</p>

						</div>

					</div>

					<p>RideCarePro provides reliable motorcycle servicing, online
						booking, experienced mechanics, real-time updates, and premium
						customer support.</p>

					<div class="social-icons">

						<a href="#"> <i class="fab fa-facebook-f"></i>

						</a> <a href="#"> <i class="fab fa-instagram"></i>

						</a> <a href="#"> <i class="fab fa-twitter"></i>

						</a> <a href="#"> <i class="fab fa-linkedin-in"></i>

						</a>

					</div>

				</div>

				<!-- Quick Links -->

				<div>

					<h3>Quick Links</h3>

					<ul>

						<li><a
							href="${pageContext.request.contextPath}/customer/dashboard">

								Dashboard </a></li>

						<li><a href="${pageContext.request.contextPath}/bookService">

								Book Service </a></li>

						<li><a href="${pageContext.request.contextPath}/customer/bookingHistory">

								Booking History </a></li>

						<li><a
							href="${pageContext.request.contextPath}/customer/profile">

								My Profile </a></li>

					</ul>

				</div>

				<!-- Services -->

				<div>

					<h3>Services</h3>

					<ul>

						<li>Oil Change</li>

						<li>Bike Wash</li>

						<li>Complete Service</li>

						<li>Brake Repair</li>

						<li>Battery Check</li>

					</ul>

				</div>

				<!-- Contact -->

				<div>

					<h3>Contact Us</h3>

					<div class="contact-item">

						<i class="fa-solid fa-location-dot"></i> <span> Greater
							Noida, Uttar Pradesh </span>

					</div>

					<div class="contact-item">

						<i class="fa-solid fa-phone"></i> <span> +91 9876543210 </span>

					</div>

					<div class="contact-item">

						<i class="fa-solid fa-envelope"></i> <span>

							support@ridecarepro.com </span>

					</div>

				</div>

			</div>

			<!-- Footer Bottom -->

			<div class="footer-bottom">

				<p>© 2026 RideCarePro. All Rights Reserved.</p>

				<div class="back-top">

					<i class="fa-solid fa-arrow-up"></i>

				</div>

			</div>

		</footer>

	</div>

	<!-- Dashboard JavaScript -->

	<script src="${pageContext.request.contextPath}/js/dashboard.js"></script>

</body>

</html>