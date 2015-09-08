<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Charts | Creative - Bootstrap 3 Responsive Admin Template</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />    
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
	<script>
	function visibility_div(){
	document.getElementById("details").style.visibility="visible";
	}
	function change1()
	{
	// document.getElementById("framework").innerHTML="";
	// document.getElementById("framework").innerHTML=document.getElementById("neworder").innerHTML;
	 location.href="NewOrder.jsp";
	 
	}
	 function change2()
	{
	//  document.getElementById("framework").innerHTML="";
	// document.getElementById("framework").innerHTML=document.getElementById("editorder").innerHTML;
	 location.href="EditOrder.jsp";
	 
	}
	  function change3()
	{
	// document.getElementById("framework").innerHTML="";
	// document.getElementById("framework").innerHTML=document.getElementById("orderstatus").innerHTML;
	 location.href="chart-chartjs.jsp";
	}

	</script>
	
  </head>

  <body>
      <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"></div>
            </div>

            <!--logo start-->
            <a href="home.jsp" class="active"><img alt="no source" src="img/2015logoblack.png" height="60px" width="60px"><span class="lite">   </span></a>
            <!--logo end-->

            <div class="nav search-row" id="top_menu">
                <!--  search form start -->
                <ul class="nav top-menu">                    
                    <li>
                        <form class="navbar-form">
                           <!--  <input class="form-control" placeholder="Search" type="text"> -->
                        </form>
                    </li>                    
                </ul>
                <!--  search form end -->                
            </div>

           <div class="top-nav notification-row">                
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">
                    
                    <!-- task notificatoin start -->
                    
                    <!-- alert notification end-->
                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                            	<% String image_source = "img/"+session.getAttribute("userName")+".jpg"; %>
                                <img alt="" src=<%=image_source %>>
                            </span>
                            <span class="username"><%= session.getAttribute("userName")%></span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                            <li class="eborder-top">
                                <a href="#"><i class="icon_profile"></i> My Profile</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_clock_alt"></i> Timeline</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_chat_alt"></i> Chats</a>
                            </li>
                            <li>
                                <a href="login.html"><i class="icon_key_alt"></i> Log Out</a>
                            </li>
                            <li>
                                <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                            </li>
                            <li>
                                <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                            </li>
                        </ul>
                    </li>
                    <!-- user login dropdown end -->
                </ul>
                <!-- notificatoin dropdown end-->
            </div>
      </header>      
      <!--header end-->

      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">                
                  <li>
                      <a data-toggle="tab" class="" href="#neworder" onclick="change1()">
                          <i class="icon_house_alt"></i>
                          <span>New Order</span>
						  <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                  </li>
				    
                  <li class="sub-menu">
                      <a data-toggle="tab"  onclick="change2()">
                          <i class="icon_desktop"></i>
                          <span>Edit Order</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      
                  </li>
                 
                  <li>                     
                      <a data-toggle="tab" onclick="change3()">
                          <i class="icon_piechart"></i>
                          <span>Order Status</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                                         
                  </li>  
              </ul>
              <!-- sidebar menu end-->
          </div>
		 
      </aside>
  
  <!-- container section start -->
  <!--section id="container" class=""-->
  
      <!--main content start-->      
      <section id="main-content">
        <section class="wrapper">
		<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="icon_piechart"></i>ORDER STATUS</h3>
					<% session.setAttribute("querying", "failed"); %>
				</div>
			</div>
            <div>
				<form action="OrderStatusServlet" method="post">
					<pre>
							Order ID : <input type="text" id="order"><input type="submit" id="orderid" >	
							
							<!--  <input type="button" class="btn btn-success" id="searchbutton" value="Search" onclick="visibility_div()"> -->
							<%
							if(((String)session.getAttribute("querying")).equals("success"))
							{
								int orderstatus =Integer.parseInt((String)session.getAttribute("orderstatus"));
								
							%>
								<input type="text" id="search" style="visibility:hidden" value=<%= orderstatus %> />
							<%
							}
			 				%>
							
							
					</pre>
				</form>
			
			<div id="details" style="visibility:hidden" >
					<div >
					<section class="panel"><canvas id="doughnut" height="200" width="300"></canvas> 
					<table>
					<tr>
					<td><b>Status : </b><div id="status"></div></td>	
					</tr>
					</table>
					<br>
																									
							
					</section>
					
					</div>
			</div>
			</div>
			
      <!--/section-->
      <!--main content end-->
    </section>
    <!-- container section end -->
    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- chartjs -->
    <script src="assets/chart-master/Chart.js"></script>
    <!-- custom chart script for this page only-->
    <script src="js/chartjs-custom.js"></script>
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>

  </body>
</html>
