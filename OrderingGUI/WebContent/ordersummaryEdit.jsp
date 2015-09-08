<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.verizon.ves.webservice.servlets.*, com.verizon.ves.ui.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  <script type="text/javascript" src="sliderengine/jquery.js"></script><script type="text/javascript" src="sliderengine/jquery.hislider.js"></script>
  
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>V Enterprise </title>
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
    <!-- new order css -->
   
	<!--main page akash css-->
	<link href="css/main-content.css" rel="stylesheet">
    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />    
    <!-- full calendar css-->
    <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
	<link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <!-- owl carousel -->
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
	<link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <!-- Custom styles -->
	<link rel="stylesheet" href="css/fullcalendar.css">
	<link href="css/widgets.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
	<link href="css/xcharts.min.css" rel=" stylesheet">	
	<link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
    
    
        <script type="text/javascript" src="jspdf/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="jspdf/jspdf.js"></script>
<script type="text/javascript" src="jspdf/jspdf.plugin.standard_fonts_metrics.js"></script> 
<script type="text/javascript" src="jspdf/jspdf.plugin.split_text_to_size.js"></script>               
<script type="text/javascript" src="jspdf/jspdf.plugin.from_html.js"></script>
<script type="text/javascript" src="jspdf/FileSaver.js"></script>
 <script>
     function demoFromHTML() {
         var doc = new jsPDF('p', 'in', 'letter');
         var source = $('#table').first();
         var specialElementHandlers = {
             '#bypassme': function(element, renderer) {
                 return true;
             }
         };

         doc.fromHTML(
            $('#table').get(0), // [Refer Exact code tutorial][2]HTML string or DOM elem ref.
             0.5,    // x coord
             0.5,    // y coord
             {
                 'width': 7.5, // max width of content on PDF
                 'elementHandlers': specialElementHandlers
             });
        var file = <%= ((EnterpriseOrder)session.getAttribute("enterpriseOrder")).getOrderid() %>;
		var fileName = file + ".pdf";
		alert(fileName);
         doc.save(fileName);
         location.href="EmailAttachmentSendingServlet";
    }
</script>
    
  </head>

  <body>
  <!-- container section start -->
  <section id="container" class="">
     
      
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
                    
                    <!-- task notificatoin end -->
                    <!-- inbox notificatoin start-->
                   
                    <!-- inbox notificatoin end -->
                    <!-- alert notification start-->
                    
                    <!-- alert notification end-->
                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="img/avatar1_small.jpg">
                            </span>
                            <span class="username">Jenifer Smith</span>
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
                  <li class="active">
                      <a data-toggle="tab" class="" href="#neworder" onclick="change1()">
                          <i class="icon_house_alt"></i>
                          <span>New Order</span>
                      </a>
                  </li>
				    
                  <li class="sub-menu">
                      <a data-toggle="tab" href="#cancelorder" onclick="change2()">
                          <i class="icon_desktop"></i>
                          <span>Edit Order</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      
                  </li>
                 
                  <li>                     
                      <a data-toggle="tab" href="#orderstatus" onclick="change3()">
                          <i class="icon_piechart"></i>
                          <span>Order Status</span>
                          
                      </a>
                                         
                  </li>  
              </ul>
              <!-- sidebar menu end-->
          </div>
		 
      </aside>
	 
	<div id="framework1" >
	<h1>Order Summary</h1>
	
	<div id="table">
		<table id="order-table" cellpadding="7px">
		
		<tr>
		<td>Company Name:</td>
		<td><%= ((ProfilePull)session.getAttribute("profile")).getCustomerdetails().getFname() %></td>
		</tr>
		
		<tr>
		<td>Customer ID</td>
		<td><%= ((EnterpriseOrder)session.getAttribute("enterpriseOrder")).getCustomerid() %></td>
		</tr>
		
		<tr>
		<td>Connection Address:</td>
		<td><%= ((ProfilePull)session.getAttribute("profile")).getCustomerdetails().getConnectionaddress() %></td>
		</tr>
		
		
		<tr>
		<td>Billing Address:</td>
		<td><%= ((ProfilePull)session.getAttribute("profile")).getCustomerdetails().getBillingaddress() %></td>
		</tr>
		
		<tr>
		<td>E-Mail Id:</td>
		<td><%= ((ProfilePull)session.getAttribute("profile")).getCustomerdetails().getEmail() %></td>
		</tr>
		
		
		<tr>
		<td>Contact No.</td>
		<td><%= ((ProfilePull)session.getAttribute("profile")).getCustomerdetails().getContactnumber() %></td>
		</tr>
		
		<tr>
		<td>Contract Modification Details:</td>
		</tr>
		
		<tr>
		<td>Contract ID</td>
		<td><%= ((EnterpriseOrder)session.getAttribute("enterpriseOrder")).getContractid() %></td>
		</tr>

		<tr>
		<td>Order ID</td>
		<td><%= ((EnterpriseOrder)session.getAttribute("enterpriseOrder")).getOrderid() %></td>
		</tr>

		</table>
	</div>
		
		<table id="print-button">
		<tr>
		<td>
		<!-- input type="button" class="btn btn-success" value ="Print"/> -->
		<a class="btn btn-success" href="javascript:demoFromHTML()">Generate Contract</a> 
		
		</td>
		</tr>
		</table>
		
		
	</div>

	 
	
	 
	 
	  
  <!-- container section start -->
  <
     <script src="js/jquery-1.9.1.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/app.js"></script>
    <!-- javascripts -->
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <!--  The New Order 1St Part -->
    <script type="text/javascript" src="js/app.js"></script>
     <script src="js/jquery-1.9.1.js" type="text/javascript"></script>
    
    <script src="js/jquery.js"></script>
	<script src="js/jquery-ui-1.10.4.min.js"></script>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
    <!-- bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- charts scripts -->
    <script src="assets/jquery-knob/js/jquery.knob.js"></script>
    <script src="js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="js/owl.carousel.js" ></script>
    <!-- jQuery full calendar -->
    <<script src="js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
	<script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="js/calendar-custom.js"></script>
	<script src="js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="js/jquery.customSelect.min.js" ></script>
	<script src="assets/chart-master/Chart.js"></script>
   
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="js/sparkline-chart.js"></script>
    <script src="js/easy-pie-chart.js"></script>
	<script src="js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="js/jquery-jvectormap-world-mill-en.js"></script>
	<script src="js/xcharts.min.js"></script>
	<script src="js/jquery.autosize.min.js"></script>
	<script src="js/jquery.placeholder.min.js"></script>
	<script src="js/gdp-data.js"></script>	
	<script src="js/morris.min.js"></script>
	<script src="js/sparklines.js"></script>	
	<script src="js/charts.js"></script>
	<script src="js/jquery.slimscroll.min.js"></script>
	<script src="jquery.js"></script> 
   
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

  
  
      
      //knob
      $(function() {
        $(".knob").knob({
          'draw' : function () { 
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
          $("#owl-slider").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true

          });
      });

      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });
	  
	  /* ---------- Map ---------- */
	$(function(){
	  $('#map').vectorMap({
	    map: 'world_mill_en',
	    series: {
	      regions: [{
	        values: gdpData,
	        scale: ['#000', '#000'],
	        normalizeFunction: 'polynomial'
	      }]
	    },
		backgroundColor: '#eef3f7',
	    onLabelShow: function(e, el, code){
	      el.html(el.html()+' (GDP - '+gdpData[code]+')');
	    }
	  });
	});



  </script>

  </body>
</html>
