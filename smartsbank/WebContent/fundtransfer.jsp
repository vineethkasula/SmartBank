<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
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
li {
  list-style: none;
  font-size: 125%;
  margin-bottom: 1em;
  position: relative;
  float:left;
  margin-left: 30px;
}

input[type="radio"] {
  display: none;
}

input[type="radio"]+label {
  padding-left: 2em;
}

input[type="radio"]+label:before {
    content: '';
    background: #ececec;
    border-radius: 50%;
    width: 20px;
    height: 20px;
    display: inline-block;
    border: 1px solid #ccc;
    z-index: -1;
    position: absolute;
    left: 0;
    transition: all ease .5s;
}


input[type="radio"]:checked+label:before {
    border-radius: 50% 0 50% 50%;
    transition: all ease .75s;
    transform: rotate( 45deg );
    background: #666;
    border: 1px solid #666;
}

</style>
<body>

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



<body>
<div class="w3-container w3-margin-top w3-padding-64" style="margin-left:14%;">
  
  <ul>
    <li>
      <input type="radio" id="r-1"  name="rad"/>
      <label for="r-1">Same Bank Account</label>

    </li>
    <li>
      <input type="radio" id="r-2" name="rad"/>
      <label for="r-2">Other Bank Account</label>
    </li>

    <li>
      <input type="radio" id="r-3" name="rad"/>
      <label for="r-3">Quick Transfer</label>
    </li>

    <li>
      <input type="radio" id="r-4" name="rad"/>
      <label for="r-4">Status Enquiry</label>
    </li>
  </ul>


</div>


<div class="w3-center" id='show-me' style='display:none;margin-left:35%;'>


    <form class="w3-container" style="width:50%;"" action="transferresult2">
       <h3>Add Benificiary</h3>
    <input class="w3-input" type="text" placeholder="Enter benificary name" name="bn">
    <label><br/></label><br/>

    <input class="w3-input" type="text" placeholder="Enter benificary account number" name="acc">
    <label></br></label><br/>

   <button type="submit" class="w3-btn" >Check</button>

    </form>
</div>

<div class="w3-center" id='show-me4' style='display:none;margin-left:35%;'>


    <form class="w3-container" style="width:50%;"" action="issue" method="get">
       <h3 class="w3-text-teal w3-jumbo">Report an Issue</h3>
    <input class="w3-input w3-blue" type="text" placeholder="Issue Regarding" name="issue">
    <label><br/></label><br/>

    <input class="w3-input w3-blue" type="text" placeholder="Transastion Number" name="number">
    <label></br></label><br/>

   <button type="submit" class="w3-btn" >Report</button>

    </form>
</div>



<div class="w3-center w3-card-8 w3-red" id='show-me2' style='display:none;margin-left:40%;height:300px;width:300px;'>

        <div style="padding-top:35%;">  <i class="fa fa-wrench w3-jumbo w3-center w3-text-blue" aria-hidden="true"></i>

            <p>Under Construction</p>
       </div>

</div>



<div class=" w3-card-4" style="width:80%;margin-left:10%;" >

  <div class="w3-row-padding w3-center" style="margin-top:64px">
    <div class="w3-quarter">
      <i class=" w3-xxlarge w3-margin-top fa fa-heart aria-hidden="true" w3-margin-bottom  w3-center"></i>
      <p class="">24X7 Care</p>
      <p>Need help? Click here. You can also talk to us on 0120 3888 3888 or request a call back from us by dialling 9643-979797.</p>
    </div>
    <div class="w3-quarter">
      <i class= "w3-xxlarge w3-margin-top fa fa-shield aria-hidden="true" w3-margin-bottom "></i>
      <p class=""> Trust</p>
      <p>Your money is yours! All refunds come with no question asked guarantee.</p>
    </div>
    <div class="w3-quarter">
      <i class=" w3-xxlarge w3-margin-top fa fa-certificate aria-hidden="true" w3-margin-bottom"></i>
      <p class="">100% Assurance</p>
      <p> We provide 100% assurance. If you have any issue, your money is immediately refunded. Sit back and enjoy your banking.</p>
    </div>
    <div class="w3-quarter">
      <i class=" w3-xxlarge w3-margin-top fa fa-thumbs-up aria-hidden="true" w3-margin-bottom w3-large"></i>
      <p class="">Our Promise</p>
      <p>Happiness is guaranteed at SmartBank. If we fall short of your expectations, give us a shout.</p>
    </div>
  </div>
</div>



<div id="id01" class="w3-modal">

  <div class="w3-modal-content w3-pale-red">

   <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright w3-xxlarge w3-black">&times;</span>

    
    </div>
</div>

<!-- Footer -->

<footer class="w3-center w3-black w3-padding-64 w3-opacity w3-hover-opacity-off w3-margin-top">
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-text-indigo"></i>
    <i class="fa fa-instagram w3-hover-text-purple"></i>
    <i class="fa fa-snapchat w3-hover-text-yellow"></i>
  <i class="fa fa-pinterest-p w3-hover-text-red"></i>
    <i class="fa fa-twitter w3-hover-text-light-blue"></i>
    <i class="fa fa-linkedin w3-hover-text-indigo"></i>
  </div>

</footer>





  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<script>

$(document).ready(function() {
   $('input[type="radio"]').click(function() {
       if($(this).attr('id') == 'r-1') {
            $('#show-me').show();
       }

       else {
            $('#show-me').hide();
       }
   });
});


$(document).ready(function() {
   $('input[type="radio"]').click(function() {
       if($(this).attr('id') == 'r-2') {
            $('#show-me2').show();
       }

       else {
            $('#show-me2').hide();
       }
   });
});

$(document).ready(function() {
   $('input[type="radio"]').click(function() {
       if($(this).attr('id') == 'r-3') {
            $('#show-me').show();
       }

       else {
            $('#show-m').hide();
       }
   });
});

$(document).ready(function() {
   $('input[type="radio"]').click(function() {
       if($(this).attr('id') == 'r-4') {
            $('#show-me4').show();
       }

       else {
            $('#show-me4').hide();
       }
   });
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
