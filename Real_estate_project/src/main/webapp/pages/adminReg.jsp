<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>Admin - Imperial Realty</title>
 
  <!--favicon-->
  <link rel="icon" href="Buyer/img/icon-deal.png" type="image/x-icon">
  <!-- Vector CSS -->
  <link href="Admin/admin_dashboard/assets/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet"/>
  <!-- simplebar CSS-->
  <link href="Admin/admin_dashboard/assets/plugins/simplebar/css/simplebar.css" rel="stylesheet"/>
  <!-- Bootstrap core CSS-->
  <link href="Admin/admin_dashboard/assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="Admin/admin_dashboard/assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="Admin/admin_dashboard/assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Sidebar CSS-->
  <link href="Admin/admin_dashboard/assets/css/sidebar-menu.css" rel="stylesheet"/>
  <!-- Custom Style-->
  <link href="Admin/admin_dashboard/assets/css/app-style.css" rel="stylesheet"/>
  
</head>

<body class="bg-theme bg-theme2">
 
<!-- Start wrapper-->
 <div id="wrapper">
 
  <!--Start sidebar-wrapper-->
   <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
     <div class="brand-logo">
      <a href="adminDashboard">
       <img src="Buyer/img/icon-deal.png" class="logo-icon" alt=>
       <h5 class="logo-text">Admin Login</h5>
     </a>
   </div>
   <ul class="sidebar-menu do-nicescrol">
      <li class="sidebar-header">MAIN NAVIGATION</li>
      <li >
        <a href="adminDashboard" >
          <i class="zmdi zmdi-view-dashboard"></i> <span >Dashboard</span>
        </a>
      </li>

      <li >
        <a href="adminAllprop">
          <i class="zmdi zmdi-format-list-bulleted"></i> <span>All Properties</span>
        </a>
      </li>

      <li >
        <a href="adminAppointments">
          <i class="zmdi zmdi-notifications"></i> <span>Appointments</span>
        </a>
      </li>

      <li >
        <a href="admin_buyerDetails">
          <i class="zmdi zmdi-grid"></i> <span>Buyer Details</span>
        </a>
      </li>
      <li>
        <a href="admin_details">
          <i class="zmdi zmdi-grid"></i> <span>Admin Details</span>
        </a>
      </li>

       <li class="active">
        <a href="adminReg">
          <i class="zmdi zmdi-account-circle"></i> <span>Admin Registration</span>
        </a>
      </li>
      
      <li>
        <a href="adminContact">
          <i class="zmdi zmdi-email"></i> <span>Contact</span>
        </a>
      </li>
      
      <li>
        <a href="adminFeedback">
          <i class="zmdi zmdi-email"></i> <span>Feedback</span>
        </a>
      </li>

      <li><a href="adminLogout"><i class="zmdi zmdi-square-right text-danger"></i> <span>Logout</span></a></li>


    </ul>
   
   </div>
   <!--End sidebar-wrapper-->

<!--Start topbar header-->
<header class="topbar-nav">
 <nav class="navbar navbar-expand fixed-top">
  <ul class="navbar-nav mr-auto align-items-center">
    <li class="nav-item">
      <a class="nav-link toggle-menu" href="javascript:void();">
       <i class="icon-menu menu-icon"></i>
     </a>
    </li>
    <li class="nav-item">
      <form class="search-bar">
        <input type="text" class="form-control" placeholder="Enter keywords">
         <a href="javascript:void();"><i class="icon-magnifier"></i></a>
      </form>
    </li>
  </ul>
     
  <ul class="navbar-nav align-items-center right-nav-link">
    
    <li class="nav-item">
      <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="#">
        <span class="user-profile"><img src="Admin/admin_dashboard/assets/images/admin.png" class="img-circle" alt="user avatar"></span>
      </a>
      <ul class="dropdown-menu dropdown-menu-right">
       
        
        <li class="dropdown-item"><a href="admin_details" >&ensp; Admin</a></li>
        <li class="dropdown-divider"></li>
        <li class="dropdown-item"><a href="adminLogout" >&ensp; Logout</a></li>
      </ul>
    </li>
  </ul>
</nav>
</header>
<!--End topbar header-->
<br><br>
<!-- Start wrapper-->
 <div id="wrapper">

	<div class="card card-authentication1 mx-auto my-4">
		<div class="card-body">
		 <div class="card-content p-2">
		 	<div class="text-center">
		 		<img src="Buyer/img/icon-deal.png" alt="logo icon">
		 	</div>
		  <div class="card-title text-uppercase text-center py-3">Admin Registration</div>
		  
		    <form action="newAdmin" method="post" >
			  <div class="form-group">
			  <label for="exampleInputName" class="sr-only">Name</label>
			   <div class="position-relative has-icon-right">
				  <input type="text" name="admin_name" id="exampleInputName" class="form-control input-shadow" placeholder="Enter Name" required>
				  <div class="form-control-position">
					  <i class="icon-user"></i>
				  </div>
			   </div>
			  </div>
			  <div class="form-group">
			  <label for="exampleInputName" class="sr-only">Phone Number</label>
			   <div class="position-relative has-icon-right">
				  <input type="text" name="admin_number" id="exampleInputName" class="form-control input-shadow" placeholder="Phone Number" required>
				  <div class="form-control-position">
					  <i class="icon-phone"></i>
				  </div>
			   </div>
			  </div>
			  <div class="form-group">
			  <label for="exampleInputEmailId" class="sr-only">Email ID</label>
			   <div class="position-relative has-icon-right">
				  <input type="text" name="admin_email" id="exampleInputEmailId" class="form-control input-shadow" placeholder="Enter  Email ID" required>
				  <div class="form-control-position">
					  <i class="icon-envelope-open"></i>
				  </div>
			   </div>
			  </div>
			  
			  
			   
			  
			 <button type="submit" class="btn btn-light btn-block waves-effect waves-light">Register Admin</button>
		
			
			 </form>
		   </div>
		  </div>
	     </div>
    
     <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->
	  
	<!--start overlay-->
		  <div class="overlay toggle-menu"></div>
		<!--end overlay-->
		
    </div>
    <!-- End container-fluid-->
    
    </div><!--End content-wrapper-->
   <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->
	
	
	
  
   
  </div><!--End wrapper-->

  <!-- Bootstrap core JavaScript-->
  <script src="Admin/admin_dashboard/assets/js/jquery.min.js"></script>
  <script src="Admin/admin_dashboard/assets/js/popper.min.js"></script>
  <script src="Admin/admin_dashboard/assets/js/bootstrap.min.js"></script>
	
 <!-- simplebar js -->
  <script src="Admin/admin_dashboard/assets/plugins/simplebar/js/simplebar.js"></script>
  <!-- sidebar-menu js -->
  <script src="Admin/admin_dashboard/assets/js/sidebar-menu.js"></script>
  <!-- loader scripts -->
  <script src="Admin/admin_dashboard/assets/js/jquery.loading-indicator.js"></script>
  <!-- Custom scripts -->
  <script src="Admin/admin_dashboard/assets/js/app-script.js"></script>
  <!-- Chart js -->
  
  <script src="Admin/admin_dashboard/assets/plugins/Chart.js/Chart.min.js"></script>
 
  <!-- Index js -->
  <script src="Admin/admin_dashboard/assets/js/index.js"></script>

  
</body>
</html>

