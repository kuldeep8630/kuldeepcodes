<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Home</title>
<%@ include file="allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>


</head>
<body>

	<!-- Navbar -->
	<%@page import="com.DB.DBConnect"%>
	<%@page import="java.sql.Connection"%>
	<div class="container-fluid" style="height: 10px; background-clor:"></div>

	<div class="container-fluid p-3 bg-light">
		<div class="row">
			<div class="col-md-3 text-success"></div>
			<h3>
				<i class="fa-solid fa-car"></i> Online Car Booking
			</h3>
			

				<div class="col-md-3">

					<c:if test="${not empty userobj }">
						<a class="btn btn-success"><i
							class="fas fa-user"></i>${ userobj.name}</a>
						<a data-toggle="modal" data-target="#exampleModalCenter"
							class="btn btn-primary text-white"><i
							class="fas fa-sign-in-alt"></i> Logout</a>
					</c:if>

					<c:if test="${empty userobj }">

						<a href="../login.jsp" class="btn btn-success"><i
							class="fas fa-sign-in-alt"></i> Login</a>
						<a href="register.jsp" class="btn btn-primary text-white"><i
							class="fas fa-user-plus"></i> Register</a>

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
							<a href="../logout" type="button" class="btn btn-danger">Logout</a>

						</div>

					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>





		<!-- End LOGOUT MODAL  -->

		<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
			<a class="navbar-brand" href="home.jsp"><i class="fa-solid fa-house"></i></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="home.jsp">HOME <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item active"><a class="nav-link" href="#"><i
							class="fa-regular fa-address-card"></i> ABOUT US</a></li>

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
		
		<c:if test="${empty userobj }">
			<c:redirect url="../login.jsp"/>
		</c:if>
		

		<div class=" container">
			<div class="row p-5">
				<div class="col-md-3">
					<a href="add_cars.jsp">
						<div class=card>
							<div class="card-body text-center">
								<i class="fa-solid fa-plus fa-3x text-primary"></i><br>
								<h4>Add Car</h4>
								----------
							</div>
						</div>
					</a>
				</div>


				<div class="col-md-3">
					<a href="all_cars.jsp">
						<div class=card>
							<div class="card-body text-center">
								<i class="fa-solid fa-car fa-3x text-danger"></i><br>
								<h4>All Cars</h4>
								----------
							</div>
						</div>
					</a>

				</div>


<!-- 
				<div class="col-md-3">
					<a href="booking.jsp">
						<div class=card>
							<div class="card-body text-center">
								<i class="fa-solid fa-gift fa-3x text-warning"></i><br>
								<h4>Bookings</h4>
								----------
							</div>
						</div>
					</a>
				</div>
 -->


				<div class="col-md-3 ml-3">
					<a data-toggle="modal" data-target="#exampleModalCenter">
						<div class=card>
							<div class="card-body text-center">
								<i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i><br>
								<h4>Logout</h4>
								----------
							</div>
						</div>
					</a>
				</div>

			</div>


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
							<a href="../logout" type="button" class="btn btn-danger">Logout</a>

						</div>

					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>




			<div style="margin-top: 200px;">

				<%@ include file="footer.jsp"%>
			</div>
</body>
</html>