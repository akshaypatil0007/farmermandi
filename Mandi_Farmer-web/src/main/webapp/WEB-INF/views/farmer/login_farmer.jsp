<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Farmer Mandi</title>
<link rel="icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/resources/assets/img/FarmerSiteLogo.png" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
	rel="stylesheet" type="text/css" />
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	crossorigin="anonymous">
<!-- Core theme CSS (includes Bootstrap)-->

<link
	href="<%=request.getContextPath()%>/resources/css/farmerCSS/register.css"
	rel="stylesheet" />
<link
	href="<%=request.getContextPath()%>/resources/css/farmerCSS/login.css"
	rel="stylesheet" />
<link href="<%=request.getContextPath()%>/resources/css/styles.css"
	rel="stylesheet" />
</head>
<body id="page-top">

	<!-- ======= Header ======= -->
	<header id="header" class="header-transparent">
		<div>
			<!-- Navigation-->
			<nav class="navbar navbar-expand-lg fixed-top" id="mainNav">
				<a class="navbar-brand js-scroll-trigger " href="#page-top"> <img
					src="<%=request.getContextPath()%>/resources/assets/img/Farmer.png"
					alt="" /></a>
				<h4 class="text-light">
					<a class="logo float-left" href="<%=request.getContextPath()%>/"><span>FarmerMandi</span></a>
				</h4>

				<div class="collapse navbar-collapse" id="navbarResponsive"></div>
			</nav>
		</div>
		<header class="masthead">
		<div>
			<!-- Navigation-->
			<nav class="navbar navbar-expand-lg fixed-top" id="mainNav">
				<a class="navbar-brand js-scroll-trigger " href="#page-top"> <img
					src="<%=request.getContextPath()%>/resources/assets/img/Farmer.png"
					alt="" /></a>
				<h4 class="text-light">
					<a class="logo float-left" href="<%=request.getContextPath()%>/"><span>FarmerMandi</span></a>
				</h4>
				<button class="navbar-toggler navbar-toggler-right" type="button"
					data-toggle="collapse" data-target="#navbarResponsive"
					aria-controls="navbarResponsive" aria-expanded="false"
					aria-label="Toggle navigation">
					Menu <i class="fas fa-bars ml-1"></i>
				</button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav text-uppercase ml-auto">
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="<%=request.getContextPath()%>/loginfarmer">Farmer Login</a></li>
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="<%=request.getContextPath()%>/logintrader">Company Login</a></li>
					</ul>
				</div>
			</nav>
		</div>
			<div class="container">
				<br> <br> <br> <br> <br>

				<form class="login-box"
					action="<%=request.getContextPath()%>/validatefarmer" method="post">
					<br> <br> <br> <br> <br>
					<h2>Login</h2>
					<div class="textbox">${error }</div>
					<div class="textbox">
						<i class="fas fa-user"></i> <input name="mobileNo" type="text"
							placeholder="Enter your MobileNo." pattern="[0-9]{10}" required>
					</div>
					<div class="textbox">
						<i class="fas fa-lock"></i> <input name="password" type="password"
							placeholder="Enter your Password" required>
					</div>
					<button
						class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
						type="submit" class="btn">Sign In</button>
					<div class="textbox">
						<p>
							New Registration <a onclick="Alert.render('')"
								class="btnregistration">Click Here</a>
					</div>
				</form>
			</div>

			<div class="container1">
				<div id="popUpOverlay"></div>
				<div id="popUpBox">
					<div class="container1 mt-4" style="background: #e2e2e2">
						<div class="row">
							<div class="col-md-8 offset-md-2">
								<div class="card">
									<div class="card-body">
										<h1>Register</h1>
										<p>Please fill in this form to create an account.</p>
										<hr>
										<form action="<%=request.getContextPath()%>/mainFarmer"
											method="post">
											<div class="form-group">
												<label for="exampleInputEmail">Name</label> <input
													type="text" class="form-control" name="farmerName"
													id="userName" aria-describedby="emailHelp"
													placeholder="Enter Name" required>
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">Aadhaar Id</label> <input
													type="number" name="aadhaarId" class="form-control"
													id="userAadhaarId" aria-describedby="emailHelp"
													placeholder="Enter Aadhaar ID" size="12" required>
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">Mobile No.</label> <input
													type="number" name="mobileNo" class="form-control"
													id="userMobileNo" aria-describedby="emailHelp"
													placeholder="Enter Mobile No." pattern="[0-9]{10}" required>
											</div>
											<div class="form-group">
												<span class="mr-3">Select Gender</span>
												<div class="form-check form-check-inline">
													<input class="form-check-inline" type="radio" name="gender"
														id="inlineRadio1" value="male" required> <label
														class="form-check-label" for="inlineRadio1">Male</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-inline" type="radio" name="gender"
														id="inlineRadio2" value="female" required> <label
														class="form-check-label" for="inlineRadio2">Female</label>
												</div>
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">Address</label>
												<textarea id="useraddress" name="farmerAddress"
													class="form-control" placeholder="Enter Address"
													aria-describedby="emailHelp" style="height: 120px" required>
                                                    </textarea>
											</div>
											<div class="form-group">
												<label for="exampleInputEmail">Password</label> <input
													type="password" class="form-control" name="password"
													id="userPassword" aria-describedby="emailHelp"
													placeholder="Enter Password" required>
											</div>
											<div class="form-group">
												<label for="exampleInputEmail">Confirm Password</label> <input
													type="password" class="form-control" name="cpassword"
													id="userCPassword" aria-describedby="emailHelp"
													placeholder="Enter Confirm Password" required>
											</div>
											<div class="btn-group  col-md-3 ">
												<button type="submit" class="btn btn-primary">Submit</button>
												<hr>
												<a href="<%=request.getContextPath()%>/loginfarmer"
													class="btn btn-primary">Close</a>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- Footer-->
		<footer class="footer py-4">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-4 text-lg-left">Copyright ©
						FarmersMandi.com 2020</div>
					<div class="col-lg-4 my-3 my-lg-0">
						<a class="btn btn-dark btn-social mx-2" href="#!"><i
							class="fab fa-twitter"></i></a> <a
							class="btn btn-dark btn-social mx-2" href="#!"><i
							class="fab fa-facebook-f"></i></a> <a
							class="btn btn-dark btn-social mx-2" href="#!"><i
							class="fab fa-linkedin-in"></i></a>
					</div>
					<div class="col-lg-4 text-lg-right">
						<a class="mr-3" href="#!">Privacy Policy</a> <a href="#!">Terms
							of Use</a>
					</div>
				</div>
			</div>
		</footer>
	</header>
	<script
		src="<%=request.getContextPath()%>/resources/js/farmer/js_farmer.js"></script>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Third party plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
	<!-- Contact form JS-->
	<script
		src="<%=request.getContextPath()%>/resources/assets/mail/jqBootstrapValidation.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/assets/mail/contact_me.js"></script>
	<!-- Core theme JS-->
	<script src="<%=request.getContextPath()%>/resources/js/scripts.js"></script>
</body>
</html>
