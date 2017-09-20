<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="w3.css">
</head>
  
   <br/>
<body>

<form class="w3-input" name="me1" method="get" action="fixeddeposit1">
 <h2 align="right"><a href="dash1.jsp">My Dashboard</h2></a>
 <p align="left" class="w3-teal w3-center w3-jumbo">Choose your deposits</p>
Type of Deposit:  <select class="w3-select w3-margin-top" name="dep" onchange="yesnoCheck(this);">
<option value="select">select</option>
<option value="simple investment">Simple Investment</option>
<option value="Re-Investment">Re-Investment</option>
<option value="monthly investment">Monthly Investment</option>
<option value="Quaterly investment">Quaterly Investment</option>
<br/>
<br/>
</p>
</select>

<div id="ifYes2" style="display:none;">
<div class="w3-text-orange w3-center w3-large w3-pale-blue w3-text-teal w3-animate-zoom w3-ripple">
<p class="w3-center w3-text-teal w3-animate-zoom">Enter amount:</p>
<input class="w3-animate-zoom w3-select" type="text" id="dm" onClick="quacalculate()">
<br />
<br />
<p class="w3-center w3-text-teal w3-animate-zoom">Term of deposit:</p>
Months:<select class="w3-select w3-input w3-shadow-zoom" name="mon" id="mon" onClick="quacalculate()">
<option value="MM">MM</option>
<option value="00">00</option>
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
</select>
Days<select class="w3-select w3-input w3-shadow-zoom" name="days" id="days" onClick="quacalculate()">
<option value="DD">DD</option>
<option value="00">00</option>
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
<option value="07">07</option>
<option value="08">08</option>
<option value="09">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
</select>
<br />
Maturity Amount:
<input class="w3-input" type="text" name="mat" id="mat">
<div class="w3-text-shadow w3-animate-zoom w3-responsive">
<div class="w3-card-12">
<div class="w3-code">
<p>Documents Required to Open Fixed Deposit Accounts</p>
<br />
<p>Eligibility</p>
<br />
<p>Resident Indian</p>
<p>Identity Proof</p>
<p>Passport </p>
<p>PAN card</p>
<p>Voter ID card</p>
<p>Driving licence</p>
<p>Government ID card</p>
<p>Photo ration card</p>
<p>Senior citizen ID card</p>
<p>Address Proof</p>
<p>Passport</p>
<p>Telephone bill</p>
<p>Electricity bill</p>
<p>Bank Statement with Cheque</p>
<p>Certificate/ ID card issued by Post office</p>
<p>* Any other Identity proof or Address proof document can be submitted, subject to the Bank's satisfaction.</p>
<p>Note
<p>Please produce the original document(s) for verification & a photocopy of each document.</p>
<p>Please fill the form in CAPITAL LETTERS using Black ink.</p>
<p>Please countersign in case of any overwriting.</p>
<p>Please avail of the nomination facility.</p>
<p>* Mandatory to provide Permanent address and telephone number.</p>
</div>
</div>
</div>
<div class="w3-animate-zoom">
<p style="align:center; font-weight=bold">Interest Rates</p>
<table class="w3-text-pink w3-animate-zoom" align="center" style="margin: 0px auto";cellpadding=7  border=0.5 bgcolor="lightyellow">
<thead> 
<tr>
<th>SAVINGS BANK ACCOUNT</th><th colspan="2">RATE OF INTEREST#</th><th>MINIMUM BALANCE*</th>
</tr>
<tr>
<th>&nbsp;</th><th>NORMAL</th><th>SENIOR CITIZEN</th><th>&nbsp;</th>
</tr>
</thead> 
<tbody>
<tr>
<th>Domestic<sup>#</sup></th>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<tr>
<td>a. With cheque book facility</td>
<td>4.00%</td>
<td>4.00%</td>
<td>
<p>Metro, Urban - Rs.10,000</p>
<p>Semi Urban - Rs.5,000</p>
<p>Rural - Rs.2,000</p>
</td>
</tr>
<tr>
<td>b. No Frills Account / Basic Savings Bank Account</td>
<td>4.00%</td>
<td>4.00%</td>
<td>
<p>Zero</p>
</td>
</tr>
<tr>
<th>Non Resident </th>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>NRO / NRE<br></td>
<td>4.00%</td>
<td>4.00%</td>
<td>
<p>Metro, Urban, Semi Urban - Rs.15,000</p>
<p>Rural - Rs.5,000</p>
</td>
</tr>
</tbody>
</table>
<br />
<table class="w3-text-pink w3-animate-zoom" align="centre" style="margin: 0px auto"; cellpadding=7  border=0.5 bgcolor="lightyellow">
<thead> 
<tr>
<th style="width: 42%; text-align: center;" rowspan="2">Tenure Period</th><th colspan="2">Rate of Interest (% p.a.) w.e.f December 28, 2016</th>
</tr>
<tr>
<th style="width: 30%; text-align: center;">General </th><th style="width: 30%;">Senior Citizen*</th>
</tr>
</thead> 
<tbody>
<tr>
<td>7 days to 14 days</td>
<td>4.00</td>
<td>4.50</td>
</tr>
<tr>
<td>15 days to 29 days</td>
<td>4.25</td>
<td>4.75</td>
</tr>
<tr>
<td>30 days to 45 days</td>
<td>5.50</td>
<td>6.00</td>
</tr>
<tr>
<td>46 days to 60 days</td>
<td>5.75</td>
<td>6.25</td>
</tr>
<tr>
<td>61 days to 90 days</td>
<td>6.25</td>
<td>6.75</td>
</tr>
<tr>
<td>91 days to 120 days</td>
<td>6.25</td>
<td>6.75</td>
</tr>
<tr>
<td>121 days to 184 days</td>
<td>6.25</td>
<td>6.75</td>
</tr>
<tr>
<td>185 days to 289 days</td>
<td>6.25</td>
<td>6.75</td>
</tr>
<tr>
<td>290 days to less than 1 year</td>
<td>6.50</td>
<td>7.00</td>
</tr>
<tr>
<td>1 year to 389 days</td>
<td>6.90</td>
<td>7.40</td>
</tr>
<tr>
<td>390 days to 2 years</td>
<td>7.00</td>
<td>7.50</td>
</tr>
<tr>
<td>2 years 1 day upto 5 years</td>
<td>6.75</td>
<td>7.25</td>
</tr>
<tr>
<td>5 years 1 day upto 10 years</td>
<td>6.50</td>
<td>7.00</td>
</tr>
<tr>
<td>5 Years Tax saver FD(Max upto Rs. 1.50 lac)</td>
<td>6.75</td>
<td>7.25</td>
</tr>
</tbody>
</table>
<div class="w3-text-indigo w3-animate-zoom w3-card-24">
<div class="w3-card-16 w3-animate-zoom">
<p style="align:center; font-weight=bold">If you are interested in availing fill the form below</p>
Name:<input class="w3-input w3-animate-zoom w3-text-pink" type="text" name="name" id="name">
<br />
Email id:<input class="w3-input w3-animate-zoom w3-text-pink" type="text" name="email" id="email">
<br />
phone number:<input class="w3-input w3-animate-zoom w3-text-pink" type="text" name="number" id="number">
<br />
<input class="w3-input w3-animate-zoom w3-text-pink" type="submit" name="submit" value="submit">
</div>
</div>
</div>
</div>
</div>
</div>
</form>
<form action="fixeddeposit1" method="get">
<div id="ifYes1" style="display:none;">
<div class="w3-sand w3-center w3-large">
<p class="w3-text-cyan w3-center w3-large" >Enter amount to be deposit in Rs:</p>
<input class="w3-animate-zoom w3-input" type="text" id="dm1" onClick="moncalculate()">
<br />

<label class="w3-label w3-text-blue">Term of deposit</label>
<br />
Months:<select class="w3-select w3-animate-zoom w3-input" name="mon1" id="mon1" onClick="moncalculate()">
<option value="MM">MM</option>
<option value="00">00</option>
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
</select>
Days<select class="w3-select w3-animate-zoom w3-input" name="days1" id="days1" onClick="moncalculate()">
<option value="DD">DD</option>
<option value="00">00</option>
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
<option value="07">07</option>
<option value="08">08</option>
<option value="09">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
</select>

Maturity Amount:
<input class="w3-select w3-animate-zoom w3-input" type="text" name="mat1" id="mat1">
<br />
<div class="w3-text-shadow">
<p>Documents Required to Open Fixed Deposit Accounts</p>
<br />
<p>Eligibility</p>
<br />
<p>Resident Indian</p>
<p>Identity Proof</p>
<p>Passport </p>
<p>PAN card</p>
<p>Voter ID card</p>
<p>Driving licence</p>
<p>Government ID card</p>
<p>Photo ration card</p>
<p>Senior citizen ID card</p>
<p>Address Proof</p>
<p>Passport</p>
<p>Telephone bill</p>
<p>Electricity bill</p>
<p>Bank Statement with Cheque</p>
<p>Certificate/ ID card issued by Post office</p>
<p>* Any other Identity proof or Address proof document can be submitted, subject to the Bank's satisfaction.</p>
<p>Note
<p>Please produce the original document(s) for verification & a photocopy of each document.</p>
<p>Please fill the form in CAPITAL LETTERS using Black ink.</p>
<p>Please countersign in case of any overwriting.</p>
<p>Please avail of the nomination facility.</p>
<p>* Mandatory to provide Permanent address and telephone number.</p>
<p style="align:center; font-weight=bold">Interest Rates</p>
</div>
<table class="w3-striped w3-table w3-text-pink" align="center" style="margin: 0px auto"; cellpadding=7  border=0.5 bgcolor="lightyellow">
<thead> 
<tr>
<th>SAVINGS BANK ACCOUNT</th><th colspan="2">RATE OF INTEREST#</th><th>MINIMUM BALANCE*</th>
</tr>
<tr>
<th>&nbsp;</th><th>NORMAL</th><th>SENIOR CITIZEN</th><th>&nbsp;</th>
</tr>
</thead> 
<tbody>
<tr>
<th>Domestic<sup>#</sup></th>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<tr>
<td>a. With cheque book facility</td>
<td>4.00%</td>
<td>4.00%</td>
<td>
<p>Metro, Urban - Rs.10,000</p>
<p>Semi Urban - Rs.5,000</p>
<p>Rural - Rs.2,000</p>
</td>
</tr>
<tr>
<td>b. No Frills Account / Basic Savings Bank Account</td>
<td>4.00%</td>
<td>4.00%</td>
<td>
<p>Zero</p>
</td>
</tr>
<tr>
<th>Non Resident </th>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>NRO / NRE<br></td>
<td>4.00%</td>
<td>4.00%</td>
<td>
<p>Metro, Urban, Semi Urban - Rs.15,000</p>
<p>Rural - Rs.5,000</p>
</td>
</tr>
</tbody>
</table>
<br />
<table class="w3-striped w3-table" align="center" style="margin: 0px auto"; cellpadding=7  border=0.5 bgcolor="grey">
<thead> 
<tr>
<th style="width: 42%; text-align: center;" rowspan="2">Tenure Period</th><th colspan="2">Rate of Interest (% p.a.) w.e.f December 28, 2016</th>
</tr>
<tr>
<th style="width: 30%; text-align: center;">General </th><th style="width: 30%;">Senior Citizen*</th>
</tr>
</thead> 
<tbody>
<tr>
<td>7 days to 14 days</td>
<td>4.00</td>
<td>4.50</td>
</tr>
<tr>
<td>15 days to 29 days</td>
<td>4.25</td>
<td>4.75</td>
</tr>
<tr>
<td>30 days to 45 days</td>
<td>5.50</td>
<td>6.00</td>
</tr>
<tr>
<td>46 days to 60 days</td>
<td>5.75</td>
<td>6.25</td>
</tr>
<tr>
<td>61 days to 90 days</td>
<td>6.25</td>
<td>6.75</td>
</tr>
<tr>
<td>91 days to 120 days</td>
<td>6.25</td>
<td>6.75</td>
</tr>
<tr>
<td>121 days to 184 days</td>
<td>6.25</td>
<td>6.75</td>
</tr>
<tr>
<td>185 days to 289 days</td>
<td>6.25</td>
<td>6.75</td>
</tr>
<tr>
<td>290 days to less than 1 year</td>
<td>6.50</td>
<td>7.00</td>
</tr>
<tr>
<td>1 year to 389 days</td>
<td>6.90</td>
<td>7.40</td>
</tr>
<tr>
<td>390 days to 2 years</td>
<td>7.00</td>
<td>7.50</td>
</tr>
<tr>
<td>2 years 1 day upto 5 years</td>
<td>6.75</td>
<td>7.25</td>
</tr>
<tr>
<td>5 years 1 day upto 10 years</td>
<td>6.50</td>
<td>7.00</td>
</tr>
<tr>
<td>5 Years Tax saver FD(Max upto Rs. 1.50 lac)</td>
<td>6.75</td>
<td>7.25</td>
</tr>
</tbody>
</table>
<div class="w3-animate-top">
<p style="align:center; font-weight=bold">If you are interested in availing fill the form below</p>
Name:<input class="w3-animate-zoom w3-input" type="text" name="name" id="name">
<br />
Email id:<input class="w3-animate-zoom w3-input" type="text" name="email" id="name">
<br />
phone number:<input class="w3-animate-zoom w3-input" type="text" name="number" id="name">
<br />
<input class="w3-animate-zoom w3-input" type="submit" name="submit" value="submit">
</div>
</div>
</div>
<div id="ifYes" style="display: none;">
<div class=" w3-center w3-sand">
Enter amount to be deposit in Rs:
<input class="w3-input" type="text" id="dm2" onClick="calculate()">
<br />
Term of deposit
<br />
Months:<select class="w3-select" name="mon2" id="mon2" onClick="calculate()">
<option value="MM">MM</option>
<option value="00">00</option>
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
</select>
Days<select class="w3-select" name="days2" id="days2" onClick="calculate()">
<option value="DD">DD</option>
<option value="00">00</option>
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
<option value="07">07</option>
<option value="08">08</option>
<option value="09">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
</select>
<br />
Maturity Amount:
<input class="w3-input" type="text" name="mat2" id="mat2">
<br />
<div class="w3-animate-zoom">
<div class="w3-card-24">
<div class="w3-text-shadow">
<p>Documents Required to Open Fixed Deposit Accounts</p>
<br />
<p>Eligibility</p>
<br />
<p>Resident Indian</p>
<p>Identity Proof</p>
<p>Passport </p>
<p>PAN card</p>
<p>Voter ID card</p>
<p>Driving licence</p>
<p>Government ID card</p>
<p>Photo ration card</p>
<p>Senior citizen ID card</p>
<p>Address Proof</p>
<p>Passport</p>
<p>Telephone bill</p>
<p>Electricity bill</p>
<p>Bank Statement with Cheque</p>
<p>Certificate/ ID card issued by Post office</p>
<p>* Any other Identity proof or Address proof document can be submitted, subject to the Bank's satisfaction.</p>
<p>Note
<p>Please produce the original document(s) for verification & a photocopy of each document.</p>
<p>Please fill the form in CAPITAL LETTERS using Black ink.</p>
<p>Please countersign in case of any overwriting.</p>
<p>Please avail of the nomination facility.</p>
<p>* Mandatory to provide Permanent address and telephone number.</p>
<p style="align:center; font-weight=bold">Interest Rates</p>
</div>
</div>
</div>
<table class="w3-striped w3-table w3-animate-zoom w3-text-pink" align="centre" style="margin: 0px auto"; cellpadding=7  border=0.5 bgcolor="lightyellow">
<thead> 
<tr>
<th>SAVINGS BANK ACCOUNT</th><th colspan="2">RATE OF INTEREST#</th><th>MINIMUM BALANCE*</th>
</tr>
<tr>
<th>&nbsp;</th><th>NORMAL</th><th>SENIOR CITIZEN</th><th>&nbsp;</th>
</tr>
</thead> 
<tbody>
<tr>
<th>Domestic<sup>#</sup></th>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<tr>
<td>a. With cheque book facility</td>
<td>4.00%</td>
<td>4.00%</td>
<td>
<p>Metro, Urban - Rs.10,000</p>
<p>Semi Urban - Rs.5,000</p>
<p>Rural - Rs.2,000</p>
</td>
</tr>
<tr>
<td>b. No Frills Account / Basic Savings Bank Account</td>
<td>4.00%</td>
<td>4.00%</td>
<td>
<p>Zero</p>
</td>
</tr>
<tr>
<th>Non Resident </th>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>NRO / NRE<br></td>
<td>4.00%</td>
<td>4.00%</td>
<td>
<p>Metro, Urban, Semi Urban - Rs.15,000</p>
<p>Rural - Rs.5,000</p>
</td>
</tr>
</tbody>
</table>
<br />
<table class="w3-striped w3-table w3-animate-zoom  w3-text-pink" align="centre" style="margin: 0px auto"; cellpadding=7  border=0.5 bgcolor="lightyellow">
<thead> 
<tr>
<th style="width: 42%; text-align: center;" rowspan="2">Tenure Period</th><th colspan="2">Rate of Interest (% p.a.) w.e.f December 28, 2016</th>
</tr>
<tr>
<th style="width: 30%; text-align: center;">General </th><th style="width: 30%;">Senior Citizen*</th>
</tr>
</thead> 
<tbody>
<tr>
<td>7 days to 14 days</td>
<td>4.00</td>
<td>4.50</td>
</tr>
<tr>
<td>15 days to 29 days</td>
<td>4.25</td>
<td>4.75</td>
</tr>
<tr>
<td>30 days to 45 days</td>
<td>5.50</td>
<td>6.00</td>
</tr>
<tr>
<td>46 days to 60 days</td>
<td>5.75</td>
<td>6.25</td>
</tr>
<tr>
<td>61 days to 90 days</td>
<td>6.25</td>
<td>6.75</td>
</tr>
<tr>
<td>91 days to 120 days</td>
<td>6.25</td>
<td>6.75</td>
</tr>
<tr>
<td>121 days to 184 days</td>
<td>6.25</td>
<td>6.75</td>
</tr>
<tr>
<td>185 days to 289 days</td>
<td>6.25</td>
<td>6.75</td>
</tr>
<tr>
<td>290 days to less than 1 year</td>
<td>6.50</td>
<td>7.00</td>
</tr>
<tr>
<td>1 year to 389 days</td>
<td>6.90</td>
<td>7.40</td>
</tr>
<tr>
<td>390 days to 2 years</td>
<td>7.00</td>
<td>7.50</td>
</tr>
<tr>
<td>2 years 1 day upto 5 years</td>
<td>6.75</td>
<td>7.25</td>
</tr>
<tr>
<td>5 years 1 day upto 10 years</td>
<td>6.50</td>
<td>7.00</td>
</tr>
<tr>
<td>5 Years Tax saver FD(Max upto Rs. 1.50 lac)</td>
<td>6.75</td>
<td>7.25</td>
</tr>
</tbody>
</table>
<div class="w3-centre">
<p style="align:center; font-weight=bold">If you are interested in availing fill the form below</p>
Name:<input class="w3-animate-zoom w3-input" type="text" name="name" id="name">
<br />
Email id:<input class="w3-animate-zoom w3-input" type="text" name="email" id="name">
<br />
phone number:<input class="w3-animate-zoom w3-input" type="text" name="number" id="name">
<br />
<input class="w3-input-group" type="submit" name="submit" value="submit">
</div>
</div>
</div>

<div id="ifno" style="display: none;">
<div class=" w3-center w3-pale-green">
Enter amount to be deposit in Rs:
<input class="w3-animate-zoom w3-input" type="text" id="dm3" onClick="reicalculate()">
<br />
Term of deposit
<br />
years:<select class="w3-animate-zoom w3-input"  name="yea3" id="yea3" onClick="reicalculate()">
<option value="YY">YY</option>
<option value="00">00</option>
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
<option value="07">07</option>
<option value="08">08</option>
<option value="09">09</option>
<option value="10">10</option>
</select>

Months:<select class="w3-animate-zoom w3-input"  name="mon3" id="mon3" onClick="reicalculate()">
<option value="MM">MM</option>
<option value="00">00</option>
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
<option value="07">07</option>
<option value="08">08</option>
<option value="09">09</option>
<option value="10">10</option>
<option value="11">11</option>
</select>
<br />
Days:<select class="w3-animate-zoom w3-input"  name="days3" id="days3" onClick="reicalculate()">
<option value="DD">DD</option>
<option value="00">00</option>
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
<option value="07">07</option>
<option value="08">08</option>
<option value="09">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
</select>
<br />
Maturity amount:
<input class="w3-animate-zoom w3-input"  type="text" id="mat3">
<br />
<div class="w3-text-shadow">
<div class="w3-animate-zoom">
<p>Documents Required to Open Fixed Deposit Accounts</p>
<br />
<p>Eligibility</p>
<br />
<p>Resident Indian</p>
<p>Identity Proof</p>
<p>Passport </p>
<p>PAN card</p>
<p>Voter ID card</p>
<p>Driving licence</p>
<p>Government ID card</p>
<p>Photo ration card</p>
<p>Senior citizen ID card</p>
<p>Address Proof</p>
<p>Passport</p>
<p>Telephone bill</p>
<p>Electricity bill</p>
<p>Bank Statement with Cheque</p>
<p>Certificate/ ID card issued by Post office</p>
<p>* Any other Identity proof or Address proof document can be submitted, subject to the Bank's satisfaction.</p>
<p>Note
<p>Please produce the original document(s) for verification & a photocopy of each document.</p>
<p>Please fill the form in CAPITAL LETTERS using Black ink.</p>
<p>Please countersign in case of any overwriting.</p>
<p>Please avail of the nomination facility.</p>
<p>* Mandatory to provide Permanent address and telephone number.</p>
<p style="align:center; font-weight=bold">Interest Rates</p>

</div>
<table class="w3-striped w3-table" align="centre" style="margin: 0px auto"; cellpadding=7  border=0.5 bgcolor="orange">
<thead> 
<tr>
<th>SAVINGS BANK ACCOUNT</th><th colspan="2">RATE OF INTEREST#</th><th>MINIMUM BALANCE*</th>
</tr>
<tr>
<th>&nbsp;</th><th>NORMAL</th><th>SENIOR CITIZEN</th><th>&nbsp;</th>
</tr>
</thead> 
<tbody>
<tr>
<th>Domestic<sup>#</sup></th>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
<tr>
<td>a. With cheque book facility</td>
<td>4.00%</td>
<td>4.00%</td>
<td>
<p>Metro, Urban - Rs.10,000</p>
<p>Semi Urban - Rs.5,000</p>
<p>Rural - Rs.2,000</p>
</td>
</tr>
<tr>
<td>b. No Frills Account / Basic Savings Bank Account</td>
<td>4.00%</td>
<td>4.00%</td>
<td>
<p>Zero</p>
</td>
</tr>
<tr>
<th>Non Resident </th>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>NRO / NRE<br></td>
<td>4.00%</td>
<td>4.00%</td>
<td>
<p>Metro, Urban, Semi Urban - Rs.15,000</p>
<p>Rural - Rs.5,000</p>
</td>
</tr>
</tbody>
</table>
<br />
<table class="w3-table w3-striped" align="centre" style="margin: 0px auto"; cellpadding=7  border=0.5 bgcolor="orange">
<thead> 
<tr>
<th style="width: 42%; text-align: center;" rowspan="2">Tenure Period</th><th colspan="2">Rate of Interest (% p.a.) w.e.f December 28, 2016</th>
</tr>
<tr>
<th style="width: 30%; text-align: center;">General </th><th style="width: 30%;">Senior Citizen*</th>
</tr>
</thead> 
<tbody>
<tr>
<td>7 days to 14 days</td>
<td>4.00</td>
<td>4.50</td>
</tr>
<tr>
<td>15 days to 29 days</td>
<td>4.25</td>
<td>4.75</td>
</tr>
<tr>
<td>30 days to 45 days</td>
<td>5.50</td>
<td>6.00</td>
</tr>
<tr>
<td>46 days to 60 days</td>
<td>5.75</td>
<td>6.25</td>
</tr>
<tr>
<td>61 days to 90 days</td>
<td>6.25</td>
<td>6.75</td>
</tr>
<tr>
<td>91 days to 120 days</td>
<td>6.25</td>
<td>6.75</td>
</tr>
<tr>
<td>121 days to 184 days</td>
<td>6.25</td>
<td>6.75</td>
</tr>
<tr>
<td>185 days to 289 days</td>
<td>6.25</td>
<td>6.75</td>
</tr>
<tr>
<td>290 days to less than 1 year</td>
<td>6.50</td>
<td>7.00</td>
</tr>
<tr>
<td>1 year to 389 days</td>
<td>6.90</td>
<td>7.40</td>
</tr>
<tr>
<td>390 days to 2 years</td>
<td>7.00</td>
<td>7.50</td>
</tr>
<tr>
<td>2 years 1 day upto 5 years</td>
<td>6.75</td>
<td>7.25</td>
</tr>
<tr>
<td>5 years 1 day upto 10 years</td>
<td>6.50</td>
<td>7.00</td>
</tr>
<tr>
<td>5 Years Tax saver FD(Max upto Rs. 1.50 lac)</td>
<td>6.75</td>
<td>7.25</td>
</tr>
</tbody>
</table>
<p style="align:center; font-weight=bold">If you are interested in availing fill the form below</p>
Name:<input class="w3-animate-zoom w3-input" type="text" name="name" id="name">
<br />
Email id:<input class="w3-animate-zoom w3-input" type="text" name="email" id="email">
<br />
phone number:<input class="w3-animate-zoom w3-input" type="text" name="number" id="number">
<br />
<input class="w3-animate-zoom w3-input" type="submit" name="submit" value="submit">
</div>
</form>
<script>
    function yesnoCheck(that) {
    	  if (that.value == "simple investment"){
    		  alert("enter details")
    		    document.getElementById("ifYes1").style.display="none";
document.getElementById("ifYes").style.display="block";
    		  document.getElementById("ifno").style.display="none";
    		  document.getElementById("ifYes2").style.display="none";
    	  }
    	  else if(that.value=="Re-Investment"){
    		  document.getElementById("ifYes1").style.display="none";
    		  document.getElementById("ifYes").style.display="none";
    		  document.getElementById("ifno").style.display="block";
    		  document.getElementById("ifYes2").style.display="none";

        	  }
    	  else if(that.value=="monthly investment"){

    		  document.getElementById("ifYes").style.display="none";
    		  document.getElementById("ifno").style.display="none";
    		  document.getElementById("ifYes1").style.display="block";
    		  document.getElementById("ifYes2").style.display="none";

        	  }
    	  else if(that.value=="Quaterly investment")
        	  {

    		  document.getElementById("ifYes2").style.display="block";
    		  document.getElementById("ifYes").style.display="none";
    		  document.getElementById("ifYes1").style.display="none";
    		  document.getElementById("ifno").style.display="none";
        	  }

    }
    function calculate()
    {
        var x=parseInt(document.getElementById("dm2").value);
        var y=parseInt(document.getElementById("mon2").value);
        var z=parseInt(document.getElementById("days2").value);
    	var f=document.getElementById('mat2');
        if(y=="MM")
            {

alert("Please enter valid month");
            }
        else if(z=="DD")
            {

        	alert("Please enter valid days");
        	   
            }
        else if(y==01){
            y=y*30;
        var l=y+z;
       var d=l/360;
       var s=100;
       var b=(x * 5.5 *d)/s
        b=b+x;
        f.value=b;
        }
        else if(y==02)
            {
        	 y=y*30;
        	 var l=y+z;
        	 var d=l/360;
             var s=100;
             var b=(x * 6.5 *d)/s
              b=b+x;
              f.value=b;
            }
        else if (y==03 || y==04 || y==5 || y==6)
            {
        	 y=y*30;
        	 var l=y+z;
        	 var d=l/360;
             var s=100;
             var b=(x * 7 *d)/s
              b=b+x;
              f.value=b;
            }
    }
    function reicalculate()
    {


    	var x=parseInt(document.getElementById('dm3').value);
    	var y=parseInt(document.getElementById('yea3').value);
    	var z=parseInt(document.getElementById("mon3").value);
    	var r=parseInt(document.getElementById('days3').value);
    	var f=document.getElementById('mat3');
    	;
if(z=="00" || z=="MM" || r=="00" || r=="DD")
	{
	 var b=(x*y*7);
     b=b/100;
     f.value=b;
	}
else if(y=="00" || y=="MM")
	{
	var b=(x*z/12*7);
    b=b/100;
    b=b+x;
    f.value=b;

	}
else
	{
y=y*12*30;
z=z*30;
z=z+r;
var l=z/y;
var b=(x*l*7);
b=b/100;
f.value=b
	}	
    }

    function moncalculate()
    {


    	var x=parseInt(document.getElementById('dm1').value);
    	var z=parseInt(document.getElementById("mon1").value);
    	var r=parseInt(document.getElementById('days1').value);
    	var f=document.getElementById('mat1');
    	;
if(z=="00" || z=="MM" ||  r=="DD")
	{
	 alert("please enter valid details");
	}
else
	{
	z=z*30;
	z=z+r;
	var b=x*z*6.5/365;
	b=b/100;
	b=x+b;
	f.value=b;

	}
    }
    function quacalculate()
    {


    	var x=parseInt(document.getElementById('dm').value);
    	var z=parseInt(document.getElementById("mon").value);
    	var r=parseInt(document.getElementById('days').value);
    	var f=document.getElementById('mat');
    	;
if(z=="00" || z=="MM" ||  r=="DD")
	{
	 alert("please enter valid details");
	}
else
	{
	z=z*30;
	z=z+r;
	var b=x*z*6.5/365;
	b=b/100;
	b=x+b;
	f.value=b;

	}
    }
    </script>
</body>
</html>