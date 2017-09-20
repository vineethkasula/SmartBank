<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String h= request.getParameter("pass6");
   session.setAttribute("hint",h);%>
<h3> enter your new password:</h3>
<form action="change2" method="get">
<input type="password" name="pass3">
<h3> confirm your new password:</h3>
<input type="password" name="pass4"></br>
<input type="submit" value="submit">
</form>
</body>
</html>