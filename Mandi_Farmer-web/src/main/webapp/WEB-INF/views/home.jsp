<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Farmer Mandi</title>
<link rel="icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/resources/assets/img/FarmerSiteLogo.png" />
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
<!-- Core theme CSS (includes Bootstrap)-->
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
				<button class="navbar-toggler navbar-toggler-right" type="button"
					data-toggle="collapse" data-target="#navbarResponsive"
					aria-controls="navbarResponsive" aria-expanded="false"
					aria-label="Toggle navigation">
					Menu <i class="fas fa-bars ml-1"></i>
				</button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav text-uppercase ml-auto">

						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="<%=request.getContextPath()%>/loginfarmer">Farmer</a></li>
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="<%=request.getContextPath()%>/logintrader">Company</a></li>
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="#services">Services</a></li>
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="#team">Team</a></li>
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="#contact">Contact</a></li>
					</ul>
				</div>
			</nav>
		</div>

		<!-- Masthead-->
		<header class="masthead">
			<div class="container">
				<div class="masthead-subheading">Welcome To Farmer Mandi!</div>
				<div class="font-size:medium">Farmer Mandi is an unique
					initiative predominantly to help our farmers, as we all know in
					today's scenario after all the hard work farmers are not getting
					the real benefit what they deserve. We are here to provide the
					Online mode to sell the crop directly to the Trader without any
					Intermediate</div>
				<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
					href="#services">Tell Me More</a>
			</div>
		</header>


		<!-- Services-->
		<section class="page-section" id="services">
			<div class="container">
				<div class="text-center">
					<h2 class="section-heading text-uppercase">Services</h2>
					<h3 class="section-subheading text-muted">Please Choose
						According your Choices</h3>
				</div>
				<div class="row text-center">
					<div class="col-md-6">
						<span class="fa-stack fa-4x"> <a
							href="<%=request.getContextPath()%>/loginfarmer"> <i
								class="fas fa-circle fa-stack-2x text-primary"></i> <i
								class="fas fa-seedling fa-stack-1x fa-inverse "></i>
						</a>
						</span>
						<h4 class="my-3 ">
							<a href="loginfarmer">Farmer</a>
						</h4>
						<p class="text-muted">Selling of your Crop in Best and
							Effective Price</p>
					</div>
					<div class="col-md-6">
						<span class="fa-stack fa-4x"> <a
							href="<%=request.getContextPath()%>/logintrader"> <i
								class="fas fa-circle fa-stack-2x text-primary"></i> <i
								class="fas fa-shopping-basket fa-stack-1x fa-inverse"></i>
						</a>
						</span>
						<h4 class="my-3">
							<a href="<%=request.getContextPath()%>/logintrader">Trader OR
								Company</a>
						</h4>
						<p class="text-muted">Purchase any Crop in Easy Way Without
							any Interruption</p>
					</div>
				</div>
			</div>
		</section>

		<!-- Team-->
		<section class="page-section bg-light" id="team">
			<div class="container">
				<div class="text-center">
					<h2 class="section-heading text-uppercase">Our Amazing Team</h2>
					<h3 class="section-subheading text-muted">Meet Our Team
						Members Here</h3>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="team-member">
							<img class="mx-auto rounded-circle"
								src="<%=request.getContextPath()%>/resources/assets/img/team/a1.jpeg"
								alt="" />
							<h4>Akshay Patil</h4>
							<p class="text-muted">Back End & DataBase</p>

						</div>
					</div>
					<div class="col-lg-6">
						<div class="team-member">
							<img class="mx-auto rounded-circle"
								src="<%=request.getContextPath()%>/resources/assets/img/team/a2.jpeg"
								alt="" />
							<h4>Abhinav Upadhyay</h4>
							<p class="text-muted">Front End</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-8 mx-auto text-center">
						<p class="large text-muted">We are here to provide you the
							best services for Selling the Crop in MSP amount without any
							Intermediater</p>
					</div>
				</div>
			</div>
		</section>

		<!-- Contact-->
		<section class="page-section" id="contact">
			<div class="container">
				<div class="text-center">
					<h2 class="section-heading text-uppercase">Contact Us</h2>
					<h3 class="section-subheading text-muted">For Any Query Please
						Share With Us.</h3>
				</div>
				<form id="contactForm" name="sentMessage" novalidate="novalidate">
					<div class="row align-items-stretch mb-5">
						<div class="col-md-6">
							<div class="form-group">
								<input class="form-control" id="name" type="text"
									placeholder="Your Name *" required="required"
									data-validation-required-message="Please enter your name." />
								<p class="help-block text-danger"></p>
							</div>
							<div class="form-group">
								<input class="form-control" id="email" type="email"
									placeholder="Your Email *" required="required"
									data-validation-required-message="Please enter your email address." />
								<p class="help-block text-danger"></p>
							</div>
							<div class="form-group mb-md-0">
								<input class="form-control" id="phone" type="tel"
									placeholder="Your Phone *" required="required"
									data-validation-required-message="Please enter your phone number." />
								<p class="help-block text-danger"></p>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group form-group-textarea mb-md-0">
								<textarea class="form-control" id="message"
									placeholder="Your Message *" required="required"
									data-validation-required-message="Please enter a message."></textarea>
								<p class="help-block text-danger"></p>
							</div>
						</div>
					</div>
					<div class="text-center">
						<div id="success"></div>
						<button class="btn btn-primary btn-xl text-uppercase"
							id="sendMessageButton" type="submit">Send Message</button>
					</div>
				</form>
			</div>
		</section>
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
