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

function register_form()
{
	
	var id = document.getElementById("emp_id").value;
	var name = document.getElementById("emp_name").value;
	var email = document.getElementById("email").value;
   	var regex_email = "^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$";

	
	
	

	if (name == "" || id == "" || email == "") {
			document.getElementById("signup-error").innerHTML = "Atleast one field is empty!";
			return false;
		} else if (/\d/.test(name)) {
			document.getElementById("signup-error").innerHTML = "Name should not contain numbers";
			return false;
		} else if (regex_email.test(email)) {
			document.getElementById("signup-error").innerHTML = "Invalid Email Address !!";
			return false;
		}else if (!(/\d/.test(name))) {
			document.getElementById("signup-error").innerHTML = "ID must contain numbers only!!!";
			return false;
		} else {
			
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

      <form class="login-form" action="ForgotPasswordServlet"  method="post" align="right"> 
	 
        <div class="login-wrap">
            <p class="login-img"><i class="icon_lock_alt"></i></p>
            <div class="input-group">
              <span class="input-group-addon"><i class="icon_profile"></i></span>
              <input type="text" class="form-control" placeholder="Employee ID"  name ="emp_id" autofocus>
            
            </div>
          <div class="input-group">
                <span class="input-group-addon"><i class="icon-envelope-l"></i></span>
                  <input type="email" class="form-control" placeholder="Employee Email ID"  name ="email" >
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input type="text" class="form-control" placeholder="Employee Name" name ="emp_name" >
            </div>
			
            <br>
            <br>
            <button class="btn btn-primary btn-lg btn-block" type="submit">Send Mail</button>
            </div>
		
      </form>

    </div>

 

  </body>
</html>
