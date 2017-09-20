<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>

<head>
	<meta charset="utf-8">
	<META http-equiv="refresh" content="2.77777777;URL=dash1.jsp">
	<title>Demo: Welcome to Internet Banking</title>
	<meta name="description" content="Welcome to Internet Banking.">

	<!--iOS -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/main.css">
	<script src="js/vendor/modernizr-2.6.2.min.js"></script>
	<style type="text/css">
	.back-link a {
		color: #4ca340;
		text-decoration: none; 
		border-bottom: 1px #4ca340 solid;
	}
	.back-link a:hover,
	.back-link a:focus {
		color: #408536; 
		text-decoration: none;
		border-bottom: 1px #408536 solid;
	}
	 #content {
        margin: 0 auto;
        padding-bottom: 50px;
        width: 80%;
        max-width: 978px;
    }  
	h1 {
		height: 100%;
		/* The html and body elements cannot have any padding or margin. */
		margin: 0;
		font-size: 14px;
		font-family: 'Open Sans', sans-serif;
		font-size: 32px;
		margin-bottom: 3px;
	}
	.entry-header {
		text-align: top;
		margin: 0 auto 50px auto;
		width: 80%;
        max-width: 978px;
		position: absolute-top;
		z-index: 10001;
	}
	#demo-content {
		padding-top: 100px;
	}
	</style>
</head>
<body class="demo">


				
	<div id="demo-content">

		<header class="entry-header">
	
		</header>

		<div id="loader-wrapper">
			<div id="loader"></div>

			<div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>

		</div>

		<%
		
		String l=request.getParameter("first");
		String p=request.getParameter("last");
		String dbUsername,dbPassword;
		try{
		Class.forName("com.mysql.jdbc.Driver");    
	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
	    String query ="SELECT *FROM signin where username='"+l+"' and password='"+p+"';";
        PreparedStatement ps=conn.prepareStatement(query);
        ResultSet rs = ps.executeQuery(query); 
        rs.next();
        dbUsername = rs.getString("username");
        dbPassword = rs.getString("password");
        	if(dbUsername.equals(l) && dbPassword.equals(p))
        	{
        		HttpSession d=request.getSession(true);
        		d.setAttribute("user",l);
        		String query1 ="SELECT *FROM accounts where username='"+l+"';";
        		PreparedStatement pse=conn.prepareStatement(query1);
                ResultSet rse = pse.executeQuery(query1); 
                rse.next();
                String number=rse.getString("accountno");
                Double balance= rse.getDouble("amount");
                String type=rse.getString("accounttype");
                d.setAttribute("type",type);
                d.setAttribute("number", number);
                d.setAttribute("balance", balance);
                pse.close();
          
        		
        		
        	}
        	else
        	{
        		out.print("login failed");
        	}
      }
		
        
		catch (ClassNotFoundException | SQLException e){
			
        out.print("wrong username or password");
		}
		
		
		%>
			
 
  
    <script type="text/javascript">
    function bills()
    {
        var url="bill.jsp";
        window.location(url);

     }
    function accsum()
    {
        var url="acsum.jsp";
        window.location(url);
    }
    function redirect()
    {
    var url = "dashboard.jsp";
    window.location(url);
    }
    function transfer()
    {

var url = "transfer.jsp";
window.location(url);
     }
    function summary()
    {

var url = "payments.jsp";
window.location(url);
    }
    function loans()
    {

var url = "loans.jsp";
window.location(url);
        }
        
    </script>
    <h5 align="right"><a href="logout.jsp">Logout<h5>
	   
         
	

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.1.min.js"><\/script>')</script>
	<script src="js/main.js"></script>

</html>

