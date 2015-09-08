<!DOCTYPE html>
<%@page import="com.verizon.ves.ui.CustomerDetails"%>
<html lang="en">
<head>

<script>
function Send(){
	alert("hello");
	  var producttable = document.getElementById("producttable");
	  var rowLength = producttable.rows.length;
	var selectedRow=0;
	var i;
	alert("hellorowlength");
	alert(rowLength);
	   for(i=1;i<=rowLength;i++)
	   {	  alert(document.getElementsByName("product")[i-1].checked);
			   if(document.getElementsByName("product")[i-1].checked)
				{	
				  selectedRow = i;
				  
				break;
				
		   }
		   
     	}
	   
	  alert(producttable.rows[selectedRow].cells[4].innerHTML);
	  var cost =producttable.rows[selectedRow].cells[4].innerHTML;
	
	  alert(cost);
	  var quantity = document.getElementById("quantity").value;
	  //alert(document.getElementById("quantity").value);
	 	  
	  /*session.setAttribute("cost",cost);
	  session.setAttribute("quantity", quantity);*/
	  
	  document.getElementById("costperitem").value=cost;
	 document.getElementById("qty").value=quantity;
	  
	  alert(document.getElementById("costperitem").value);
	  alert(document.getElementById("qty").value);
	  
		document.hidden.submit();
	}
			function alert1(temp) {

				if (temp.id == "prod1") {
					service = "internetdedicated";
				} else if (temp.id == "prod2") {
					service = "pip";
				} else if (temp.id == "prod3") {
					service = "internetdedicated&p1=pip";

				} else if (temp.id == "prod4") {
					service = "access";
				} else if (temp.id == "prod5") {
					service = "pip&p1=access";
				} else if (temp.id == "prod6") {
					service = "access&p1=internetdedicated";
				} else if (temp.id == "prod7") {
					service = "access&p1=pip&p2=internetdedicated";
				}
				// pstate or cstate?
				var pstate = '<%= ((CustomerDetails)session.getAttribute("customerdetails")).getConnectionaddress().getState() %>'; 
		alert(pstate);
		dataString = "pstate=" + pstate	+ "&pService=" + service;
		
		$.ajax({
					type : "POST",
					url : "CallPCatServiceCatalog",
					data : dataString,
					dataType : "json",

					//if received a response from the server
					success : function(data, textStatus, jqXHR) {
							alert("got the json");
						$("#PL").html("");

						alert(data);
						str1 = JSON.stringify(data);
						var obj = JSON.parse(str1);
						alert(str1);
						alert(obj.Product_Details[0].Product_ID.value);

						var radio = "<input type=\"radio\" name=\"product\" id=\"product\" value=\"";
						var radio_next = "\"/>";
						var table_head = "<table name=\"producttable\" id=\"producttable\" cellpadding=\"15px\"  class=\"product-table\">" +
										 "<tr>" +
										 "<td>Select</td>" +
										 "<td>Product ID</td>" +
										 "<td>Product Name</td>" +
										 "<td>Product Description</td>" +
										 "<td>Cost($)</td>" +
										 "</tr>";

						med = "";
						if (service == "access" || service == "pip"
								|| service == "internetdedicated") {
							for (var i = 0; i < obj.Product_Details.length; i++) {

								med = med
										+ "<tr><td>"
										+ radio
										+ obj.Product_Details[i].Product_ID.value
										+ radio_next
										+ "</td><td>"
										+ obj.Product_Details[i].Product_ID.value
										+ "</td><td>"
										+ obj.Product_Details[i].Product_Name.value
										+ "</td><td>"
										+ obj.Product_Details[i].Product_Description.value
										+ "</td><td>"
										+ obj.Product_Details[i].Cost.value
										+ "</td></tr>"
										
							}
							$("#PL").append(table_head + med + "</table>");
						
						} else {
							
							for (var i = 0; i < obj.Bundle_Details.length; i++) {

								med = med + "<tr><td>" + radio
										+ obj.Bundle_Details[i].Bundle_Id.value
										+ radio_next + "</td><td>"
										+ obj.Bundle_Details[i].Bundle_Id.value
										+ "</td><td>" + " " + "</td><td>"
										+ obj.Bundle_Details[i].Bundle_Desc.value
										+ "</td><td>"
										+ obj.Bundle_Details[i].Bundle_Cost.value;
										+"</td></tr>"
							}
							$("#PL").append(table_head + med + "</table>");
						//
						}
						$("#GenerateButton").append("Quantity <input type=\"number\" id=\"quantity\" name=\"quantity\">");
						
						$("#GenerateButton").append("<br><br><br><button class=\"btn btn-success\" onClick=\"Send();\" >Generate Contract</button>");

					},

					//If there was no response from the server
					error : function(jqXHR, textStatus, errorThrown) {
						console.log("Something really bad happened " + textStatus);
						$("#PL").html(jqXHR.responseText);
					}

				});

	}


  
  </script>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>V Enterprise</title>
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
<link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css"
	rel="stylesheet" />
<link href="assets/fullcalendar/fullcalendar/fullcalendar.css"
	rel="stylesheet" />
<!-- easy pie chart-->
<link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
	rel="stylesheet" type="text/css" media="screen" />
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
	<div id="set_product_page">

		<!-- JSP bean code for getting the customer details from the home.jsp page -->

		<jsp:useBean id="customerdetails"
			class="com.verizon.ves.ui.CustomerDetails" scope="session"></jsp:useBean>
		<jsp:setProperty property="fname" name="customerdetails" param="fname" />
		<jsp:setProperty property="lname" name="customerdetails" param="lname" />
		<jsp:setProperty property="email" name="customerdetails" param="email" />
		<jsp:setProperty property="contactnumber" name="customerdetails"
			param="contactnumber" />

		<jsp:useBean id="connectionaddress" class="com.verizon.ves.ui.Address"
			scope="session"></jsp:useBean>
		<jsp:setProperty property="streetname" name="connectionaddress"
			param="cstreetname" />
		<jsp:setProperty property="city" name="connectionaddress"
			param="ccity" />
		<jsp:setProperty property="state" name="connectionaddress"
			param="cstate" />
		<jsp:setProperty property="zipcode" name="connectionaddress"
			param="czipcode" />

		<jsp:useBean id="billingaddress" class="com.verizon.ves.ui.Address"
			scope="session"></jsp:useBean>
		<jsp:setProperty property="streetname" name="billingaddress"
			param="bstreetname" />
		<jsp:setProperty property="city" name="billingaddress" param="bcity" />
		<jsp:setProperty property="state" name="billingaddress" param="bstate" />
		<jsp:setProperty property="zipcode" name="billingaddress"
			param="bzipcode" />

		<jsp:setProperty property="billingaddress" name="customerdetails"
			value="${billingaddress}" />
		<jsp:setProperty property="connectionaddress" name="customerdetails"
			value="${connectionaddress}" />


		<!-- Bean code ends here -->

		<!-- container section start -->




		<header class="header dark-bg">
			<div class="toggle-nav">
				<div class="icon-reorder tooltips"
					data-original-title="Toggle Navigation" data-placement="bottom"></div>
			</div>

			<!--logo start-->
			<a href="home.jsp" class="active"><img alt="no source"
				src="img/2015logoblack.png" height="60px" width="60px"><span
				class="lite"> </span></a>
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
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <span class="profile-ava">
								<% String image_source = "img/"+session.getAttribute("userName")+".jpg"; %>
								<img alt="" src=<%=image_source %>>
						</span> <span class="username"><%= session.getAttribute("userName")%></span>
							<b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<div class="log-arrow-up"></div>

						</ul></li>
					<!-- user login dropdown end -->
				</ul>
				<!-- notificatoin dropdown end-->
			</div>
		</header>
		<!--header end-->

		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu">
					<li><a data-toggle="tab" class="" href="#" onclick="change1()"> <i
							class="icon_house_alt"></i> <span>New Order</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a></li>

					<li class="sub-menu"><a data-toggle="tab" href="#" onclick="change2()">
							<i class="icon_desktop"></i> <span>Edit Order</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a></li>

					<li><a data-toggle="tab" href="#" onclick="change3()"> <i
							class="icon_piechart"></i> <span>Order Status</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a></li>
				</ul>
				<!-- sidebar menu end-->
			</div>

		</aside>



		<div id="left">
			<div id="product_display">


				<div id="product_right">
					<table>

						<tr>
							<td height="150px" width="150px">

								<div id="f1_container">
									<div id="f1_card" class="shadow">
										<a href="#" id="prod1" onClick="alert1(this);">
											<div id="product1" class="front face"></div>


											<div id="back1" class="back face center"></div>
										</a>
									</div>
								</div>

							</td>


							<td height="150px" width="150px">
								<div id="f1_container">
									<div id="f1_card" class="shadow">
										<a href="#" id="prod2" onClick="alert1(this);">
											<div id="product2" class="front face"></div>
											<div id="back2" class="back face center"></div>
										</a>
									</div>
								</div>
							</td>
							<td height="150px" width="150px">
								<div id="f1_container">
									<div id="f1_card" class="shadow">
										<a href="#" id="prod3" onClick="alert1(this);"><div
												id="product3" class="front face"></div>

											<div id="back3" class="back face center"></div>
									</div>
									</a>
								</div>
							</td>

						</tr>

						<tr>
							<td></td>
							<td height="150px" width="150px">
								<div id="f1_container">
									<div id="f1_card" class="shadow">
										<a href="#" id="prod4" onClick="alert1(this);">
											<div id="product4" class="front face"></div>
											<div id="back4" class="back face center"></div>
									</div>
									</a>
								</div>
							</td>
							<td height="150px" width="150px"></td>

						</tr>

						<tr>
							<td height="150px" width="150px">

								<div id="f1_container">
									<div id="f1_card" class="shadow">
										<a href="#" id="prod5" onClick="alert1(this);">
											<div id="product5" class="front face"></div>
											<div id="back5" class="back face center"></div>
										</a>
									</div>
								</div>

							</td>
							<td height="150px" width="150px">
								<div id="f1_container">
									<div id="f1_card" class="shadow">
										<a href="#" id="prod6" onClick="alert1(this);">
											<div id="product6" class="front face"></div>
											<div id="back6" class="back face center"></div>
										</a>
									</div>
								</div>
							</td>

							<td height="150px" width="150px">
								<div id="f1_container">
									<div id="f1_card" class="shadow">
										<a href="#" id="prod7" onClick="alert1(this);">
											<div id="product7" class="front face"></div>
											<div id="back7" class="back face center"></div>
										</a>
									</div>
								</div>
							</td>
						</tr>

					</table>
				</div>

			</div>
		</div>

		<div id="right">

			<div id="PL"></div>
			<div style="margin-top: 10%;" align="center" id="GenerateButton"></div>
			
	
			<form id="hidden" name="hidden" action="NewOrderServlet" method="get">
			<input type="text" id="costperitem" name="costperitem" style="visibility:hidden"/>
			 <input type="text" id="qty" name="qty" style="visibility:hidden"/>
			 </form>

			
			
			
		</div>

<script>
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






		<!-- container section start -->

		<script src="js/jquery-1.9.1.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/app.js"></script>
		<!-- javascripts -->
		<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
		<!--  The New Order 1St Part -->
		<script type="text/javascript" src="js/app.js"></script>
		<script src="js/jquery-1.9.1.js" type="text/javascript"></script>
		<!--PCAT PRODUCT CATALOG-->

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
		<script src="js/owl.carousel.js"></script>
		<!-- jQuery full calendar -->
		<script src="js/fullcalendar.min.js"></script>
		<!-- Full Google Calendar - Calendar -->
		<script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
		<!--script for this page only-->
		<script src="js/calendar-custom.js"></script>
		<script src="js/jquery.rateit.min.js"></script>
		<!-- custom select -->
		<script src="js/jquery.customSelect.min.js"></script>
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
</body>
</html>
