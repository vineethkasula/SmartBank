<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String ch=request.getParameter("drop");
 session.setAttribute("dj",ch);
 %>
enter details for transaction:
<form action="bill2" method="get">
name of institution:<input type="text" name="ni" ></br>
Account no:<input type="text" name="ac" ></br>
IFSCCode:<input type="text" name="ic" ></br>
amount:<<input type="text" name="am" ></br>
<input type="submit" value="transfer" >

</form>
</body>
</html>