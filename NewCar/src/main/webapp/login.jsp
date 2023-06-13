<%@page import="com.DB.DBConnect"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<title>Login Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">

<%@include file="css/allCss.jsp" %>
</head>
<body style="background-color: #f0f1f2;">
	<!-- Navbar -->

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
			<div class="col-md-3"></div>
			<!-- <a href="login.jsp" class="btn btn-success">Login</a> <a href="register.jsp"
				class="btn btn-primary text-white">Register</a>				 -->
</div>
	</div>

	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
		<a class="navbar-brand" href="index2.jsp"><i class="fa-solid fa-house"></i></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="index2.jsp">HOME
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
	



	<div class="container">
		<div class="row mt-4">
			<div class="col-md-4 offset-md-4">
				<div class="card">
				<div class="card-body">
					<div class="text-center">
						<h5>Login</h5>
					
					<c:if test="${not empty failedMsg}">
					<h5 class="text-center text-danger">${failedMsg  }</h5>
					<c:remove var="failedMsg" scope="session"/>
					</c:if>
					
					
					<c:if test="${not empty userobj}">
					<p class="text-center text-success">${succMsg  }</p>
					<c:remove var="succMsg" scope="session"/>
					</c:if>
 
					
						<form action="login" method="post">


							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
							</div>
							
							<div class="text-center">
							<button type="submit"
								class="btn btn-primary btn-block badge-pill">Login</button><br>
								<a href="register.jsp">Create Account</a>
								</div>
						</form>
					</div>
                   </div>
				</div>
			</div>
		</div>
	</div>





<%@include file="css/footer.jsp" %>

</body>
</html>