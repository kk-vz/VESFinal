<!DOCTYPE html>
<%@page import="com.verizon.ves.ui.CustomerDetails"%>
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
    <!--link href="css/default.css" rel="stylesheet"-->
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
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                                         
                  </li>  
              </ul>
              <!-- sidebar menu end-->
          </div>
		 
      </aside>

		<div id="framework">


			<script>
				document.getElementById("framework").innerHTML = '<center><object height="700" width="1300" type="text/html" data="slider.html" ></object></center>';
			</script>

		</div>
		<!--footer id="myfooter" class="header dark-bg"></footer-->
		<!--NEW ORDER-->
		<div id="neworder" class="onetime">

			<div id="left">
				<div id="new_form">
					<form id="myAjaxRequestForm" action="CheckNewUserServlet"
						method="post">
						<fieldset>
							<h2>Customer Information</h2>
							<br>
							<p>
								<label for="cust_name">Customer's Email:</label> <input
									id="email" type="text" name="email" />&nbsp;&nbsp;&nbsp; <input
									class="btn btn-success" type="submit" value="Validate" />
							</p>
						</fieldset>
					</form>
					<div id="anotherSection">
						<fieldset>

							<div id="ajaxResponse">
								<form action="" class="register" method="post">


									<h3>Billing Details</h3>


									<table>
					<tr>
							<td>
								Company Name *
							</td>
							<td>	
							<input type="text" id="fname" name="fname" onblur="validate(this);" value='<%= ((CustomerDetails)session.getAttribute("customerdetails")).getFname() %>'/> 
							
							</td>	
							<span id="namev"></span>
					</tr>
               
					<tr>
							<td>				
								Street *`
							</td>
							<td>
							<input type="text" class="long" name="bstreetname" id="bstreetname" onblur="validate(this);"  value='<%= ((CustomerDetails)session.getAttribute("customerdetails")).getBillingaddress().getStreetname() %> '/><span id="streetv"></span>
							</td>
					</tr>
					
					<tr>
							<td>
								City *
							</td>
							<td>
							<input type="text" class="long" name="bcity" id="bcity" onblur="validate(this);" value='<%= ((CustomerDetails)session.getAttribute("customerdetails")).getBillingaddress().getCity() %>'/>
							<span id="streetv"></span>
							</td>
					</tr>
					
					<tr>
							<td>
								State *
							</td>
							<td>
							
								<select id="bstate" name="bstate" value='<%= ((CustomerDetails)session.getAttribute("customerdetails")).getBillingaddress().getState() %>'>
										<option value="select">----select your state----</option>
										<option value="ALASKA">ALASKA</option>
										<option value="ARIZONA">ARIZONA</option>
										<option value="CALIFORNIA">CALIFORNIA</option>
										<option value="COLORADO">COLORADO</option>
										<option value="FLORIDA">FLORIDA</option>
										<option value="GEORGIA">GEORGIA</option>
										<option value="HAWAII">HAWAII</option>
										<option value="INDIANA">INDIANA</option>
										<option value="KENTUCKY">KENTUCKY</option>
										<option value="MICHIGAN">MICHIGAN</option>
										<option value="MISSISSIPPI">MISSISSIPPI</option>
										<option value="MISSOURI">MISSOURI</option>
										<option value="NEW HAMPSHIRE">NEW HAMPSHIRE</option>
										<option value="NEW JERSY">NEW JERSY</option>
										<option value="NEW MEXICO">NEW MEXICO</option>
										<option value="NEW YORK">NEW YORK</option>
										<option value="OKLAHOMA">OKLAHOMA</option>
										<option value="OREGON">OREGON</option>
										<option value="PENNSYLVANIA">PENNSYLVANIA</option>
										<option value="TENNESSE">TENNESSE</option>
										<option value="TEXAS">TEXAS</option>
										<option value="VERMONT">VERMONT</option>
										<option value="VIRGINIA">VIRGINIA</option>
										<option value="WASHINGTON">WASHINGTON</option>
										<option value="WEST VIRGINIA">WEST VIRGINIA</option>
								</select>
							<span id="streetv"></span>	

							</td>
					</tr>
				
					<tr>
							<td>
								Zipcode *
							</td>
							<td>
								<input type="text" class="long" name="bzipcode" id="bzipcode" onblur="validate(this);" value='<%= ((CustomerDetails)session.getAttribute("customerdetails")).getBillingaddress().getZipcode() %>'/><span id="streetv"></span>
							</td>
					</tr>
				
                
                
                
					<tr>
							<td>
								Email Address *
							</td>
							<td>
								<input type="text" class="long" name="email" id="email" onblur="validate(this);" value='<%= ((CustomerDetails)session.getAttribute("customerdetails")).getEmail() %>' /><span id="countryv"></span>
							</td>
					</tr>
               
					<tr>
							<td>
								Contact *
							</td>
							<td>
								<input type="text" class="long" name="contactnumber" id="contactnumber" onblur="validate(this);" value='<%= ((CustomerDetails)session.getAttribute("customerdetails")).getContactnumber() %>'/><span id="zipv"></span>
							</td>
                    
                    </tr>
                </table>									<br>

									<!-- <label class="obinfo"> * Mandatory fields</label>-->
								</form>

							</div>




						</fieldset>
					</div>
				</div>
			</div>

			<div id="right">
				<div id="new_form">

					<div id="anotherSection">
						<fieldset>

							<div id="ajaxResponse">
								<form action="NextButtonServlet" class="register" method="post">

									<h3>Provisioning Address</h3>
									<table>
										<tr>
											<td>Street *`</td>
											<td><input type="text" class="long" name="cstreetname"
												id="cstreetname" onblur="validate(this);" /><span id="streetv"></span>
											</td>
										</tr>

										<tr>
											<td>City *</td>
											<td><input type="text" class="long" name="ccity"
												id="ccity" onblur="validate(this);" /> <span id="streetv"></span></td>
										</tr>

										<tr>
											<td>State *</td>
											<td><select id="cstate" name="cstate">
													<option value="select">----select your state----</option>
													<option value="ALASKA">ALASKA</option>
													<option value="ARIZONA">ARIZONA</option>
													<option value="CALIFORNIA">CALIFORNIA</option>
													<option value="COLORADO">COLORADO</option>
													<option value="FLORIDA">FLORIDA</option>
													<option value="GEORGIA">GEORGIA</option>
													<option value="HAWAII">HAWAII</option>
													<option value="INDIANA">INDIANA</option>
													<option value="KENTUCKY">KENTUCKY</option>
													<option value="MICHIGAN">MICHIGAN</option>
													<option value="MISSISSIPPI">MISSISSIPPI</option>
													<option value="MISSOURI">MISSOURI</option>
													<option value="NEW HAMPSHIRE">NEW HAMPSHIRE</option>
													<option value="NEW JERSY">NEW JERSY</option>
													<option value="NEW MEXICO">NEW MEXICO</option>
													<option value="NEW YORK">NEW YORK</option>
													<option value="OKLAHOMA">OKLAHOMA</option>
													<option value="OREGON">OREGON</option>
													<option value="PENNSYLVANIA">PENNSYLVANIA</option>
													<option value="TENNESSE">TENNESSE</option>
													<option value="TEXAS">TEXAS</option>
													<option value="VERMONT">VERMONT</option>
													<option value="VIRGINIA">VIRGINIA</option>
													<option value="WASHINGTON">WASHINGTON</option>
													<option value="WEST VIRGINIA">WEST VIRGINIA</option>
											</select></td>

											<td>&nbsp;&nbsp;&nbsp; <!--<input type="button" class="btn btn-success" value="Search" name="sub" id="sub" />-->
												<div id="response"></div>
											</td>
										</tr>

										<tr>
											<td>Zipcode *</td>
											<td><input type="text" class="long" name="czipcode"
												id="czipcode" onblur="validate(this);" /><span id="streetv"></span>
											</td>
										</tr>
									</table>
									<div>
									<br> <label class="obinfo"> * Mandatory fields</label> 
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<button class="btn btn-success" type="submit" "><strong>Next
											&raquo;</strong></button>
									</div>




									<br>

								</form>
								<!--form action="NewOrderServlet" class="register" method="post">

									<h3>Quoting</h3>
									<table>
										<tr>
											<td>Contract Type *`</td>
											<td><select id="modeltype" name="modeltype">
													<option value="select">--Select Contract Type--</option>
													<option>Right To Buy</option>
													<option>Transactional</option>
											</select><span id="streetv"></span></td>
										</tr>

										<tr>
											<td>Class Of Service *</td>
											<td><select id="classofservice" name="classofservice">
													<option value="select">--Select Class Of Service--</option>
													<option>Platinum</option>
													<option>Gold</option>
													<option>Silver</option>
													<option>Bronze</option>
													<option>Regular</option>
											</select> <span id="streetv"></span></td>
										</tr>

										<tr>
											<td>Discount Percentage *</td>
											<td><input type="text" name="discountpercentage"
												id="discountpercentage" /> <span id="streetv"></span></td>
										</tr>


										<tr>
											<td>Contract Start Date *</td>
											<td><input type="date" name="fromdate" id="fromdate" />
												<span id="streetv"></span></td>
										</tr>


										<tr>
											<td>Contract End Date *</td>
											<td><input type="date" name="todate" id="todate" /> <span
												id="streetv"></span></td>
										</tr>






									</table>
									<div>
									<br> <label class="obinfo"> * Mandatory fields</label> 
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<button class="btn btn-success" type="submit" "><strong>Next
											&raquo;</strong></button>
									</div>
								</form-->


							</div>
						</fieldset>
					</div>


				</div>
			</div>








			<!-- container section start -->
  
     <script src="js/jquery-1.9.1.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/app.js"></script>
    <!-- javascripts -->
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <!--  The New Order 1St Part -->
    <script type="text/javascript" src="js/app.js"></script>
     <script src="js/jquery-1.9.1.js" type="text/javascript"></script>
    <!--PCAT PRODUCT CATALOG-->
    <script src="js/PCATurl.js" />
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
    <script src="js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
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
   document.getElementById("framework").innerHTML="";
   document.getElementById("framework").innerHTML=document.getElementById("neworder").innerHTML;
   
   
  }
   function change2()
  {
   document.getElementById("framework").innerHTML="";
   document.getElementById("framework").innerHTML=document.getElementById("editorder").innerHTML;
   
  }
    function change3()
  {
   document.getElementById("framework").innerHTML="";
   document.getElementById("framework").innerHTML=document.getElementById("orderstatus").innerHTML;
   
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
