<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Add Cars</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f2f2; ">
	<!-- Navbar -->

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
						<!-- <a data-toggle="modal" data-target="#exampleModalCenter"
							class="btn btn-primary text-white"><i
							class="fas fa-sign-in-alt"></i> Logout</a>
 -->					</c:if>

					<c:if test="${empty userobj }">

						<a href="../login.jsp" class="btn btn-success"><i
							class="fas fa-sign-in-alt"></i> Login</a>
						<a href="register.jsp" class="btn btn-primary text-white"><i
							class="fas fa-user-plus"></i> Register</a>

					</c:if>

				</div>
			
				
		</div>

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
					<li class="nav-item active"><a class="nav-link" href="home.jsp">HOME
							<span class="sr-only">(current)</span>
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

		<div class="container">
			<div class="row"> 
				<div class="col-md-4 offset-md-4">
					<div class="card">
						<div class="card-body">
						<h4 class="text-center">Add Car</h4>
						
						<c:if test="${not empty sucMsg}">
					<p class="text-center text-success">${sucMsg}</p>
					<c:remove var="sucMsg" scope="session"/>
					</c:if>

					<c:if test="${not empty failedMsg}">
					<p class="text-center text-danger">${failedMsg}</p>
					<c:remove var="failedMsg" scope="session"/>
					</c:if>
						
						
							<form action="../add_cars" method="post"
							 enctype="multipart/form-data">

								<div class="form-group">
									<label for="inputState">Driver Name</label> <input
										type="text" class="form-control" id="inputState"
										aria-describedby="emailHelp" required="required" name="dname">

									<div class="form-group">
										<label for="inputState">Car Name</label> <input
											type="text" class="form-control" id="inputState"
											aria-describedby="emailHelp" required="required"
											name="carname">


										<div class="form-group">
											<label for="inputState">Seats</label> <input
												type="number" class="form-control" id="inputState"
												aria-describedby="emailHelp" required="required"
												name="seats">
										</div>
										<div class="form-group">
											<label for="inputState">Fuel Type</label> <select
											 class="form-control"
												id="inputState" required="required"
												name="ftype">
												<option selected>---Select---</option>
												<option value="Petrol">Petrol</option>
												<option value="Diesel">Diesel</option>
												</select>
										</div>
										
										<div class="form-group">
									<label for="inputState">Num Plate</label> <input
										type="text" class="form-control" id="inputState"
										aria-describedby="emailHelp" required="required" name="numplate">
										
										
										</div>
										
										<div class="form-group">
											<label for="inputState">Price</label> <input
												type="number" class="form-control" id="inputState"
												aria-describedby="emailHelp" required="required"
												name="price">
										</div>
										
										
										
										</div>
										<div class="form-group">
											<label for="inputState">Car Status</label> <select
											 class="form-control"
												id="inputState" required="required"
												name="cstatus">
												<option selected>---Select---</option>
												<option value="Active">Active</option>
												<option value="Inactive">Inactive</option>
												</select>
										</div>
										
										
										<div class="form-group">
									<label for="exampleForControlFile1">Upload File</label> <input
										type="file" class="form-control-file" id="form-control-file"
										 required="required" id="exampleFormControlFile1" name="bimg">
										
										
										</div>
										
										
										
										<div class="form-group form-check">
											<input type="checkbox" class="form-check-input" name="check"
												id="exampleCheck1"> <label class="form-check-label"
												for="exampleCheck1"> Agre e Terms & Conditions</label>
										</div>
										
										
										
										<button type="submit"
											class="btn btn-primary btn-block badge-pill">ADD</button>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div

 style="margin-top:200px;">
		
		<%@ include file="footer.jsp"%> </div>
</body>
</html>