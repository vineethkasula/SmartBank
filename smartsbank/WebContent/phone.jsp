<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="phone1">
<select name="choose">
   <option value="Airtel">Airtel</option>
   <option value="Vodofone">Vodofone</option>
   <option value="Idea">Idea</option>
   <option value="Docomo">Docomo</option>
<option value="BSNL">BSNL</option>
</select>
<select name="choose11">
   <option value="Airtel">Postpaid</option>
   <option value="Vodofone">LandLine</option>
 
</select>
</span>
<br>
Enter amount:<input type="text" name="amount">
</br>
<br>
Enter account number:<input type="text" name="ac" >
</br>
<br>
Enter IFSC code:<input type="text" name="ifsc">
</br>
<br>
Enter Mobile Number:<input type="number" name="uid"></br>
<input type="submit" name="submit" value="submit">
</form>

</body>
</html>