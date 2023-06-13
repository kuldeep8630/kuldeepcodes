<%@page import="java.util.List"%>
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
<title>Admin:All Cars</title>
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
				<c:if test="${not empty userobj }">
						<a class="btn btn-success"><i
							class="fas fa-user"></i>${ userobj.name}</a>
						<!-- <a data-toggle="modal" data-target="#exampleModalCenter"
							class="btn btn-primary text-white"><i
							class="fas fa-sign-in-alt"></i> Logout</a> -->
					</c:if>

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



		<h3 class="text-center">Hello Admin</h3>

		<c:if test="${not empty sucMsg}">
			<h5 class="text-center text-success">${sucMsg}</h5>
			<c:remove var="sucMsg" scope="session" />
		</c:if>

		<c:if test="${not empty failedMsg}">
			<h5 class="text-center text-danger">${failedMsg}</h5>
			<c:remove var="failedMsg" scope="session" />
		</c:if>

		<table class="table table-striped">
			<thead class="bg-primary text-white">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Image</th>
					<th scope="col">Driver Name</th>
					<th scope="col">Car Name</th>
					<th scope="col">Seats</th>
					<th scope="col">Fuel Type</th>
					<th scope="col">Num Plate</th>
					<th scope="col">Status</th>
					<th scope="col">Price</th>
					<th scope="col">Action</th>


				</tr>
			</thead>
			<tbody>
				<%
				CarDAOImpl dao = new CarDAOImpl(DBConnect.getConn());
				List<CarDtls> list = dao.getAllCars();
				for (CarDtls c : list) {
				%>
				<tr>
					<td><%=c.getCarId()%></td>
					<td><img src="../carimages/<%=c.getPhotoName()%>"
						style="width: 50px; height: 50px;"></td>
					<td><%=c.getDriver()%></td>
					<td><%=c.getCarname()%></td>
					<td><%=c.getSeats()%></td>
					<td><%=c.getFueltype()%></td>
					<td><%=c.getNumplate()%></td>
					<td><%=c.getStatus()%></td>
					<td><%=c.getPrice()%></td>
					<td><a href="edit_cars.jsp?id=<%=c.getCarId()%>"
						class="btn btn-sm btn-primary"><i class="fa-regular fa-pen-to-square"></i>Edit</a> <a
						href="../delete?id=<%=c.getCarId()%>"
						class="btn btn-sm btn-danger"><i class="fa-solid fa-trash"></i>Delete</a>
					<td>
				</tr>

				<%
				}
				%>

			</tbody>
		</table>

		<div style="margin-top: 200px;">

			<%@ include file="footer.jsp"%>
		</div>
</body>
</html>

