 <%@page import="com.entities.User"%>
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
<title>ALL AVAILABLE CARS</title>
<%@include file="admin/allCss.jsp"%>
<%-- <c:if test="${not empty userobj}">
           <h1>Name:${userobj.name}</h1>
           <h1>Email:${userobj.email}</h1> 
		</c:if>  --%>	
<style type="text/css">
.crd-hd:hover {
	background-color: #f2c4cf;
}


#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}

</style>
</head>
<body style="background-color: #f0f2f2;">

	<%

//	System.out.println(session.getAttribute("userobj").toString());
//	String s=session.getAttribute("userobj").toString();
	User u=(User)session.getAttribute("userobj");
// out.println("Welcome"+s);
%>
<!-- 	Navbar   -->

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
					class="fas fa-sign-in-alt"></i>${userobj.name}</a> 
					<a href="logout"
						class="btn btn-primary">Logout</a>
				
				</c:if>
				 
				
					<c:if test="${empty userobj }">
				 <div class="col-md-3"></div>
				<a href="login.jsp" class="btn btn-success"><i
					class="fas fa-sign-in-alt"></i> Login</a> 
					<a href="register.jsp"
						class="btn btn-primary">Register</a>
				
				</c:if> 
		</div>
	</div>
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
						class="fa-regular fa-address-card "></i> ABOUT US</a></li>

				<!-- <li class="nav-item active"><a class="nav-link" href="all_recent.jsp"><i
						class="fa-solid fa-car-rear"></i> Recent CAR </a></li>

				<li class="nav-item active"><a class="nav-link" href="all_new.jsp"><i
						class="fa-solid fa-car-rear"></i> NEW CAR </a></li>

				<li class="nav-item active"><a class="nav-link" href="all_old.jsp"><i
						class="fa-solid fa-car-rear"></i> OLD CAR </a></li> -->
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

<c:if test="${not empty addbooking}">

<div id="toast">${addbooking}</div>

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>

<c:remove var="addbooking" scope="session"/>

</c:if>

	<div class="container-fluid">
		<div class="row p-5">
			<%
			CarDAOImpl dao2 = new CarDAOImpl(DBConnect.getConn());
			List<CarDtls> list2= dao2.getAllRecentCar();
			for (CarDtls c : list2) {
			%>
			<div class="col-md-4">
				<div class="card crd-ho mt-2">
					<div class="card-body text-center">
						<img alt="" src="carimages/<%=c.getPhotoName()%>"
							style="width: 300px; height: 150px;" class="img-thumblin">
						<p><%=c.getCarname()%>
						<p>
						<p>Category:New
						<p>
						<div class="row">
							
							
								<%
						if(u==null){
						%>
						<a href="login.jsp" class="btn btn-danger btn-sm ml"><i
								class="fa-regular fa-calendar-check ml"></i> Book Car</a>
						<%
						}else {
						%>
						<a href="Booking?cid=<%= c.getCarId()%>&&uid=<%= u.getId()%>" class="btn btn-danger btn-sm ml"><i
								class="fa-regular fa-calendar-check ml"></i> Book Car</a>
						<%
						}
						%>
							
							
							
								<a href="view_car.jsp?carId=<%=c.getCarId() %>"
								class="btn btn-success  btn-sm ml-4">view Details</a>
								<a href=""class="btn btn-danger btn-sm ml-4"><%=c.getPrice()%>  <i
								class="fa-solid fa-indian-rupee-sign"></i></a>
						</div>
					</div>
				</div>
			</div>

			<%}
			%>
			
			
			
		</div>
	</div>




</body>
</html>