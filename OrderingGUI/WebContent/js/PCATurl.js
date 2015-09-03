function alert1(temp,pstate) {
	
	if (temp.id == "prod1") {
		service = "internetdedicated";
	} else if (temp.id == "prod2") {
		service = "pip";
	} else if (temp.id == "prod3") {
		service = "internetdedicated&pip";
	} else if (temp.id == "prod4") {
		service = "access";
	} else if (temp.id == "prod5") {
		service = "pip&access";
	} else if (temp.id == "prod6") {
		service = "access&internetdedicated";
	} else if (temp.id == "prod7") {
		service = "access&pip&internetdedicated";
	}
	// pstate or cstate?
	// String pstate = connectionaddress.getZipcode(); 
	alert(pstate);
	var dataString = "pstate=" + pstate+
	+ "&pService=" + service;
	alert(datastring);
	$.ajax({
				type : "POST",
				url : "CallPCatServiceCatalog",
				data : dataString,
				dataType : "json",

				//if received a response from the server
				success : function(data, textStatus, jqXHR) {

					$("#PL").html("");

					str1 = JSON.stringify(data);
					var obj = JSON.parse(str1);
					

					var radio = "<input type=\"radio\" name=\"product\" id=\"product\" value=\"";
					var radio_next = "\"/>";
					var table_head = "<table cellpadding=\"15px\" class=\"product-table\">" +
									 "<tr>" +
									 "<td>Select</td>" +
									 "<td>Product ID</td>" +
									 "<td>Product Name</td>" +
									 "<td>Product Description</td>" +
									 "<td>Cost</td>" +
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
									+ obj.Product_Details[i].Cost.value;

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
						}
						$("#PL").append(table_head + med + "</table>");

					}

				},

				//If there was no response from the server
				error : function(jqXHR, textStatus, errorThrown) {
					console.log("Something really bad happened " + textStatus);
					$("#PL").html(jqXHR.responseText);
				}

			});

}

