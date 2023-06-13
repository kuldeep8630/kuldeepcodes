<%@page import="com.entities.CarDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CarDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Add Cars</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f2f2;">
	<!-- Navbar -->

	<div class="container-fluid" style="height: 10px; background-clor:"></div>

	<div class="container-fluid p-3 bg-light">
		<div class="row">
			<div class="col-md-3 text-success"></div>
			<h3>
				<i class="fa-solid fa-car"></i> Online Car Booking
			</h3>
			
				<div class="col-md-3"></div>
				<!-- <a href="" class="btn btn-success">Login</a> <a href="register.jsp"
					class="btn btn-primary text-white">Register</a> -->
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

		<div class="container">
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card">
						<div class="card-body">
							<h4 class="text-center">Edit Car Details</h4>


							<%
							int id = Integer.parseInt(request.getParameter("id"));
							CarDAOImpl dao = new CarDAOImpl(DBConnect.getConn());
							CarDtls c = dao.getCarById(id);
							%>



							<form action="../editcars" method="post">
								<input type="hidden" name="id" value="<%=c.getCarId()%>">

								<div class="form-group">
									<label for="inputState">Driver Name</label> <input
										type="text" class="form-control" id="inputState"
										aria-describedby="emailHelp" value="<%=c.getDriver()%>"
										required="required" name="dname">
								</div>
								
								
								<div class="form-group">
									<label for="inputState">Car Status</label> <select
										class="form-control" id="inputState" required="required"
										name="cstatus">
										<%
										if ("Active".equals(c.getStatus())) {
										%>
										<option value="Active">Active</option>
										<option value="Inactive">Inactive</option>
										<%
										} else {
										%>
										<option value="Inactive">Inactive</option>
										<option value="Active">Active</option>
										<%
										}
										%>
									</select>
								</div>


								<div class="form-group">
									<label for="inputState">Price</label> <input type="number"
										class="form-control" id="inputState"
										aria-describedby="emailHelp" value="<%=c.getPrice()%>"
										required="required" name="price">
								</div>


								<button type="submit"
									class="btn btn-primary btn-block badge-pill">UPDATE</button>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>

		<div style="margin-top: 200px;">

			<%@ include file="footer.jsp"%>
		</div>
</body>
</html>