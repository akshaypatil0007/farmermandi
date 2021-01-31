<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:400,700">
<title>AddProduct</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<link
	href="<%=request.getContextPath()%>/resources/css/farmerCSS/mainfarmer/addcrop.css"
	rel="stylesheet" />
</head>

<body>
	<%
		response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
	response.setHeader("pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	if (session.getAttribute("mobileno") == null) {
		String redirectURL = "loginfarmer";
		response.sendRedirect(redirectURL);
	}
	%>
	<div class="login-form">

		<form:form method="POST" action="/Mandi_Farmer-web/updatecrop">
			<h2>Update Crop Here</h2>
			<table>
				<tr>
					<td></td>

					<td><div class="form-group">
							<form:hidden name="id" path="id" />
						</div></td>
				</tr>
				<tr>
					<td>MobileNo.</td>
					<td><div class="form-group">
							<form:input type="number" path="mobileno" />
						</div></td>
				</tr>
				<tr>
					<td>Quantity.</td>
					<td><div class="form-group">
							<form:input type="number" path="quantity" />
						</div></td>
				</tr>
				<tr>
					<td>Harvest Date.</td>
					<td><div class="form-group">
							<form:input type="date" path="harvestDate" />
						</div></td>
				</tr>
				<tr>
					<td>Village.</td>
					<td><div class="form-group">
							<form:input path="village" />
						</div></td>
				</tr>
				<tr>
					<td>City.</td>
					<td><div class="form-group">
							<form:input path="city" />
						</div></td>
				</tr>
				<tr>
					<td>Pincode .</td>
					<td><div class="form-group">
							<form:input path="pincode" />
						</div></td>
				</tr>

				<tr>
					<td></td>
					<td><input type="submit" value="Edit Save" /></td>
				</tr>
			</table>
		</form:form>

	</div>
	<script>
		$(document).ready(function() {
			//when the select changes:
			$('.colorPicker').on("change", function() {
				//set the value of the input to the value of the select.
				$('.colorDisplay').val($(this).val());
			});
		});
	</script>
</body>
</html>

