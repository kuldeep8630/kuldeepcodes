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
<title>ALL RECENT CARS</title>
<%@include file="admin/allCss.jsp"%>
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
<body style="background-color: #f0f2f2;"
>

<%
	User u = (User) session.getAttribute("userobj");
	%>
	<!-- Navbar -->

	<div class="container-fluid" style="height: 10px; background-clor:"></div>

	<div class="container-fluid p-3 bg-light">
		<div class="row">
			<div class="col-md-3 text-success"></div>
			<h3>
				<i class="fa-solid fa-car"></i> Online Car Booking
			</h3>

			<div class="col-md-3"></div>
			<!-- <a href="login.jsp" class="btn btn-success">Login</a> <a
				href="register.jsp" class="btn btn-primary text-white">Register</a> -->
		</div>
	</div>

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
						class="fa-regular fa-address-card "></i> ABOUT US</a></li>

				<!-- <li class="nav-item active"><a class="nav-link"
					href="all_recent.jsp"><i class="fa-solid fa-car-rear"></i>
						Recent CAR </a></li>

				<li class="nav-item active"><a class="nav-link"
					href="all_new.jsp"><i class="fa-solid fa-car-rear"></i> NEW CAR
				</a></li>

				<li class="nav-item active"><a class="nav-link"
					href="all_old.jsp"><i class="fa-solid fa-car-rear"></i> OLD CAR
				</a></li> -->
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


<body style="background-color: #f0f1f2"></body>

<%
int carId=Integer.parseInt(request.getParameter("carId"));
CarDAOImpl dao=new CarDAOImpl(DBConnect.getConn());
CarDtls c=dao.getCarById(carId);

%>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 text-center p-5 border bg-white">
				<img src="carimages/<%=c.getPhotoName() %>" style="height: 150px;width:200px"><br>
				<h4 class="mt-3">
				Driver Name : <span class="text-success"><%=c.getDriver() %></span>
				</h4>
				<h4>Car Name : <span class="text-success"><%=c.getCarname() %></span></h4>
				<h4>Seats : <span class="text-success"><%=c.getSeats() %></span></h4>
				<h4>Fuel Type : <span class="text-success"><%=c.getFueltype() %></span></h4>
				<h4>Number Plate : <span class="text-success"><%=c.getNumplate() %></span></h4>
			</div>	
			
			<div class="col-md-6 text-center p-5 border bg-white">
			
			<h2><%=c.getCarname() %></h2>
			<div class="row mt-2">
			<div class="col-md-4 text-danger text-center p-2">
			<i class="fa-solid fa-credit-card fa-2x"></i> 
			<p>Payment(Debit Card/Credit Card)<p>
			 </div>
			<div class="col-md-4 text-danger text-center ml p-2">
			<i class="fa-solid fa-arrow-rotate-left fa-2x"></i>
			<p>Availability<p>
			</div>
			
				            

			</div>
			
			<div class="text-center p-3">
			<%
						if(u==null){
						%>
						<a href="login.jsp" class="btn btn-primary ml"><i
								class="fa-solid fa-circle-check"></i> Book Now</a>
						<%
						}else {
						%>
						<a href="Booking?cid=<%= c.getCarId()%>&&uid=<%= u.getId()%>" class="btn btn-primary ml"><i
								class="fa-solid fa-circle-check"></i> Book Now</a>
						<%
						}
						%>
		<a href="" class="btn btn-danger"><i class="fa-solid fa-indian-rupee-sign"></i><%=c.getPrice() %></a>
			</div>
			
			
			
			
			</div>

		</div>
	</div>



</body>
</html>
