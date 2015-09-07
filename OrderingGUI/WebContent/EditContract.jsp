<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/jquery-1.9.1.js" type="text/javascript"></script>
<script type="text/javascript" src="js/app.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>
function alert1() {
	
	<%
	   String email = request.getParameter( "email" );
	   session.setAttribute( "email", email );
	%>
	
	dataString = "email="+document.getElementById("email").value;
	
	$.ajax({
				type : "POST",
				url : "EditOrderServletGetContract",
				data : dataString,
				dataType : "json",

				//if received a response from the server
				success : function(data, textStatus, jqXHR) {
						alert("got the json");
					$("#PL").html("");

			//		alert(data);
					str1 = JSON.stringify(data);
					var obj = JSON.parse(str1);
			//		alert(str1);
			//		alert(obj.contractdetails[0].modeltype);

 /*
contractdetails": [
        {
            "contractid": "112345",
            "modeltype": "transactional|rtb",
            "classofservice": "platinum|gold|silver|bronze|normal",
            "fromdate": "18-aug-2015",
            "todate": "18-aug-2016",
            "current": 40,
            "max": 100,
            "discountpercentage": 10
        }
    ]
 */
					var radio = "<input type=\"radio\" name=\"contract\" id=\"contract\" value=\"";
					var radio_next = "\"/>";
					var table_head = "<table cellpadding=\"15px\" class=\"product-table\" name=\"contracttable\" id=\"contracttable\">" +
									 "<tr>" +
									 "<td>Select</td>" +
									 "<td>Contract ID</td>" +
									 "<td>Model Type</td>" +
									 "<td>Class of Service</td>" +
									 "<td>From </td>" +
									 "<td>To </td>" +
									 "<td>Current Qty</td>" +
									 "<td>Maximum Qty</td>" +
									 "<td>Discount Percentage</td>" 
									 
									 "</tr>";

					med = "";
					
						for (var i = 0; i < obj.contractdetails.length; i++) {
							alert(obj.contractdetails[i].current);
							med = med
									+ "<tr><td>"
									+ radio
									+ obj.contractdetails[i].contractid
									+ radio_next
									+ "</td><td>"
									+ obj.contractdetails[i].contractid
									+ "</td><td>"
									+ obj.contractdetails[i].modeltype
									+ "</td><td>"
									+ obj.contractdetails[i].classofservice
									+ "</td><td>"
									+ obj.contractdetails[i].fromdate
									+ "</td><td>"
									+ obj.contractdetails[i].todate
									+"</td><td>"
									+ obj.contractdetails[i].current
									+"</td><td>"
									+ obj.contractdetails[i].max
									+"</td><td>"
									+ obj.contractdetails[i].discountpercentage
									+ "</td></tr>"
						}


						
						$("#PL").append(table_head + med + "</table>");
					
					 
					//
					$("#Change").append(" Add/Increase Lines: <input type=\"number\" id=\"change\" name=\"change\" /> ");
					
					$("#EditButton").append("<div><a class=\"btn btn-info btn-lg btn-block \" href=\"EditOrderServletEditContract\" >Edit Contract</a></div>");
	
				},

				//If there was no response from the server
				error : function(jqXHR, textStatus, errorThrown) {
					console.log("Something really bad happened " + textStatus);
					$("#PL").html(jqXHR.responseText);
				}

			});
		

}
 

</script>

</head>

<body>

	Email ID:
	<input type="text" name="email" id="email" />
	<input type="button" id="editbutton" name="editbutton" value="Search"  onclick="alert1()" />
	<div id="displaySection">
		<fieldset>

			<div id="PL"></div>
			<div id="Change" >
			
			</div>
			<div id="EditButton"></div>
		</fieldset>
	</div>

</body>
</html>
