<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="jstlc" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Farmer Mandi</title>
<link rel="icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/resources/assets/img/FarmerSiteLogo.png" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js"></script>
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
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="<%=request.getContextPath()%>/resources/css/styles.css"
	rel="stylesheet" />
<link
	href="<%=request.getContextPath()%>/resources/css/farmerCSS/mainfarmer/table.css"
	rel="stylesheet" />

}

</head>
<body id="page-top">
	<%
		response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
	response.setHeader("pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	if (session.getAttribute("mobileno") == null) {
		String redirectURL = "loginfarmer";
		response.sendRedirect(redirectURL);
	}
	%>

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
						<li class="nav-item"><form
								action="<%=request.getContextPath()%>/searchcrop"
								class="form-inline my-2 my-lg-0">
								<input class="form-control mr-sm-2" type="search"
									name="cropName" placeholder="Search Crop here"
									aria-label="Search">
								<button class="btn btn-outline-success my-2 my-sm-0"
									type="submit">Search Crop</button>
							</form></li>
						<li class="nav-item"><a class="nav-link js-scroll-trigger"
							href="<%=request.getContextPath()%>/logoutfarmer">Logout</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<br /> <br />
		<div class="container">
			<div class="row">
				<div class="col-8">
					<h2 class="center" style="color: #8321B4; font-family: Cursive">Introduction</h2>
					<p>Now farmers (Kisan) can sell their produce directly to end
						consumer i.e. Institution, Group Co-operative Societies, Citizen
						Associations or any other group buyers on FarmerMandi.com & also
						farmer can save lot of money via Group buying of Agri products or
						machinery directly from Manufacturing Companies and big
						distributors on a fair price.</p>

					<div>
						<h5>Online wholesale {B2B}:</h5>
						Online Portal Where farmers can submit their Agri Produce for sale
						to Food Processing Company, Food Chains, Retail Stores &
						Institutional Buyers.
						<h5>Vendors {Channel Partners}:</h5>
						Online Portal where Manufacturer/Big Distributor can sell Agri
						Machinery and Agri inputs to Farmers.
					</div>
					<div>Also, Farmermandi.com will be catering to almost all the
						needs of the agriculture fraternity where they will find all
						commodities/ items ranging from Tractors.</div>
				</div>
				<div class="col-4">
					<h2 class="center" style="color: #8321B4; font-family: Cursive">Crop
						MSP In India</h2>
					<table class="css-serial" border="1" style="background-color: grey"
						style="color:yellow" cellspacing="10" cellpadding="10">
						<thead>
							<tr>
								<th>Id</th>
								<th>Crop Name</th>
								<th>MSP</th>

							</tr>
						</thead>
						<tbody>
							<c:forEach var="crop" items="${msp}">
								<tr>
									<td></td>
									<td>${crop.cropname}</td>
									<td>${crop.msp}</td>
								</tr>

							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

		</div>

		<!-- Footer-->
		<footer class="footer py-4">
			<div class="container" style="background-color: rgb(240, 240, 240)">
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
	<div class="container"></div>
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
