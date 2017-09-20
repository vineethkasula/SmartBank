<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="me" method="get" action="electricity">
<select name="choose" onchange="yesnoCheck(this);">
<option value="select">Select</option>
    <option value="Electricity">Electricity</option>
    <option value="Gas">Gas</option>
    </select>
 <div id="ifYes" style="display: none;">
    Enter Account number <input type="text" id="acno1" name="acno1" /><br />
 Enter Service Number<input type="text" id="sno1" name="sno1" /><br />
 Enter Amount<input type="text" id="amount1" name="amount1"/><br />
  <input type="submit" name="submit" value="submit">
 </div>
 </form>
 <form name="me1" method="get" action="gas">
 <div id="ifno" style="display: none;">
 <select name="my" id="gas">
 <option value="Indian">Indian</option>
 <option value="Bharath">Bharath</option>
  <option value="Hindustan">Hindustan</option>
  <option value="HP">HP</option>
 </select>
  Enter Account number<input type="text" id="acno" name="acno" /><br />
  Enter Service Number<input type="text" id="sno" name="sno" /><br />
  Enter Amount<input type="text" id="amount" name="amount"/><br />
  <input type="submit" name="submit" value="submit">
  </div>
  </form>
    <script>
    function yesnoCheck(that) {
        if (that.value == "Electricity") {
            alert("check");
            document.getElementById("ifno").style.display = "none";
    document.getElementById("ifYes").style.display = "block";
        } else if(that.value=="Gas") {
            alert("enter details")
             document.getElementById("ifYes").style.display="none" ;
            document.getElementById("ifno").style.display = "block";
        }
        else if(that.value=="select")
            {
            alert("please check the option");
        	  document.getElementById("ifno").style.display = "none";
        	  document.getElementById("ifYes").style.display = "none";
            }
    }
</script>
</body>
</html>