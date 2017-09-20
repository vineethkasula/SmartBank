<script type = "text/javascript">
var count=4;
function validate() {
var un = document.register.uname;
var pw = document.register.passname;
var fn = document.register.fname;
var ln = document.register.Lname;
var id = document.register.il;
var ed = document.register.Eid;
var dob = document.register.dob;
var pno = document.register.pno;
var fa = document.register.faname;
var pc = document.register.pcode;
var ci = document.register.ci;
var ad = document.register.address;
var a = document.register.address1;
var a1 = document.register.address2;


	if(un=="" || pw=="")
		{

		alert ("Enter your username or password");
        document.register.uname= "";
        document.register.passname= "";
        setTimeout("document.register.name.focus()", 25);
        setTimeout("document.register.name.select()", 25);
		}

	if(a1=="")
		{
alert("Enter your Area");
setTimeout("document.register.address2.focus()", 25);
setTimeout("document.register.address2.select()", 25);
		}
	if(a=="")
		{
		alert("Enter your road number");
		setTimeout("document.register.address1.focus()", 25);
		setTimeout("document.register.address1.select()", 25);

		}
if(fn=="")
	{
	alert("Enter your firstname");
	setTimeout("document.register.fname.focus()", 25);
	setTimeout("document.register.fname.select()", 25);

	}
	if(ln=="")
		{

		alert("Enter your lastname");
		setTimeout("document.register.Lname.focus()", 25);
		setTimeout("document.register.Lname.select()", 25);
		}
	if(id=="")
		{
		alert("Enter your id");
		setTimeout("document.register.i1.focus()", 25);
		setTimeout("document.register.i1.select()", 25);

		}
	if(ed=="")
		{

		alert("Enter your email id");
		setTimeout("document.register.Eid.focus()", 25);
		setTimeout("document.register.Eid.select()", 25);
		}
	if(dob=="")
		{

		alert("Enter your date of birth");
		setTimeout("document.register.dob.focus()", 25);
		setTimeout("document.register.dob.select()", 25);
		}
	if(pno=="")
		{

		alert("Enter your Phone number");
		setTimeout("document.register.pno.focus()", 25);
		setTimeout("document.register.pno.select()", 25);
		}
	if(fa=="")
		{

		alert("Enter your father's name");
		setTimeout("document.register.faname.focus()", 25);
		setTimeout("document.register.faname.select()", 25);
		}
	if(pc=="" || city=="")
		{

		alert("Enter your city or pincode");
		setTimeout("document.register.city.focus()", 25);
		setTimeout("document.register.city.select()", 25);
		setTimeout("document.register.pcode.focus()", 25);
		setTimeout("document.register.pcode.select()", 25);
		}
}
</script>