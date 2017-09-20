<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<span id="123">
<form method="get" action="educational.jsp">
<select name="choose">
   <option value="Chandigarh University">Chandigarh University</option>
   <option value="Punjab university">Punjab University</option>
   <option value="Chitkara University">Chitkara University</option>
   <option value="Dhesbhagath University">Deshbhagat University</option>
<option value="Chandigarh Group of colleges">CGC Landra</option>
</select>
</span>
Enter amount:<input type="text" name="amount">
Enter account number:<input type="text" name="ac" >
Enter IFSC code:<input type="text" name="ifsc">
<br>
Enter Student UID:<input type="number" name="uid"></br>
<input type="submit" name="submit" value="submit">
<form>
</body>
</html>