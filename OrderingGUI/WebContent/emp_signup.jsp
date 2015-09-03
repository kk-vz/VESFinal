<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <title>Sign-up</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">
		<!-- Bootstrap CSS -->    
  
	<link href="css/signup.css" rel="stylesheet" />
		<link href="css/logintab.css" rel="stylesheet" />
		<link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
	
<script type="text/javascript">

function register_form()
{
	
	
	var name = document.getElementById("ename").value;
	var email = document.getElementById("email").value;
   	var pwd1 = document.getElementById("pwd1").value;
    var pwd2 = document.getElementById("pwd2").value;
    var regex_email = /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;

	
	
	

	if (name == ""|| email == "" || pwd1 == "" || pwd2 == "") {
			document.getElementById("signup-error").innerHTML = "Atleast one field is empty!";
			return false;
		} else if (/\d/.test(name)) {
			document.getElementById("signup-error").innerHTML = "Name should not contain numbers";
			return false;
		}
 		else if (!regex_email.test(email)) {
			document.getElementById("signup-error").innerHTML = "Invalid Email Address !!";
			return false;
		} 
		else if (pwd1 !== pwd2) {
			document.getElementById("signup-error").innerHTML = "Passwords Do Not Match!!!";
			return false;
		} 
		else if (pwd1.length < 8 || pwd2.length < 8) {
			document.getElementById("signup-error").innerHTML = "Password should be minimum 8 characters";
			return false;
		} else if (!document.getElementById("agree").checked) {
			document.getElementById("signup-error").innerHTML = "You have to certify that you are an employee";
			return false;
		}  else {
			alert("Signup successful..Redirecting to login page.");
			return true;
		}

	}
</script>
    </head>
    <body class="login-img3-body">  
		<header id="header">
      
        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                  
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp">Home</a></li>
                        <li><a href="aboutUs.html">About Us</a></li>
                        <li><a href="Services.html">Services</a></li>
                        <li><a href="contactUs.html">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->
		<div class="container">

      <form class="login-form" align="left" action="SignupServlet" method="post"> 
	 
        <div class="login-wrap">
           
			<table width=300 cellpadding="10">
            	<tr><td>Employee Name *</td><td><input type="text" id="ename" name="ename" /></td></tr>
            	<tr><td>Employee Email ID *</td><td><input type="text" id="email" name="email" /></td></tr>
				<tr><td>Password *</td><td><input type="password" id="pwd1" name="pwd1" /></td></tr>
				<tr><td>Repeat Password *</td><td><input type="password" id="pwd2" name="pwd2" /></td></tr>
            	<tr><td colspan=2><label class="checkbox"><input type="checkbox" id="agree" /><label>* I am an employee of TwentyFifteen</label></td></tr>
				<tr><td colspan=2><input class="btn btn-info btn-lg btn-block" type="submit" value="Sign Up" onclick="return register_form();" /></td></tr>
            </table>	
        
	    </div>
        <br>
            <span id="signup-error" style="color:red" ></span>         
        <br>    
      </form>

    </div>
	
    </body>
</html>





