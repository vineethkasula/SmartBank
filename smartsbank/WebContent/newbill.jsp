<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<button name="educational" value="Educational" onClick="edu()">Educational</button>
<button name="Medical" value="med" onClick="med()">Medical</button>
<button name="Phone bills" value="bill" onClick="bills()">Phone bill Payments</button>
<button name="Governmentbills" value="corp" onClick="corporate()">Government Bills</button>
<script type="text/javascript">
function edu()

{
	var url="bill1.jsp";
	window.location(url);
}
function med()
{
	var url="medical.jsp"
		window.location(url);
	}
	function bills()
	{
       var url="phone.jsp";
       window.location(url);
		}
	function corporate()
	{
      var url="Corporate,jsp.jsp"
    	  window.location(url);
		}


</script>

</span>
</body>
</html>