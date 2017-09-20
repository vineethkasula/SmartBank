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
String ac=request.getParameter("acno1");
String sno=request.getParameter("sno1");
String amount=request.getParameter("amount1");
String key = UUID.randomUUID().toString();
Calendar calendar = Calendar.getInstance();
java.sql.Date ourJavaDateObject = new java.sql.Date(calendar.getTime().getTime());
try {
Class.forName(driverName);
con = DriverManager.getConnection(url, user, password);
String sql = "insert into electricity values ( ?,?,?,?,?)";
ps = con.prepareStatement(sql);
ps.setString(1, ac);
ps.setString(2, sno);
ps.setString(3, amount);
ps.setDate(4, ourJavaDateObject);
ps.setString(5, key);
int updatequery=ps.executeUpdate();
    if(updatequery!=0)
    {
 	   
 	   out.println("Bill Payed Successfully");
 	   out.println("you transaction id is:" +key);
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