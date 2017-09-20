<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 hello <% String a=request.getParameter("first");
      out.print(a);%>
 <form action="bill.jsp" method="get">
 <input type="submit" value="Bill Payments">
 </form>
 <form action="transfer.jsp" method="get">
 <%session.setAttribute("username", a);
 %>
 <input type="submit" value="Transfer">
 </form>
 <form action="loans.jsp">
 <input type="submit" value="loans">
 </form>
</body>
</html>