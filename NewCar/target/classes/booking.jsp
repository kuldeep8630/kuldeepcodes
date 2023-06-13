<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:All Orders</title>
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
			
				<div class="col-md-3"></div>
				<a href="login.jsp" class="btn btn-success">Login</a> <a href="register.jsp"
					class="btn btn-primary text-white">Register</a>
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
		
 <h3 class="text-center">Hello Admin</h3>	
	 	<table class="table table-striped">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Booking ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
      <th scope="col">Mobile</th>
      <th scope="col">Car Name</th>
      <th scope="col">No. Plate</th>
      <th scope="col">price</th>
       <th scope="col">Payment Type</th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>
    </tr>
  </tbody>
</table>

		
		
		
		
		<div

 style="margin-top:200px;">
		
		<%@ include file="footer.jsp"%> </div>
		
		
		
		
</body>	
</html>	
		
		