<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="icon" href="fevi.png" type="image/gif" sizes="16x16">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h3 class="w3-center w3-text-teal">Account details are verified.</h3> </br>
<div id="id01">
  <div class="w3-pale-red w3-dispalay-middle">
  <form action="transferresult3">
  <label><p class="w3-center w3-text-blue w3-large" name="amount">Amount</p></label>
    <input class="w3-input" type="text" placeholder="Enter amount" name="amount"><br/>
    <label><p class="w3-center w3-text-blue w3-large">IFSC</p></label>
    <input class="w3-input " type="text" placeholder="Enter Ifsc"></br>
     <button type="submit" class="w3-btn" style="margin-left: 45%;">Send Money</button></br>
      
      </form>
   </div>
  </div>

<div class="w3-center w3-margin-top  w3-padding-64 w3-text-blue">
<h3 class="w3-xlarge">Note:</h3>
for every 0-1000 rupees transaction no money is charged.</br>
for every 1000-10,000 rupees transaction 2 rupees are deducted.</br>
for every 10,000-50,000 rupees transaction 5 rupees are deducted.</br>
for every 50,000-1,00,000 rupees transaction 25 rupees are deducted.</br>
</div>


</body>
</html>