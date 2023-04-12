<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String un=request.getParameter("t1");
out.println("name is ="+un);
String rd=request.getParameter("t2");
out.println("passwrd is ="+rd);
String vd=request.getParameter("t3");
out.println("E-mail is ="+vd);
String on=request.getParameter("t4");
out.println("Mobile is ="+on);

%>
</body>
</html>