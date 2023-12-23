<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="ISO-8859-1">
    <title>Imperial Realty</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="Buyer/img/icon-deal.png" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="Buyer/lib/animate/animate.min.css" rel="stylesheet">
    <link href="Buyer/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="Buyer/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="Buyer/css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar Start -->
        <div class="container-fluid nav-bar bg-transparent">
            <nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
                <a href="buyerDashboard" class="navbar-brand d-flex align-items-center text-center">
                    <div class="icon p-2 me-2">
                        <img class="img-fluid" src="Buyer/img/icon-deal.png" alt="Icon" style="width: 30px; height: 30px;">
                    </div>
                    <h1 class="m-0 text-primary">Imperial Realty</h1>
                </a>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto">
                        <a href="buyerDashboard" class="nav-item nav-link ">Home</a>
                        <a href="Buyer/buyer_dashboard/about.html" class="nav-item nav-link">About</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown">Property</a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <a href="property_list" class="dropdown-item ">Property List</a>
                                <a href="Buyer/buyer_dashboard/property-type.html" class="dropdown-item">Property Type</a>
                            </div>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                            <a href="#" class="fa fa-user nav-link dropdown-toggle" data-bs-toggle="dropdown">&ensp;Welcome 
                            <%
                            HttpSession s1 = request.getSession(false);
                            
                            String user1 = (String) s1.getAttribute("p1");
                            out.println(user1);
                            %>
                            </a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <a href="profile?email=${buyeremail}" class="dropdown-item">Profile</a>
                                <a href="myAppointments?email=${buyeremail}" class="dropdown-item">My Appointments</a>
                                <a href="myProperties?email=${buyeremail}" class="dropdown-item">My Properties</a>
                                <a href="postProperties" class="dropdown-item">Post your Property</a>
                                <a href="logout" class="fa fa-sign-out dropdown-item">Logout</a>
                            </div>
                        </div>
                </div>
            </nav>
        </div>
        <!-- Navbar End -->
	

<br><br><br>
       <!-- About Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                        <div class="about-img position-relative overflow-hidden p-5 pe-0">
                            <img class="img-fluid w-100" src="BuyerImg/${PP.prop_photo}">
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                        <h1 class="mb-4">${PP.prop_name}</h1>
                         <p><i class="fa fa-map-marker-alt text-primary me-2"></i><b>${PP.prop_location}</b></p>
                         <p><i class="fa fa-check text-primary me-3"></i><b>Property Status - </b>${PP.prop_status}</p>
                        <p><i class="fa fa-check text-primary me-3"></i><b>Price - </b>${PP.prop_price}</p>
                        <p><i class="fa fa-check text-primary me-3"></i><b>Bedroom - </b>${PP.prop_bedrooms}</p>
                        <p><i class="fa fa-check text-primary me-3"></i><b>Bathroom - </b>${PP.prop_bathrooms}</p>
                        <p><i class="fa fa-check text-primary me-3"></i><b>Property type - </b>${PP.prop_type}</p>
                         <p><i class="fa fa-check text-primary me-3"></i><b>Property Sub-type - </b>${PP.prop_subtype}</p>
                            <p><i class="fa fa-check text-primary me-3"></i><b>Built Area - </b>${PP.prop_area} ${PP.prop_measurement}</p>
                     
                            <a href="appointment?id=${PP.prop_id}" class="btn btn-primary w-50 py-3">Book An Appointment</a>
                        </div>
                </div>
            </div>
        </div>
        <!-- About End -->
        
        
        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Get In Touch</h5>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Pune, Maharashtra</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+91 7721829028</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>imperial@realestate.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Quick Links</h5>
                        <a class="btn btn-link text-white-50" href="Buyer/about.html">About Us</a>
                        <a class="btn btn-link text-white-50" href="contact_us">Contact Us</a>
                        <a class="btn btn-link text-white-50" href="">Our Services</a>
                        <a class="btn btn-link text-white-50" href="">Privacy Policy</a>
                        <a class="btn btn-link text-white-50" href="">Terms & Condition</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Photo Gallery</h5>
                        <div class="row g-2 pt-2">
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="Buyer/img/property-1.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="Buyer/img/property-2.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="Buyer/img/property-3.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="Buyer/img/property-4.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="Buyer/img/property-5.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="Buyer/img/property-6.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                     <form action="feedback" method="post">
                        <h5 class="text-white mb-4">Feedback</h5>
                        <p>Give us feedback..</p>
                        <div class="position-relative mx-auto" style="max-width: 400px;">
                        	<input class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="hidden" name="bname" value="<%String user2 = (String) s1.getAttribute("p1");
                            out.println(user1);%>" >
                            <input class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="text" name="feedback_msg" placeholder="Give us feedback..">
                            <button type="submit" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">Send</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="">Imperial Realty</a>, All Right Reserved. 
							
							<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							Designed By <a class="border-bottom" href="">Aditya & team</a>
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                <a href="/">Home</a>
                                <a href="">Cookies</a>
                                <a href="">Help</a>
                                <a href="">FQAs</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="Buyer/lib/wow/wow.min.js"></script>
    <script src="Buyer/lib/easing/easing.min.js"></script>
    <script src="Buyer/lib/waypoints/waypoints.min.js"></script>
    <script src="Buyer/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="Buyer/js/main.js"></script>
</body>

</html>