function alert1(temp)
{
	//alert(document.getElementById("pstate").value);
	//alert(temp.id);
	if(temp.id=="prod1")
	{service="internetdedicated";
	service1="Internet Dedicated";}
	else if(temp.id=="prod2")
		{service="pip";
		service1="PIP";}
	else if(temp.id=="prod3")
	{service="internetdedicated&p2=pip";
	service1="Internet Dedicated + PIP";}
	else if(temp.id=="prod4")
	{service="access";
	service1="Access";
	}
	else if(temp.id=="prod5")
	{service="pip&p2=access";
	service1="PIP + Access";}
	else if(temp.id=="prod6")
	{service="access&p2=internetdedicated";
	service1="Access + Internet Dedicated";}
	else if(temp.id=="prod7")
	{service="access&p2=pip&p3=internetdedicated";
	service1="Access + PIP + Internet Dedicated";}
		
	
	
		
	
	
	
	
		//var str="http://localhost:8090/SimpleRESTBasedCommunication/rest/server/"+document.getElementById("state").value+"&"+service;
	//alert("http://localhost:8090/SimpleRESTBasedCommunication/rest/server/"+document.getElementById("pstate").value+"&"+service);
		dataString="pstate="+document.getElementById("pstate").value+ "&pService="+service;
		//alert(document.getElementById("pstate").value);
		//alert(dataString);
		$.ajax({
            type: "POST",
            url: "CallPCatServiceCatalog",
            data: dataString,
            dataType: "json",
            
            //if received a response from the server
            success: function( data, textStatus, jqXHR) {
            	//alert("helo akash");
                 $("#PL").html("");
                  console.log( data );
                 str1 = JSON.stringify(data);
                 var obj=JSON.parse(str1);
                 //alert(str1);
                // console.log(str1);
                // alert( obj.Product_Details[0].Product_ID.value);
                 //alert(obj.products[1].product_name);
                 var radio="<input type=\"radio\" name=\"product\" value=\"";
                 var radio_next="\"/>";
                 var table_head="<table cellpadding=\"15px\" class=\"product-table\"><tr><td>Select</td><td>Product ID</td><td>Product Name</td><td>Product Description</td><td>Cost</td></tr>";
                 //alert(obj.products.length);
                 med="";
                 if(service=="access"|| service=="pip" || service=="internetdedicated"){
             for(var i=0;i<obj.Product_Details.length;i++)
            	 {
            	 //alert(i);
                med=med+"<tr><td>"+radio+obj.Product_Details[i].Product_ID.value+radio_next+"</td><td>"+obj.Product_Details[i].Product_ID.value+"</td><td>"+obj.Product_Details[i].Product_Name.value+"</td><td>"+obj.Product_Details[i].Product_Description.value+"</td><td>"+obj.Product_Details[i].Cost.value;
              //$("#PL").append(obj.products[i].product_id);
             // $("#PL").append("</td><td>"+obj.products[i].product_name);
             // $("#PL").append(obj.products[i].product_name);
             // $("#PL").append("</td><td>"+obj.products[i].product_desc);
            //  $("#PL").append(obj.products[i].product_desc);
              //$("#PL").append("</td><td>"+obj.products[i].cost);
              //$("#PL").append(obj.products[i].cost);
           //   $("#PL").append("</td></tr>");
            	 } 
             $("#PL").append(table_head+med+"</table>");
             
            
               // alert(obj.products[0]);
            //  $("#PL").append("<br/>Parsed data<br/>")
                //$("#PL").append(obj.product_id);
              
                 } 
                 else
                	 {
                	 //alert("else check");
                	 //alert(obj.Bundle_Details.length);
                	 for(var j=0;j<obj.Bundle_Details.length;j++)
                	 {
                	 //alert(j);
                    med=med+"<tr><td>"+radio+obj.Bundle_Details[j].Bundle_Id.value+radio_next+"</td><td>"+obj.Bundle_Details[j].Bundle_Id.value+"</td><td>"+service1+"</td><td>"+obj.Bundle_Details[j].Bundle_Desc.value+"</td><td>"+obj.Bundle_Details[j].Bundle_Cost.value;
                  //$("#PL").append(obj.products[i].product_id);
                 // $("#PL").append("</td><td>"+obj.products[i].product_name);
                 // $("#PL").append(obj.products[i].product_name);
                 // $("#PL").append("</td><td>"+obj.products[i].product_desc);
                //  $("#PL").append(obj.products[i].product_desc);
                  //$("#PL").append("</td><td>"+obj.products[i].cost);
                  //$("#PL").append(obj.products[i].cost);
               //   $("#PL").append("</td></tr>");
                	 } 
                 $("#PL").append(table_head+med+"</table>");
                 
                
                   // alert(obj.products[0]);
                //  $("#PL").append("<br/>Parsed data<br/>")
                    //$("#PL").append(obj.product_id);
                  
                     
                	
                	 }
                 
            },
            
            //If there was no response from the server
            error: function(jqXHR, textStatus, errorThrown){
                 console.log("Something really bad happened " + textStatus);
                  $("#PL").html(jqXHR.responseText);
            }
             
        });       

}

