<!-- Navbar -->
<%@page import="com.entities.User"%>
<%@page import="java.util.List"%>
<%@page import="com.entities.CarDtls"%>
<%@page import="com.DAO.CarDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<div class="container-fluid" style="height: 10px; background-clor:"></div>

<div class="container-fluid p-3 bg-light">
	<div class="row">
		<div class="col-md-3 text-success"></div>
		<h3>
			<i class="fa-solid fa-car"></i> Online Car Booking
		</h3>
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>

			<div class="col-md-3">

				<c:if test="${not empty userobj}">
					<div class="col-md-3"></div>
					<a href="index2.jsp" class="btn btn-success"><i
							class="fas fa-user"></i>    <i
						class="fas fa-sign-in-alt"></i>${userobj.name}</a>
					<a href="logout" class="btn btn-primary">Logout</a>
					
  
				</c:if>


				<c:if test="${empty userobj }">
					<div class="col-md-3"></div>
					<a href="login.jsp" class="btn btn-success"><i
						class="fas fa-sign-in-alt"></i> Login</a>
					<a href="register.jsp" class="btn btn-primary">Register</a>

				</c:if>


			</div>
		</div>
	</div>


	<!-- LOGOUT MODAl -->


	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle"></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<h4>Do You Want to Logout ?</h4>
					<div class="text-center">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<a href="logout" type="button" class="btn btn-danger">Logout</a>

					</div>

				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>





	<!-- End LOGOUT MODAL  -->

	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<a class="navbar-brand" href="index2.jsp"><i
			class="fa-solid fa-house"></i></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index2.jsp">HOME <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link" href="#"><i
						class="fa-regular fa-address-card "></i>ABOUT US</a></li>


			</ul>
			<form class="form-inline my-2 my-lg-0">
				<button class="btn btn-light my-2 my-sm-0" type="submit">
					<i class="fa-solid fa-gear"></i> SETTING
				</button>
				<button class="btn btn-light my-2 my-sm-0 ml-2" type="submit">
					<i class="fa-solid fa-phone-volume"></i> CONTACT US
				</button>
			</form>
		</div>
	</nav>




	<!-- EndNavbar-->

	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style.css">

	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
		integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
		integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
		crossorigin="anonymous">

	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style.css">





	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html>
	<html>
<head>




<meta charset="ISO-8859-1">
<title>Car Booking</title>
<%@include file="css/allCss.jsp"%>
<%-- <%@include file="css/navbar.jsp"%>
 --%>
<style type="text/css">
.back-img {
	background: url("img/c2.jpg");
	height: 70vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-hd:hover {
	background-color: #f2c4cf;
}
</style>
</head>
<body style="background-color: #f7f7f7;">


	<%
	User u = (User) session.getAttribute("userobj");
	%>
	<%@include file="css/allCss.jsp"%>
	<div class="container-fluid back-img">
		<h2>Car Rental System</h2>
	</div>



	<!-- Start Available Car  -->


	<div class="container-fluid">

		<h3 class="text-center fa-2x mt-3">Available Car</h3>
		<div class="row p-4">

			<%
			CarDAOImpl dao = new CarDAOImpl(DBConnect.getConn());
			List<CarDtls> list = dao.getAllRecentCar();
			for (CarDtls c : list) {
			%>
			<div class="col-md-4">
				<div class="card crd-ho mt-2">
					<div class="card-body text-center">
						<img alt="" src="carimages/<%=c.getPhotoName()%>"
							style="width: 300px; height: 150px;" class="img-thumblin">
						<p><%=c.getCarname()%></p>
						<div class="row">

							<%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml"><i
								class="fa-regular fa-calendar-check ml"></i> Book Car</a>
							<%
							} else {
							%>
							<a href="Booking?cid=<%= c.getCarId()%>&&uid=<%= u.getId()%> " class="btn btn-danger btn-sm ml"><i
								class="fa-regular fa-calendar-check ml"></i> Book Car</a>
							<%
							}
							%>


							<a href="view_car.jsp?carId=<%=c.getCarId()%>"
								class="btn btn-success  btn-sm ml-4">view Details</a> <a href=""
								class="btn btn-danger btn-sm ml-4"><%=c.getPrice()%> <i
								class="fa-solid fa-indian-rupee-sign"></i></a>
						</div>
					</div>
				</div>
			</div>

			<%
			}
			%>



		</div>
	</div>
	<div class="text-center mt-2">
		<!-- 		<a href="all_recent.jsp" class="btn btn-danger btn-sm text-white"> View All</a>
 -->
	</div>


	<%@include file="css/footer.jsp"%>
</body>
	</html>