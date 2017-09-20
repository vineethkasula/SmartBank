<!DOCTYPE html>
<html>
<head>
<title> LOGIN</title>
<link rel="icon" href="fevi.png" type="image/gif" sizes="16x16">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif;}
body, html {
    height: 100%;
    color: #777;
    line-height: 1.8;



}


.w3-wide {letter-spacing: 10px;}
.w3-hover-opacity {cursor: pointer;}







.box {
  position: relative;
  display: inline-block;

  border-radius: 5px;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
  border-radius: 5px;
  -webkit-transition: all 0.6s cubic-bezier(0.165, 0.84, 0.44, 1);
  transition: all 0.6s cubic-bezier(0.165, 0.84, 0.44, 1);
}


.box:hover {
  -webkit-transform: scale(1.05, 1.05);
  transform: scale(1.05, 1.05);
}

.box:hover::after {
    opacity: 1;
}


</style>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top w3-white">
  <ul class="w3-navbar" id="myNavbar">
    <li class="w3-hide-medium w3-hide-large w3-opennav w3-right">
      <a class="w3-hover-black" href="javascript:void(0);" onclick="toggleFunction()" title="Toggle Navigation Menu">
        <i class="fa fa-bars"></i>
      </a>
    </li>  
    <li class="w3-left-align"><a href="newHome.html">HOME</a></li>
    <li class="w3-hide-small"><a href="#about"><i class="fa fa-user"></i> ABOUT</a></li>
    <li class="w3-hide-small"><a href="#banksmart"><i class="fa fa-handshake-o"></i> CUSTMOR CARE</a></li>
    <li class="w3-hide-small w3-right">
      </a>
    </li>
  </ul>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium">
    <ul class="w3-navbar w3-left-align w3-white">
      <li><a href="#about" onclick="toggleFunction()">ABOUT</a></li>
      <li><a href="#custmorcare" onclick="toggleFunction()">CUSTOMER CARE</a></li>
    </ul>
  </div>
</div>


<ul class="w3-ul w3-card-4 w3-animate-top t1">
  <li class="w3-padding-64">

    <img src="user.png" class="w3-left w3-margin-right" style="width:100px">
    <span class="w3-large">Welcome!</span><br>
    <span><% String h=session.getAttribute("user").toString();
    out.print(h);%>
    <h3 align="right"><a href="logout.jsp">Logout<h3><%
    
    %></span>
  </li>
</ul>

<div class="main">
<div class="w3-card-4 w3-margin-top w3-center w3-sand  w3-hover-opacity w3-mobile box" style="width:320px;height:200px;display:inline-block;margin-left:17%;);">
  <a href="myacc.jsp">
  <img src="user1.png" alt="Person" style="width:60%">
  </a>
  <div class="w3-container w3-center">
    <h4><b>My Account</b></h4>
  </div>
</div>
<div class="w3-card-4 w3-margin-top w3-center w3-khaki w3-hover-opacity w3-mobile box" style="width:320px;height:200px;display:inline-block;margin-left:17%;">
  <a href="fundtransfer.jsp">
  <img src="transfer.png" alt="Person" style="width:60%" >
    </a>
  <div class="w3-container w3-center"  >
       <h4><b>Fund Transfer</b></h4>
  </div>
</div>

<div class="w3-card-4  w3-margin-top w3-center w3-pale-red w3-hover-opacity box" style="width:320px;height:200px;display:inline-block;margin-left:17%;">
 <a href="Fixeddeposits.jsp"> <img src="money1.png" alt="Person" style="width:60%"> </a>
  <div class="w3-container w3-center">
    <h4><b>E-Deposit</b></h4>
  </div>
</div>

<div class="w3-card-4 w3-margin-top w3-center w3-pale-yellow w3-hover-opacity box" style="width:320px;height:200px;display:inline-block;margin-left:17%;">
 <a href="billpay.jsp"> <img src="billpay.png" alt="Person" style="width:60%"></a>
  <div class="w3-container w3-center">
    <h4><b>Bill Payment</b></h4>
  </div>
</div>


<div class="w3-card-4 w3-margin-top w3-margin-bottom w3-center w3-pale-green w3-hover-opacity box" style="width:320px;height:200px;display:inline-block;margin-left:17%;">
 <a href="loans.jsp"> <img src="merchant.png" alt="Person" style="width:60%"></a>
  <div class="w3-container w3-center">
    <h4><b>Loans</b></h4>
  </div>
</div>

<div class="w3-card-4 w3-margin-top w3-margin-bottom w3-center w3-pale-blue w3-hover-opacity box" style="width:320px;height:200px;display:inline-block;margin-left:17%;">

 <a href="request.jsp"><img src="request.png" class="w3-center" style="width:60%;"></a>

  <div class="w3-container w3-center ">
    <h4><b>Request</b></h4>
  </div>
</div>

<!-- Footer -->

<footer class="w3-center w3-black w3-padding-64 w3-opacity w3-hover-opacity-off">
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-text-indigo"></i>
    <i class="fa fa-instagram w3-hover-text-purple"></i>
    <i class="fa fa-snapchat w3-hover-text-yellow"></i>
    <i class="fa fa-pinterest-p w3-hover-text-red"></i>
    <i class="fa fa-twitter w3-hover-text-light-blue"></i>
    <i class="fa fa-linkedin w3-hover-text-indigo"></i>
  </div>

</footer>


<script>


// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}

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



//left carousel

var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 2000); // Change image every 2 seconds
}


//accordings

function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

</script>

</body>
</html>
