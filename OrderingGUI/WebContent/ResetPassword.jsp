<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Login Page 2 | Creative - Bootstrap 3 Responsive Admin Template</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
	<link href="css/logintab.css" rel="stylesheet" />

<script type="text/javascript">

function validatePassword()
{
	
	var pass1 = document.getElementById("new").value;
    var pass2 = document.getElementById("confirmNew").value;
	
	
	if(pass1==""||pass2=="")
	{
		document.getElementById("reset-error").innerHTML="Atleast one field is empty!";
		return false;
	}
    else{   
			
			if(pass1.length<8)
			{
				document.getElementById("reset-error").innerHTML="Password should be minimum 8 characters";
				return false;
			}
			else
			{
					if (pass1 != pass2) 
					{
						document.getElementById("reset-error").innerHTML="Passwords Do Not Match!!!";
						return false;
					}
					else
					{
						document.getElementById("reset-error").innerHTML="Password successfully reset";
						return true;
					}
				
			}
			
			
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
                        <li class="active"><a href="index.html">Home</a></li>
                        <li><a href="about-us.html">About Us</a></li>
                        <li><a href="services.html">Services</a></li>
                        <li><a href="contact-us.html">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->
  
    <div class="container">

      <form class="login-form" action="ResetPasswordServlet"  method="post" align="right"> 
	 
        <div class="login-wrap">
            <p class="login-img"><i class="icon_lock_alt"></i></p>
            <div class="input-group">
              <span class="input-group-addon"><i class="icon_profile"></i></span>
              <input type="password" class="form-control" placeholder="New Password"  name ="newPassword" id="new"  autofocus>
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input type="password" class="form-control" placeholder="Confirm New Password" name ="confirmNewPassword" id="confirmNew">
            </div>
			
            <br>
            <br>
			<%
			String emp_id=(String)session.getAttribute("emp_id");
			String emp_name=(String)session.getAttribute("emp_name");
			%>
            <button class="btn btn-primary btn-lg btn-block" type="submit" onclick="return validatePassword();">Reset Password</button>
            <br>
            <br>
            <span id="reset-error" style="color:red"></span>            
            </div>
		
      </form>

    </div>

 

  </body>
</html>
