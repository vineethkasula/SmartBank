<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
   <%@ page import="java.util.Calendar.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/login";
String user = "root";
String password = "";
String clg=request.getParameter("choose");
String ac=request.getParameter("ac");
String code=request.getParameter("ifsc");
String uid=request.getParameter("uid");
String amount=request.getParameter("amount");
String key = UUID.randomUUID().toString();
Calendar calendar = Calendar.getInstance();
java.sql.Date ourJavaDateObject = new java.sql.Date(calendar.getTime().getTime());

try {
Class.forName(driverName);
con = DriverManager.getConnection(url, user, password);
String sql = "insert into educational values ( ?,?,?,?,?,?,?)";
ps = con.prepareStatement(sql);
	ps.setString(1, clg);
	ps.setString(2, ac);
	ps.setString(3, code);
	ps.setString(4, uid);
	ps.setString(5, amount);
	ps.setDate(6,ourJavaDateObject);
	ps.setString(7, key);
    
    int updatequery=ps.executeUpdate();
    if(updatequery!=0)
    {
 	   
 	   out.println("Money Successfully transfered");
    }
    else
    {
 	   out.println("Server is busy");
    }
}
catch(Exception ex)
{
	out.println("unable to connect");
}
%>

</body>
</html>