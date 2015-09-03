<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Enterprise</title>

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

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    
    
    <script type="text/javascript">

function validate()
{


	var userName = document.getElementById("userName").value;
    var password = document.getElementById("password").value;

	
	
	if(userName==""||password=="")
	{
		document.getElementById("login-error").innerHTML="Atleast one field is empty!";
		return false;
	}
	var emp_id=<%= session.getAttribute("emp_id")%>;
	
		
}

</script>
</head>

  <body class="login-img3-body">
	<header id="header">
    
        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                
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
	<div id="Frame">
	
			<div id="left">
					<div id="top">
								<img  src="img/2015logowhite.png" style="width:200px;height:200px;" >
					</div>
					<div id="bottom">
								<h2>ENTERPRISE SOLUTIONS</h2>
								<h3>Succeeding in business is all about making connections,<br> and we do it for you.</h3>
					</div>
						
			</div>
			<div id="right">
									
					<form class="login-form" action="LoginServlet"  method="post" align="right"> 
						 
							<div class="login-wrap">
								<p class="login-img"><i class="icon_lock_alt"></i></p>
								<div class="input-group">
								  <span class="input-group-addon"><i class="icon_profile"></i></span>
								  <input type="text" class="form-control" placeholder="Username" name ="userName" id="userName" autofocus>
								</div>
								<div class="input-group">
									<span class="input-group-addon"><i class="icon_key_alt"></i></span>
									<input type="password" class="form-control" placeholder="Password" name ="password" id="password">
								</div>
						 		
								<span class="pull-right"> <a href="ForgotPassword.jsp">&nbsp;&nbsp;&nbsp;Forgot Password?</a></span>
								<br>
            <br>
            <button class="btn btn-primary btn-lg btn-block " type="submit" onclick="return validate();">Login</button>
            
            <a class="btn btn-info btn-lg btn-block " href="emp_signup.jsp" >New Employee? Register</a>
        	<br>
        	<br>
        	<span id="login-error" style="color:red"></span>
							</div>
					
					</form>	
			</div>
	</div>

  </body>
</html>
