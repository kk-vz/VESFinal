<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="com.verizon.ves.ui.CustomerDetails"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <title>Sign-up</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <!--link rel="stylesheet" type="text/css" href="css/default.css"/-->
<script type="text/javascript">
function validate(obj)
{
if(obj.value=="")
	{
		switch(obj.name)
		{
		case "fname":
			document.getElementById("namev").innerHTML="This field cannot be empty.";
			break;
		
		case "bstreetname":
			document.getElementById("streetv").innerHTML="This field cannot be empty.";
			break;
		case "bcity":
			document.getElementById("streetv").innerHTML="This field cannot be empty.";
			break;
		case "bzipcode":
			document.getElementById("streetv").innerHTML="This field cannot be empty.";
			break;
		case "cstreetname":
			document.getElementById("streetv").innerHTML="This field cannot be empty.";
			break;
		case "ccity":
			document.getElementById("streetv").innerHTML="This field cannot be empty.";
			break;
		case "czipcode":
			document.getElementById("streetv").innerHTML="This field cannot be empty.";
			break;
			
		case "pa":
			document.getElementById("statev").innerHTML="This field cannot be empty.";
			break;

		case "contactnumber":
			document.getElementById("zipv").innerHTML="This field cannot be empty.";
			break;
		
		}
	}
//document.getElementById("namev").innerHTML="This field cannot be empty.";

}
</script>
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
    </head>
    <body class="register-background">    

        <form action="" class="register" method="post">
            
            
                <h3>Billing Details</h3>
				
				
				<table>
					<tr>
							<td>
								Company Name *
							</td>
							<td>	
							<input type="text" id="fname" name="fname" onblur="validate(this);" /> 
							</td>	
							<span id="namev"></span>
					</tr>
               
					<tr>
							<td>				
								Street *`
							</td>
							<td>
							<input type="text" class="long" name="bstreetname" id="bstreetname" onblur="validate(this);"  /><span id="streetv"></span>
							</td>
					</tr>
					
					<tr>
							<td>
								City *
							</td>
							<td>
							<input type="text" class="long" name="bcity" id="bcity" onblur="validate(this);" />
							<span id="streetv"></span>
							</td>
					</tr>
					
					<tr>
							<td>
								State *
							</td>
							<td>
							
								<select id="bstate" name="bstate">
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
								<input type="text" class="long" name="bzipcode" id="bzipcode" onblur="validate(this);" /><span id="streetv"></span>
							</td>
					</tr>
				
                
                
                
					<tr>
							<td>
								Email Address *
							</td>
							<td>
								<input type="text" class="long" name="email" id="email" onblur="validate(this);" /><span id="countryv"></span>
							</td>
					</tr>
               
					<tr>
							<td>
								Contact *
							</td>
							<td>
								<input type="text" class="long" name="contactnumber" id="contactnumber" onblur="validate(this);" /><span id="zipv"></span>
							</td>
                    
                    </tr>
                </table>
                <br>
                
                 <!-- <label class="obinfo"> * Mandatory fields</label>-->
                    
         
			
        
                <h3>Provisioning Address
                </h3>
				<table>
					<tr>
							<td>				
								Street *`
							</td>
							<td>
							<input type="text" class="long" name="cstreet" id="cstreet" onblur="validate(this);" /><span id="streetv"></span>
							</td>
					</tr>
					
					<tr>
							<td>
								City *
							</td>
							<td>
							<input type="text" class="long" name="ccity" id="ccity" onblur="validate(this);" />
							<span id="streetv"></span>
							</td>
					</tr>
					
					<tr>
							<td>
								State *
							</td>
							<td>
								<select id="cstate" name="cstate">
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
								

							</td>
							
							<td>
							&nbsp;&nbsp;&nbsp;
							<!--<input type="button" class="btn btn-success" value="Search" name="sub" id="sub" />-->
								<div id="response"></div>
							</td>
					</tr>
				
					<tr>
							<td>
								Zipcode *
							</td>
							<td>
								<input type="text" class="long" name="czipcode" id="czipcode" onblur="validate(this);" /><span id="streetv"></span>
							</td>
					</tr>
            </table>    
      
              
               
            
           
            <br>
            <!--<div><button class="btn btn-success" type="submit" value="submit">Register &raquo;</button></div>-->
        </form>
		
    </body>
</html>





