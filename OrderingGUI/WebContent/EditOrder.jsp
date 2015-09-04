<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/jquery-1.9.1.js" type="text/javascript"></script>
<script type="text/javascript" src="js/app.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
function alert1() {
	
	
	dataString = "email="+document.getElementById("email");
	
	$.ajax({
				type : "POST",
				url : "EditOrderServletGetContract",
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
					alert(obj.contractdetails[0].Product_ID);

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
					var radio = "<input type=\"radio\" name=\"product\" id=\"product\" value=\"";
					var radio_next = "\"/>";
					var table_head = "<table cellpadding=\"15px\" class=\"product-table\">" +
									 "<tr>" +
									 "<td>Select</td>" +
									 "<td>Product ID</td>" +
									 "<td>Product Name</td>" +
									 "<td>Product Description</td>" +
									 "<td>Cost</td>" +
									 "<td>Cost</td>" +
									 "<td>Cost</td>" +
									 "<td>Cost</td>" +
									 
									 "</tr>";

					med = "";
					
						for (var i = 0; i < obj.contractdetails.length; i++) {

							med = med
									+ "<tr><td>"
									+ radio
									+ obj.contractdetails[i].contractid
									+ radio_next
									+ "</td><td>"
									+ obj.contractdetails[i].modeltype_ID
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




						
						$("#PL").append(table_head + med + "</table>");
					
					} 
					//
					
					$("#GenerateButton").append("<div><a class=\"btn btn-info btn-lg btn-block \" href=\"NewOrderServlet\" >Generate Contract</a></div>");

				},

				//If there was no response from the server
				error : function(jqXHR, textStatus, errorThrown) {
					console.log("Something really bad happened " + textStatus);
					$("#PL").html(jqXHR.responseText);
				}

			});

}



</script>

<body>

	Email ID:
	<input type="text" name="email" id="email" />
	<input type="button" id="editbutton" name="editbutton" value="Search"  onclick="alert1()" />
	<div id="displaySection">
		<fieldset>

			<div id="PL"></div>
			<div id="GenerateButton"></div>
		</fieldset>
	</div>

</body>
</html>
