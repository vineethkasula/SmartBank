<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
    <% String a=session.getAttribute("user").toString();
        out.print(a);
		try{
		Class.forName("com.mysql.jdbc.Driver");
	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
	    String query ="SELECT *FROM bank where username='"+a+"';";
	    String query1 ="SELECT *FROM accounts where username='"+a+"';";
        PreparedStatement ps=conn.prepareStatement(query);
        ResultSet rs = ps.executeQuery(query); 
        HttpSession d=request.getSession(true);
        while(rs.next())
        {
        	Double f= rs.getDouble("amount");
        	String fg= rs.getString("id");
        	String fp= rs.getString("date");
        	Double fs= rs.getDouble("charge");
        	String fo= rs.getString("beneficiaryname");
        	String fw= rs.getString("accountnumber");
        	d.setAttribute("accountnumber",fw);
        	String fd=rs.getString("baccountnumber");
        }
        ps.close();
        PreparedStatement pse=conn.prepareStatement(query1);
        ResultSet rse = pse.executeQuery(query); 
        rs.next();
        String number=rse.getString("accountno");
        Double balance= rse.getDouble("amount");
        String type=rse.getString("accounttype");
        session.setAttribute("type",type);
        String hj=session.getAttribute("type").toString();
        out.print(hj);
        pse.close();
        
        
	}
		catch (Exception e){
			
	        out.print("wrong username or password");
			}%>
<!DOCTYPE html>
<html>
<head>
<title>My Account</title>
<link rel="icon" href="fevi.png" type="image/gif" sizes="16x16">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
@import url(http://fonts.googleapis.com/css?family=Lato:400,700);
* {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  font-family: 'Lato';
}

h1 {
  font-size: 2em;
  padding: 2em;
  text-align: center;
}

.accordion dl {
}

.accordion dt > a {
  text-align: center;
  font-weight: 700;
  padding: 2em;
  display: block;
  text-decoration: none;
  color: #fff;
  -webkit-transition: background-color 0.5s ease-in-out;
}
.accordion dd {
  background-color: #1abc9c;
  color:#fafafa;
  font-size: 1em;
  line-height: 1.5em;
}
.accordion dd > p {
  padding: 1em 2em 1em 2em;
}

.accordion {
  position: relative;
  background-color: #16a085;
}

.container {
  max-width: 960px;
  margin: 0 auto;
  padding: 2em 0 2em 0;
}

.accordionTitle {
  background-color: #22313F;
  border-bottom: 1px solid #2c3e50;
}
.accordionTitle:before {
  content: "+";
  font-size: 1.5em;
  line-height: 0.5em;
  float: left;
  -moz-transition: -moz-transform 0.3s ease-in-out;
  -o-transition: -o-transform 0.3s ease-in-out;
  -webkit-transition: -webkit-transform 0.3s ease-in-out;
  transition: transform 0.3s ease-in-out;
}
.accordionTitle:hover {
  background-color: #2c3e50;
}

.accordionTitleActive {
  background-color:#34495e;
}
.accordionTitleActive:before {
  -webkit-transform: rotate(-225deg);
  -moz-transform: rotate(-225deg);
  transform: rotate(-225deg);
}

.accordionItem {
  height: auto;
  overflow: hidden;
}
@media all {
  .accordionItem {
    max-height: 50em;
    -moz-transition: max-height 1s;
    -o-transition: max-height 1s;
    -webkit-transition: max-height 1s;
    transition: max-height 1s;
  }
}
@media screen and (min-width: 48em) {
  .accordionItem {
    max-height: 15em;
    -moz-transition: max-height 0.5s;
    -o-transition: max-height 0.5s;
    -webkit-transition: max-height 0.5s;
    transition: max-height 0.5s;
  }
}

.accordionItemCollapsed {
  max-height: 0;
}

.animateIn {
  -webkit-animation-name: accordionIn;
  -webkit-animation-duration: 0.65s;
  -webkit-animation-iteration-count: 1;
  -webkit-animation-direction: normal;
  -webkit-animation-timing-function: ease-in-out;
  -webkit-animation-fill-mode: both;
  -webkit-animation-delay: 0s;
  -moz-animation-name: normal;
  -moz-animation-duration: 0.65s;
  -moz-animation-iteration-count: 1;
  -moz-animation-direction: alternate;
  -moz-animation-timing-function: ease-in-out;
  -moz-animation-fill-mode: both;
  -moz-animation-delay: 0s;
  animation-name: accordionIn;
  animation-duration: 0.65s;
  animation-iteration-count: 1;
  animation-direction: normal;
  animation-timing-function: ease-in-out;
  animation-fill-mode: both;
  animation-delay: 0s;
}

.animateOut {
  -webkit-animation-name: accordionOut;
  -webkit-animation-duration: 0.75s;
  -webkit-animation-iteration-count: 1;
  -webkit-animation-direction: alternate;
  -webkit-animation-timing-function: ease-in-out;
  -webkit-animation-fill-mode: both;
  -webkit-animation-delay: 0s;
  -moz-animation-name: accordionOut;
  -moz-animation-duration: 0.75s;
  -moz-animation-iteration-count: 1;
  -moz-animation-direction: alternate;
  -moz-animation-timing-function: ease-in-out;
  -moz-animation-fill-mode: both;
  -moz-animation-delay: 0s;
  animation-name: accordionOut;
  animation-duration: 0.75s;
  animation-iteration-count: 1;
  animation-direction: alternate;
  animation-timing-function: ease-in-out;
  animation-fill-mode: both;
  animation-delay: 0s;
}

@-webkit-keyframes accordionIn {
  0% {
    opacity: 0;
    -webkit-transform: scale(0.8);
  }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
  }
}
@-moz-keyframes accordionIn {
  0% {
    opacity: 0;
    -moz-transform: scale(0.8);
  }
  100% {
    opacity: 1;
    -moz-transform: scale(1);
  }
}
@keyframes accordionIn {
  0% {
    opacity: 0;
    transform: scale(0.8);
  }
  100% {
    opacity: 1;
    transform: scale(1);
  }
}
@-webkit-keyframes accordionOut {
  0% {
    opacity: 1;
    -webkit-transform: scale(1);
  }
  100% {
    opacity: 0;
    -webkit-transform: scale(0.8);
  }
}
@-moz-keyframes accordionOut {
  0% {
    opacity: 1;
    -moz-transform: scale(1);
  }
  100% {
    opacity: 0;
    -moz-transform: scale(0.8);
  }
}
@keyframes accordionOut {
  0% {
    opacity: 1;
    transform: scale(1);
  }
  100% {
    opacity: 0;
    transform: scale(0.8);
  }
}

</style>
<h2 align="right"><a href="dash1.jsp">My Dashboard</h2>
<body class="w3-sand">

  <div class="w3-top w3-white">
    <ul class="w3-navbar" id="myNavbar">
      <li class="w3-hide-medium w3-hide-large w3-opennav w3-right">
        <a class="w3-hover-black" href="javascript:void(0);" onclick="toggleFunction()" title="Toggle Navigation Menu">
          <i class="fa fa-bars"></i>
        </a>
      </li>
      <li class="w3-left-align"><a href="newHome.html">HOME</a></li>
      <li class="w3-hide-small"><a href="#about"><i class="fa fa-user"></i> ABOUT</a></li>
      <li class="w3-hide-small"><a href="#banksmart"><i class="fa fa-handshake-o"></i> CUSTOMER CARE</a></li>
      <li class="w3-hide-small w3-right">
        </a>
      </li>
    </ul>

    <!-- Navbar on small screens -->
    <div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium">
      <ul class="w3-navbar w3-left-align w3-white">
        <li><a href="#about" onclick="toggleFunction()">ABOUT</a></li>
        <li><a href="#custmorcare" onclick="toggleFunction()">CUSTMOR CARE</a></li>
           <li><a href="newHome.html" onclick="toggleFunction()">home page</a></li>
      </ul>
    </div>
  </div>
  <div class="container">
            <h1>My Account</h1>
         
            <div class="accordion">
              <dl>
                <dt><a class="accordionTitle" href="#">Balance Enquiry</a></dt>
                <dd class="accordionItem accordionItemCollapsed">
                  <ul class="w3-ul">
                    <li class="w3-hover-teal">Account-type: <%String hy=session.getAttribute("type").toString(); out.print(hy); %></li>
                    <li class="w3-hover-teal">Account Number:<%String iu=session.getAttribute("number").toString();out.print(iu); %></li>
                    <li class="w3-hover-teal">Balance:   <%String yo=session.getAttribute("balance").toString();out.print(yo);%>      </li>
                    </ul>


                </dd>
                <dt><a href="#" class="accordionTitle">Mini Statement</a></dt>
                <dd class="accordionItem accordionItemCollapsed">
                  <table class="w3-table">
                        <tr>
                        <th>Date</th>
                        <th>Remarks</th>
                        <th>Amount</th>
                        </tr> 
                          <tr>
                        <td><%try{
                        	Class.forName("com.mysql.jdbc.Driver");
                    	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
                    	    String query ="SELECT *FROM bank where username='"+a+"' or beneficiaryname='"+a+"';";
                            PreparedStatement ps=conn.prepareStatement(query);
                            ResultSet rs = ps.executeQuery(query);
                            while(rs.next())
                            {
                            	String ri= rs.getString("date");
                            	out.print("<html>");
                            	out.print("<body>");
                            	out.println(ri);
                            	out.println("<br/");
                            	out.println("</body>");
                            	out.println("</html>");
                            	
                            }
                            
                         
                    }
                catch(Exception e)
                {
                }%></td>
                        <td><%try{
            		Class.forName("com.mysql.jdbc.Driver");
            	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
            	    String query ="SELECT *FROM bank where username='"+a+"';";
                    PreparedStatement ps=conn.prepareStatement(query);
                    ResultSet rs = ps.executeQuery(query);
                    while(rs.next())
                    {
                    	String fl=rs.getString("beneficiaryname");
                    	String fo= rs.getString("baccountnumber");
                    	out.print("<html>");
                    	out.print("<body>");
                    	out.print("transferred to:");
                    	out.println(fl);
                    	out.println("(");
                    	out.println(fo);
                    	out.println(")");
                    	out.println("<br/");
                    	out.println("</body>");
                    	out.println("</html>");
                    	
                    }
                    String query1 ="SELECT *FROM bank where beneficiaryname='"+a+"';";
                    PreparedStatement ps1=conn.prepareStatement(query1);
                    ResultSet rs1 = ps1.executeQuery(query1);
                    while(rs1.next())
                    {
                    	String fo1= rs1.getString("username");
                    	String fop=rs1.getString("accountnumber");
                    	out.print("<html>");
                    	out.print("<body>");
                    	out.print("transferred by:");
                    	out.println(fo1);
                    	out.print("(");
                    	out.println(fop);
                    	out.println(")");
                    	out.println("<br/");
                    	out.println("</body>");
                    	out.println("</html>");
                    	
                    }
                    
                    
                    }
                catch(Exception e)
                {
                }%></td>
                        <td><%try{
            		Class.forName("com.mysql.jdbc.Driver");
            	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
            	    String query ="SELECT *FROM bank where username='"+a+"';";
                    PreparedStatement ps=conn.prepareStatement(query);
                    ResultSet rs = ps.executeQuery(query);
                    while(rs.next())
                    {
                    	Double fi= rs.getDouble("amount");
                    	out.print("<html>");
                    	out.print("<body>");
                    	out.println(fi);
                    	out.println("<br/");
                    	out.println("</body>");
                    	out.println("</html>");
                    	
                    }
                    String query1 ="SELECT *FROM bank where beneficiaryname='"+a+"';";
                    PreparedStatement ps1=conn.prepareStatement(query1);
                    ResultSet rs1 = ps1.executeQuery(query1);
                    while(rs1.next())
                    {
                    	Double fi1= rs1.getDouble("amount");
                    	out.print("<html>");
                    	out.print("<body>");
                    	out.println(fi1);
                    	out.println("<br/");
                    	out.println("</body>");
                    	out.println("</html>");
                    	
                    }
                    }
                catch(Exception e)
                {
                }%></td>
                        </tr>
                        </table>
                </dd>
                <dt><a href="#" class="accordionTitle">Transaction Account</a></dt>
                <dd class="accordionItem accordionItemCollapsed">
                  <ul class="w3-ul">
                    <li class="w3-hover-teal">Account Type:<%String iop=session.getAttribute("type").toString(); out.print(iop); %></li>
                    <li class="w3-hover-teal">Customer Name:<%String iops=session.getAttribute("user").toString(); out.print(iops); %></li>
                    <li class="w3-hover-teal">Transaction Limit:50000</li>
                    <li class="w3-hover-teal">Available Balance:<%String yop=session.getAttribute("balance").toString();out.print(yop);%> </li>
                    <li class="w3-hover-teal">Unclear Balance:0</li>
                    </ul>


                </dd>

                <dt><a href="#" class="accordionTitle">E-passbook</a></dt>
                <dd class="accordionItem accordionItemCollapsed">
                  <table class="w3-table">
                        <tr>
                        <th>Date</th>
                        <th>Remarks</th>
                        <th>Amount</th>
                        </tr>
                        <tr class="w3-hover-teal">
                        <td><%try{
            		Class.forName("com.mysql.jdbc.Driver");
            	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
            	    String query ="SELECT *FROM bank where username='"+a+"' or beneficiaryname='"+a+"';";
                    PreparedStatement ps=conn.prepareStatement(query);
                    ResultSet rs = ps.executeQuery(query);
                    while(rs.next())
                    {
                    	String ri= rs.getString("date");
                    	out.print("<html>");
                    	out.print("<body>");
                    	out.println(ri);
                    	out.println("<br/");
                    	out.println("</body>");
                    	out.println("</html>");
                    	
                    }
                    
                 }
                   
                catch(Exception e)
                {
                }%></td>
                        <td><%try{
            		Class.forName("com.mysql.jdbc.Driver");
            	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
            	    String query ="SELECT *FROM bank where username='"+a+"';";
                    PreparedStatement ps=conn.prepareStatement(query);
                    ResultSet rs = ps.executeQuery(query);
                    while(rs.next())
                    {
                    	String li=rs.getString("beneficiaryname");
                    	String si= rs.getString("baccountnumber");
                    	out.print("<html>");
                    	out.print("<body>");
                    	out.print("transferred to:");
                    	out.println(li);
                    	out.println("(");
                    	out.println(si);
                    	out.println(")");
                    	out.println("<br/");
                    	out.println("</body>");
                    	out.println("</html>");
                    	
                    }
                    String query1 ="SELECT *FROM bank where beneficiaryname='"+a+"';";
                    PreparedStatement ps1=conn.prepareStatement(query1);
                    ResultSet rs1 = ps1.executeQuery(query1);
                    while(rs1.next())
                    {
                    	String fo1= rs1.getString("username");
                    	String foa=rs1.getString("accountnumber");
                    	out.print("<html>");
                    	out.print("<body>");
                    	out.print("transferred by:");
                    	out.println(fo1);
                    	out.println("(");
                    	out.println(foa);
                    	out.println(")");
                    	out.println("<br/");
                    	out.println("</body>");
                    	out.println("</html>");
                    	
                    }
                    
                    
                    
                    }
                catch(Exception e)
                {
                }%></td>
                        <td><%try{
            		Class.forName("com.mysql.jdbc.Driver");
            	    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
            	    String query ="SELECT *FROM bank where username='"+a+"';";
                    PreparedStatement ps=conn.prepareStatement(query);
                    ResultSet rs = ps.executeQuery(query);
                    while(rs.next())
                    {
                    	Double chi= rs.getDouble("amount");
                    	out.print("<html>");
                    	out.print("<body>");
                    	out.println(chi);
                    	out.println("<br/");
                    	out.println("</body>");
                    	out.println("</html>");
                    	
                    }
                    String query1 ="SELECT *FROM bank where beneficiaryname='"+a+"';";
                    PreparedStatement ps1=conn.prepareStatement(query1);
                    ResultSet rs1 = ps1.executeQuery(query1);
                    while(rs1.next())
                    {
                    	Double fi1= rs1.getDouble("amount");
                    	out.print("<html>");
                    	out.print("<body>");
                    	out.println(fi1);
                    	out.println("<br/");
                    	out.println("</body>");
                    	out.println("</html>");
                    	
                    }
                    }
                catch(Exception e)
                {
                }%></td>
                        </tr>
                        </table>
                </dd>
              </dl>
            </div>
  </div>



<script>

( function( window ) {
'use strict';
function classReg( className ) {
  return new RegExp("(^|\\s+)" + className + "(\\s+|$)");
}
var hasClass, addClass, removeClass;

if ( 'classList' in document.documentElement ) {
  hasClass = function( elem, c ) {
    return elem.classList.contains( c );
  };
  addClass = function( elem, c ) {
    elem.classList.add( c );
  };
  removeClass = function( elem, c ) {
    elem.classList.remove( c );
  };
}
else {
  hasClass = function( elem, c ) {
    return classReg( c ).test( elem.className );
  };
  addClass = function( elem, c ) {
    if ( !hasClass( elem, c ) ) {
      elem.className = elem.className + ' ' + c;
    }
  };
  removeClass = function( elem, c ) {
    elem.className = elem.className.replace( classReg( c ), ' ' );
  };
}

function toggleClass( elem, c ) {
  var fn = hasClass( elem, c ) ? removeClass : addClass;
  fn( elem, c );
}
var classie = {
  hasClass: hasClass,
  addClass: addClass,
  removeClass: removeClass,
  toggleClass: toggleClass,
  has: hasClass,
  add: addClass,
  remove: removeClass,
  toggle: toggleClass
};
if ( typeof define === 'function' && define.amd ) {
  define( classie );
} else {
  window.classie = classie;
}
})( window );
var $ = function(selector){
  return document.querySelector(selector);
}
var accordion = $('.accordion');
accordion.addEventListener("click",function(e) {
  e.stopPropagation();
  e.preventDefault();
  if(e.target && e.target.nodeName == "A") {
    var classes = e.target.className.split(" ");
    if(classes) {
      for(var x = 0; x < classes.length; x++) {
        if(classes[x] == "accordionTitle") {
          var title = e.target;
          var content = e.target.parentNode.nextElementSibling;
          classie.toggle(title, 'accordionTitleActive');
          if(classie.has(content, 'accordionItemCollapsed')) {
            if(classie.has(content, 'animateOut')){
              classie.remove(content, 'animateOut');
            }
            classie.add(content, 'animateIn');
          }else{
             classie.remove(content, 'animateIn');
             classie.add(content, 'animateOut');
          }
          classie.toggle(content, 'accordionItemCollapsed');
        }
      }
    }
  }
});


// Change style of navbar on scroll
window.onscroll = function() {myFunction()};
function myFunction() {
    var navbar = document.getElementById("myNavbar");
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        navbar.className = "w3-navbar" + " w3-card-2" + " w3-animate-top" + " w3-white";
    } else {
        navbar.className = navbar.className.replace(" w3-card-2 w3-animate-top w3-white", "");
    }
}

// Used to toggle the menu on small screens when clicking on the menu button
function toggleFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

// For dropdown navigation bar
var x = document.getElementById("myDropnav");
function w3_open1() {
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}
function w3_close() {
    x.className = x.className.replace(" w3-show", "");
}

var x = document.getElementById("myDropnav");
function w3_open() {
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}
function w3_close() {
    x.className = x.className.replace(" w3-show", "");
}



</script>
</body>
</html>
    