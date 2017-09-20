<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="w3.css">
<div>

</div>
</div>
</head>
<body>
<div>
<p align="left" class="w3-teal w3-center w3-jumbo">Choose Your Loan</p>
<select name="choose" class="w3-select w3-margin-top" onchange="yesnoCheck(this);"> 
<option value="select type of loan" >Select</option>
    <option value="Car">car</option>
    <option value="educational">Educational</option>
    <option value="Personal">Personal</option>
    <option value="Gold">Gold</option>
    <option value="house">Home</option>
    </select>
    
</div>
 <div class=" w3-center w3-sand">
<h2 align="right"><a href="dash1.jsp">My Dashboard</h2></a>
</div>
<div>
 <form name="me" method="post" action="car.jsp">
   <div id="ifYes" style="display: none;">
   <div class="w3-center w3-sand">
    <label class="w3-large w3-text-blue w3-input w3-label">Loan amount:</label><INPUT class="w3-input" TYPE="range" MIN="100000" id="lam" MAX="5000000" STEP="2" VALUE="4" onClick="carcalculate()" onchange="updateTextInput(this.value);">
    <input type="text" id="textInput1" value="">
    <br />
    <label class="w3-large w3-input w3-label w3-text-blue">Interest Rate:</label><INPUT class="w3-input" TYPE="range" MIN="9" id="li" MAX="20" STEP="2" VALUE="4" onClick="carcalculate()" onchange="updateTextInput2(this.value);">
     <input type="text" id="textInput" value="">
    <br />
   <label class="w3-large w3-input w3-label w3-text-blue"> Loan term:</label><INPUT class="w3-input" TYPE="range" MIN="12" MAX="84" id="lt" STEP="2" VALUE="4" onClick="carcalculate()" onchange="updateTextInput1(this.value);">
   <input type="text" id="textInput2" value="">
  <br />
  <label class="w3-large w3-input w3-label w3-text-blue ">Monthly Emi:</label><input class="w3-input " type="text" id="emi">
  <br />
  <label class="w3-large w3-input w3-label w3-text-blue">Total interest payable:</label><input class="w3-input " type="text" id="interest">
  <br />
  </div>
  
  
  <div class=" w3-center w3-pale-red">
  <p class="w3-text-teal w3-large">The following documents are required</p>
  <p>Age proof</p>
  <p>Id proof</p>
  <p>Application form</p>
  <p>Photograph</p>
  <p>Residence proof</p>
  <p>Income Proof</p>
  <p>Bank statement</p>
  <p>signature verification proof</p>
  <p>Pro-forma invoice or rate list</p>
  <p>All of the above is subject to terms and conditions</p>
  </div>
  <br />
  <p class="w3-text-teal w3-center w3-large">Fill the form below if you want to apply for car loan</p>
  <p align="center" style="font-weight:bold">Fill the form</p>
 <label class="w3-large w3-center w3-input w3-label w3-text-blue">Name:</label><input class="w3-input w3-animate-zoom w3-text-pink" type="text" name="name">
  <br />
<label class="w3-large w3-center w3-input w3-label w3-text-blue">Phone number:</label><input class="w3-input w3-animate-zoom w3-text-pink" type="text" name="pno">
  <br />
 <label class="w3-large w3-center w3-input w3-label w3-text-blue">email id:</label>:<input class="w3-input w3-animate-zoom w3-text-pink" type="text" name="email">
  <br />
  <input class="w3-large w3-center w3-input w3-label w3-text-blue" type="submit" name="submit" value="submit">
 </div>
 </form>
 <form name="me1" method="post" action="enter.jsp">
 <div id="ifno" style="display: none;">
 <p class="w3-text-teal w3-center w3-large"> Educational Loan will be sanctioned only the students which are studying in the institutes which are Recognized by AICTE as UGC</p>
 <p class="w3-text-teal w3-center w3-large"> Above are the details who want to Study in India
 <div class="w3-text-teal w3-center w3-large w3-pale-red">
  <TABLE  class="w3-striped w3-table  w3-text-pink" align="center" style="margin: 0px auto"; border=1  cellpadding=7  border=0.5 bgcolor="lightyellow"  >
      	 
    	   <tr>
    	     <th>Loan amount</th><th>loan Interest</th>
    	     <tr>
    	     <td> Upto 4,00,000</td>
    	     <td>13%</td>
    	     <tr>
    	     <td>4,00,000-7,50,000</td>
    	     <td>12%</td>
    	     <tr>
    	     <td>7,50,000-13,00,000</td>
    	     <td>11%</td>
    	   </tr>
  </TABLE>
  <br />
  <br />
  <br />
   <br />
    <br />
     <br />
      <br />
       <br />
        <br />
        
     <div class="w3-text-blue w3-text-teal w3-center w3-large">   <p>Note</p>
  <p>1.) Those who want to avail upto 4,00,000 no surity is needed.Incase those who want to avail more than 4,00,000 surity is needed</p>
  <p>2.) The time that is needed to pay the amount is Course duration + 1 year</p>
  <p>3.) This 1 year is for the student who want to search for a job</p>
  <p style="font-weight:bold">If you are Interested in availing Loan.Please fill the form and submit it.</p>
  <br />  
  
  Enter Your name:<input class="w3-input" type="text" name="name">
  <br />
  Choose Loan amount:<select class="w3-input" name="edu">
  <option value="m1">upto 4,00,000</option>
  <option value="m2">4,00,000-7,50,000</option>
  <option value="m3">7,50,000-13,00,000</option>
  </select>
  <br />
  Choose Your degree<select class="w3-input" name="opt">
  <option value="l1">Under Graduation</option>
  <option value="L2">Graduation</option> 
  <option value="L3">Post Graduation</option>
  </select>
  <br />
  Enter your valid 10th marks in percentage:<input type="text" class="w3-input" name="marks">
  <br />
  Enter Your valid 12th marks in percentage:<input type="text" class="w3-input" name="marks1">
  <br /> 
  Enter Your Institution name:<input type="text" class="w3-input" name="iname">
  <br />
  Enter Your Institution city and address:<input class="w3-input" type="text" name="cname">
  <br />
  <p style="font-weight:bold">The Students should submit Valid documents for availing Loan</p>
  <p style="font-weight:bold">Please Check The documents to be submitted</p>
  <div class="w3-sand">
  <p> In case of your  Graduation </p>
  <p> 1.) 10th Memo </p>
  <p> 2.) 12th Memo or diploma</p>
  <p> 3.) Under Graduation DMC (In case You have Completed UG)</p>
  <p> 4.) Graduation DMC (In case you have completed Graduation)</p>
  <p> Note:</p> 
  <p>If you are applying to Under Graduation Only 10th and 12th memo's required.</p>
  <p>If you are applying to Graduation You need to submit 10th, 12th memo's as well as Under Graduation DMC are required</p>
  <p>If you are applying for Post graduation You need to submit above documents as well as Your Graduation DMC</p>
  <input class="w3-input" type="checkbox" name="agree"> I agree
  <br />
  <input type="submit" name="submit" value="submit">
  </div>
  </div>
  </div>
  </div>
  </form>
  <form name="me2" method="post" action="gold.jsp">
   <div id="ifno1" style="display: none;">
    <div class="w3-center w3-sand w3-animate-input">
   <p style="align:center; font-weight=bold"> Gold Loans</p>
   <div class="w3-text-pink">
   <div class="w3-text-shadow w3-animate-zoom">
  <p>Documentation</p>
<p>1.)Two passport size photograph</p>
<p>2.)ID Proof such as Driving License / PAN Card / Form 60/61 / Passport Copy / Voter ID Card / Aadhaar Card / Ration Card. Any one document needs to be submitted</p>
<p>3.)Address Proof such as Driving License / Voter ID Card / Ration Card / Aadhaar Card / Passport Copy / registered lease agreement with not older than 3 months utility bills in the name of landlord (any one) </p>
<p>4.)Proof of land holding in case of agriculture loan of more than Rs. 1 lakh</p>
</div>
</div>
</div>
 <br />
 <br />
 <div class="w3-text-shadow w3-animate-zoom">
  <TABLE class="w3-striped w3-table  w3-text-pink" align="center" style="margin: 0px auto"; border=1  cellpadding=7  border=0.5 bgcolor="lightyellow">
      	 
    	   <tr>
    	     <th>Description</th><th>Minimum</th><th>Maximum</th>
    	     <tr>
    	     <td> Loan amount</td>
    	     <td>Rs.10,000</td>
    	     <td>Rs.15,00,000
    	     <tr>
    	     <td>Loan tenure</td>
    	     <td>6 months</td>
    	     <td>12 months</td>
    	   </tr>
  </TABLE>
  </br>
    <TABLE  class="w3-striped w3-table w3-text-pink" align="center" style="margin: 0px auto"; border=1  cellpadding=7  border=0.5 bgcolor="lightyellow" >
      	 
    	   <tr>
    	     <th>Minimum</th><th>Maximum</th><th>Penal Interest</th>
    	     <tr>
    	     <td>10%</td>
    	     <td>16.50%</td>
    	     <td>6%</td>
    	   </tr>
  </TABLE>
  <br />

    <TABLE class="w3-striped w3-table w3-text-pink" align="center" style="margin: 0px auto";  border=1  cellpadding=7  border=0.5 bgcolor="lightyellow">
      	 
    	   <tr>
    	     <th>Particulars</th><th>Twelve months</th><th> Six months</th>
    	     <tr>
    	     <td>Processing fees</td>
    	     <td>0%</td>
    	      <td>0%</td>
    	     <tr>
    	     <td>Foreclosure Charges</td>
    	      <td> 1%, If a/c is closed within 11 months </td>
    	        <td>1%, If a/c is closed within 5 months </td>
    	      <tr>
    	     <td>Documentation Charges</td>
    	     <td>Rs 199</td>
    	     <td>N.A</td>
    	     <tr>
    	     <td> Renewal fees </td>
    	     <td>Upto 1 lack Rs.250</td>
    	     <tr>
    	     <tr>
    	     <td></td>
    	     <td>
Greater than 1 lacs upto 2 Lacs Rs.350</td>
<tr>
<tr>
<td></td>
<td>
Greater than  2 Lacs Rs 500
</td>
  </tr>
  </TABLE>
  </div>
  <br />
  <br />
    <label class="w3-large w3-text-blue w3-label w3-center w3-input">enter weight in grams:</label><input class="w3-input w3-text-pink w3-animate-zoom" type="text" id="tel" onClick="calculate()">
   <br/>
   <br/>
  <label class="w3-large w3-text-blue w3-label w3-center w3-input">months:</label><select class="w3-input w3-text-pink w3-animate-zoom w3-select"  id="tel1" onClick="calculate()">
   <option value="06">6 months</option>
   <option value="12">12 months</option> 
   </select>
   <br />
   <br />
      <label class="w3-large w3-text-blue w3-label w3-center w3-input">carat:</label><select class="w3-input w3-text-pink w3-animate-zoom w3-select" id="mon" onClick="calculate()">
      <option value="select">select</option>
   <option value="24">24</option>
   <option value="22">22</option> 
   <option value="21">21</option>
   <option value="20">20</option>
   <option value="19">19</option>
   <option value="18">18</option>
   </select>
   <br />
   <br />
   <label class="w3-large w3-text-blue w3-label w3-center w3-input">Result:</label><input class="w3-input w3-text-pink w3-animate-zoom"  type="text" id="result">
  <br />
  <input class="w3-input w3-text-pink w3-animate-zoom"  type="submit" value="submit" name="submit">
  </div>
  </div>
  </div>
  </form>
  <form method="post" action="personal.jsp">
  <div id="ifno2" style="display: none;">
  <div class="w3-text-pink w3-center w3-large w3-sand">
  <TABLE  class="w3-striped w3-table w3-text-pink" align="center" style="margin: 0px auto"; border=1  cellpadding=7  border=0.5 bgcolor="lightyellow">
      	 
    	   <tr>
    	     <th>Criteria</th><th>Salaried</th>
    	     <tr>
    	     <td>Age</td>
    	     <td>23-58 years</td>
    	     <tr>
    	     <td>Net Salary</td>
    	     <td>Salaried individuals with minimum monthly income Rs.17,500 (Rs.25,000 for applicants residing in Mumbai & Delhi; Rs.20,000 for applicants residing in Chennai, Hyderabad, Bangalore, Pune & Kolkata)</td>
    	     <tr>
    	     <td>Total years in job/profession</td>
    	     <td>2 years</td>
    	     <tr>
    	     <td>Years in current residence</td>
    	     <td>1 year</td> 
    	   </tr>
  </TABLE>
  <br />
  <br />
  <TABLE  class="w3-striped w3-table w3-text-pink" align="center" style="margin: 0px auto";; border=1  cellpadding=7  border=0.5 bgcolor="lightyellow">
      	 
    	   <tr>
    	     <th>Criteria</th><th>Self Employed</th>
    	     <tr>
    	     <td>Age</td>
    	     <td>28 years (self employed individuals) and 25 years (for doctors) Maximum age - 65 years</td>
    	     <tr>
    	     <td>Minimum Turnover</td>
    	     <td>Rs 40 lakh for non-professionals Rs. 15 lac for professionals as per audited financials</td>
    	     <tr>
    	     <td>Minimum Profit After Tax</td>
    	     <td>Rs. 2 lac for Proprietorship Firm/Self employed Individuals and Rs. 1 lac for non-professionals as per audited financials</td>
    	     <tr>
    	     <td>Business Stability</td>
    	     <td>In current business for at least 5 years and minimum 3 years for doctors</td>
    	     <tr>
    	    <td>Existing relationship with Bank</td>
    	    <td>Minimum 1 year liability relationship (current or savings account) or Asset relationship (loan) either live or closed in the last 36 months; repayment track as required</td>
    	   </tr>
  </TABLE>
  <br />
     <label class="w3-large w3-text-blue">Loan amount:</label><INPUT class="w3-input" TYPE="range" MIN="100000" id="ps" MAX="1500000" STEP="2" VALUE="4" onClick="percalculate()"  onchange="updateTextInputs1(this.value)">
    <input type="text" id="textInputs2" value="">
    <br />
    <label class="w3-large w3-text-blue">Interest rate:</label><INPUT class="w3-input" TYPE="range" MIN="15" id="ps1" MAX="24" STEP="2" VALUE="4" onClick="percalculate()" onchange="updateTextInputs(this.value)">
    <input type="text" id="textInputs1" value="">
    <br />
    <label class="w3-large w3-center w3-label w3-text-blue">Loan term:</label><INPUT class="w3-input" TYPE="range" MIN="12" MAX="60" id="ps2" STEP="2" VALUE="4" onClick="percalculate()" onchange="updateTextInputs2(this.value)">
    <input type="text" id="textInputs" value="">
  <br />
  <label class="w3-large w3-label w3-center w3-text-blue">Monthly emi:</label><input class="w3-large w3-large w3-input w3-center w3-text-pink" type="text" id="emi1">
  <br />
 <label class="w3-large w3-center w3-text-blue">Total amount:</label><input class="w3-large w3-center w3-large w3-input w3-text-pink" type="text" id="interest1">
  <br/>
  <input class="w3-large w3-center w3-input" type="submit" name="submit" value="submit">
  </div>
  </div>
  </form>
  </div>
    <script>
    function yesnoCheck(that) {
        if (that.value == "Car") {
            alert("check");
            document.getElementById("ifno2").style.display="none";
            document.getElementById("ifno").style.display = "none";
            document.getElementById("ifno1").style.display = "none";
    document.getElementById("ifYes").style.display = "block";
        } else if(that.value=="educational") {
            alert("enter details")
            document.getElementById("ifno2").style.display="none";
            document.getElementById("ifno1").style.display = "none";
             document.getElementById("ifYes").style.display="none" ;
            document.getElementById("ifno").style.display = "block";
        }
        else if(that.value=="select")
            {
            alert("please check the option");
        	  document.getElementById("ifno").style.display = "none";
        	  document.getElementById("ifno1").style.display = "none";
        	  document.getElementById("ifYes").style.display = "none";
        	  document.getElementById("ifno2").style.display="none";
            }
        else if(that.value=="Gold")
            {
alert("please enter details");
document.getElementById("ifYes").style.display="none" ;
document.getElementById("ifno").style.display = "none";
document.getElementById("ifno1").style.display = "block";
document.getElementById("ifno2").style.display="none";
var x=document.getElementById('tel').value;
var y=document.getElementById('mon').value;
var result=document.getElementById('result');

            }
        else if(that.value=="Personal")
            {
alert("please enter details");
document.getElementById("ifYes").style.display="none" ;
document.getElementById("ifno").style.display = "none";
document.getElementById("ifno1").style.display = "none";
document.getElementById("ifno2").style.display = "block";

            }
    }
    function calculate()
    {
    	var x=document.getElementById('tel').value;
    	var y=document.getElementById('mon').value;
    	var result=document.getElementById('result');
    	var z=document.getElementById("tel1").value;
    	if(y==24 && z==6)
    		{
    	var myresult=(x*y*84.041667);
    	result.value = myresult;
    		}
    	if(y==24 && z==12)
		{
	var myresult=(x*y*84.041667);
	myresult=myresult+144;
	result.value = myresult;
		}
    	else if(y==22 && z==6)
    		{
    		var myresult=x*y*84.0454545;
    		result.value = myresult;
    		}
    	else if(y==22 && z==12)
		{
		var myresult=x*y*84.0454545;
		myresult=myresult+132;
		result.value = myresult;
		}
    	else if(y==21 && z==6)
    		{
    		var myresult=x*y*84.047619;
    		result.value = myresult;

    		}
    	else if(y==21 && z==12)
		{
		var myresult=x*y*84.047619;
		myresult=myresult+126;
		result.value = myresult;

		}
    	else if(y==20 && z==6) 
    		{
    		var myresult=x*y*84.05;
    		result.value = myresult;
    		}
    	else if(y==20 && z==12)
        	{
    		var myresult=x*y*84.05;
    		myresult=myresult+120;
    		result.value = myresult;
        	}
    	else if(y==19 && z==6)
    		{
    		var myresult=x*y*84.0526316;
    		result.value = myresult;
    		}
    	else if(y==19 && z==12)
		{
		var myresult=x*y*84.0526316;
		myresult=myresult+114;
		result.value = myresult;
		}
    	
    	else if(y==18 && z==6)
    		{
    		var myresult=x*y*84.0555556;
    		result.value = myresult;
    		}
    	else if(y==18 && z==12)
        	{

    		var myresult=x*y*84.0555556;
    		myresult=myresult+108;
    		result.value = myresult;
    		
        	}

        }
    function carcalculate()
    {


    	var x=document.getElementById('lam').value;
    	var y=document.getElementById('li').value;
    	var z=document.getElementById("lt").value;
    	var emi=document.getElementById('emi');
    	var interest=document.getElementById("interest");
         var k=(x*z*y)/100;
         var l=12;
         var c=k/l;
         emi.value = c;
         l=c*z;
         l=l-x;
         interest.value=l;
         
        }
    
function percalculate()
{


	var x=document.getElementById('ps').value;
	var y=document.getElementById('ps1').value;
	var z=document.getElementById("ps2").value;
	var emi=document.getElementById('emi1');
	var interest=document.getElementById("interest1");
     var k=(x*z*y)/100;
     var l=12;
     var c=k/l;
     emi.value = c;
     l=c*z;
     l=l-x;
     interest.value=l;

	
}
function updateTextInput(val) {
    document.getElementById('textInput1').value=val; 

  }
function updateTextInput1(val) {
    document.getElementById('textInput2').value=val; 

  }
function updateTextInput2(val) {
    document.getElementById('textInput').value=val; 

  }
function updateTextInputs(val) {
    document.getElementById('textInputs1').value=val; 

  }
function updateTextInputs1(val) {
    document.getElementById('textInputs2').value=val; 

  }
function updateTextInputs2(val) {
    document.getElementById('textInputs').value=val; 

  }
    
    
</script>
</body>
</html>