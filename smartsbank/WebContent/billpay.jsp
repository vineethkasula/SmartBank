<!DOCTYPE html>
<html>
<head>
<title>Bill Payment</title>
<link rel="icon" href="fevi.png" type="image/gif" sizes="16x16">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="w3.css">
<link rel="stylesheet" href="w3.css">

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif;}

</style>

</head>
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
        <li><a href="#custmorcare" onclick="toggleFunction()">CUSTMOR CARE</a></li>
  
      </ul>
      
    </div>
    <h2 align="right"><a href="dash1.jsp">My Dashboard</h2>
  </div>





  <div class="w3-container w3-sand" style="margin-top:7%;">


    <div class="w3-row" >

      <a href="javascript:void(0)" onclick="openBill(event, 'Educational');">
        <div class="w3-quarter tablink w3-bottombar w3-hover-pale-blue w3-padding w3-center w3-xlarge w3-text-indigo"><i class="fa fa-graduation-cap" aria-hidden="true"></i> Educational</div>
      </a>
      <a href="javascript:void(0)" onclick="openBill(event, 'Medical');">
        <div class="w3-quarter tablink w3-bottombar w3-hover-pale-blue w3-padding w3-center w3-xlarge w3-text-indigo"><i class="fa fa-plus-square" aria-hidden="true"></i> Medical</div>
      </a>
      <a href="javascript:void(0)" onclick="openBill(event, 'Phone');">
        <div class="w3-quarter tablink w3-bottombar w3-hover-pale-blue w3-padding w3-center w3-xlarge w3-text-indigo"><i class="fa fa-phone-square" aria-hidden="true"></i> Phone</div>
      </a>
      <a href="javascript:void(0)" onclick="openBill(event, 'Corporate');">
        <div class="w3-quarter tablink w3-bottombar w3-hover-pale-blue w3-padding w3-center w3-xlarge w3-text-indigo"><i class="fa fa-industry" aria-hidden="true"></i>Gas</div>
      </a>
    </div>
       

  <div id="Educational" class="w3-container bill w3-animate-left" style="display:none">

              <div class="w3-row-padding w3-padding-64">

                <form action="bill2" method="get">
                   
                    <select class="w3-select" name="option">
                        <option value="" disabled selected>Choose your Institute</option>
                        <option value="1">Chandigarh University</option>
                        <option value="2">Punjab University</option>
                          <option value="3">Deshbhagath University</option>
                      </select>

                 <div class="w3-row-padding w3-padding-64">

                      <div class="w3-quarter">
                        <input class="w3-input w3-border" type="number" placeholder="Amount" name="am">
                      </div>
                      <div class="w3-quarter">
                        <input class="w3-input w3-border" type="text" placeholder="Account Number" name="ac">
                      </div>
                      <div class="w3-quarter">
                        <input class="w3-input w3-border" type="text" placeholder="IFSC" name="ic">
                      </div>
                      <div class="w3-quarter">
                        <input class="w3-input w3-border" type="text" placeholder="Name of institution" name="ni">
                      </div>
                 </div>

                  <div class="w3-row-padding">
                      <p class="w3-center"><button class="w3-btn w3-teal">Pay</button></p>
                </form>
                  </div>
            </div>

</div>

    <div id="Medical" class="w3-container bill w3-animate-left" style="display:none">


      <div class="w3-row-padding w3-padding-64">

        <form action="medical1" method="get">
            <select class="w3-select" name="option">
                <option value="" disabled selected>Choose Hospital</option>
                <option value="1">Apollo</option>
                <option value="2">Kamineni Hospitals</option>
                <option value="3">AIIMS</option>
                <option value="4">Forties</option>
                <option value="5">NIMHANS</option>
              </select>

         <div class="w3-row-padding w3-padding-64">

              <div class="w3-quarter">
                <input class="w3-input w3-border" type="number" placeholder="Amount" name="amount">
              </div>
              <div class="w3-quarter">
                <input class="w3-input w3-border" type="text" placeholder="Account Number" name="ac">
              </div>
              <div class="w3-quarter">
                <input class="w3-input w3-border" type="text" placeholder="IFSC" name="ifsc">
              </div>
              <div class="w3-quarter">
                <input class="w3-input w3-border" type="text" placeholder="Patient ID" name="id">
              </div>
         </div>

          <div class="w3-row-padding">
              <p class="w3-center"><button class="w3-btn w3-teal">Pay</button></p>
        </form>
          </div>
      </div>

      </div>



     <div id="Phone" class="w3-container bill  w3-animate-left" style="display:none">



      <div class="w3-row-padding w3-padding-64">

        <form action="phone1" method="get">
            <select class="w3-select" name="option">
                <option value="" disabled selected>Select Operator</option>
                <option value="1">Airtel</option>
                <option value="2">Vodafone</option>
                <option value="3">Idea</option>
                <option value="4">Docomo</option>
                <option value="5">BSNL</option>
              </select>

         <div class="w3-row-padding w3-padding-64">

              <div class="w3-quarter">
                <input class="w3-input w3-border" type="number" placeholder="Amount" name="amount">
              </div>
              <div class="w3-quarter">
                <input class="w3-input w3-border" type="text" placeholder="Account Number" name="ac">
              </div>
              <div class="w3-quarter">
                <input class="w3-input w3-border" type="text" placeholder="IFSC" name="ifsc">
              </div>
              <div class="w3-quarter">
                <input class="w3-input w3-border" type="text" placeholder="Mobile Number" name="number">
              </div>
         </div>

          <div class="w3-row-padding">
              <p class="w3-center"><button class="w3-btn w3-teal">Pay</button></p>
        </form>
          </div>
      </div>

      </div>





      <div id="Corporate" class="w3-container bill  w3-animate-left" style="display:none">

             <h1 class="w3-center w3-teal" title="Other bills Under Con">Gas Bill</h1>
        <div class="w3-row-padding w3-padding-64">

          <form action="gas" method="get">
              <select class="w3-select" name="option">
                  <option value="" disabled selected>Select Option</option>
                  <option value="1">Bharath</option>
                  <option value="2">Indian</option>
                  <option value="3">Hindustan</option>
                  <option value="4">HP</option>

                </select>

           <div class="w3-row-padding w3-padding-64">

                <div class="w3-third">
                  <input class="w3-input w3-border" type="number" placeholder="Amount" name="amount">
                </div>
                <div class="w3-third">
                  <input class="w3-input w3-border" type="text" placeholder="Account Number" name="acno">
                </div>
                <div class="w3-third">
                  <input class="w3-input w3-border" type="text" placeholder="Service Number " name="sno">
                </div>

           </div>

            <div class="w3-row-padding">
                <p class="w3-center"><button class="w3-btn w3-teal">Pay</button></p>
          </form>
            </div>
        </div>



      </div>

  </div>


  <div class=" w3-card-4" style="width:80%;margin-left:10%;margin-top:13%;" >

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


function openBill(evt, cityName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("bill");
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
     tablinks[i].className = tablinks[i].className.replace(" w3-border-red", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.firstElementChild.className += " w3-border-red";
}
</script>


</body>
</html>
