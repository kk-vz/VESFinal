$(document).ready(function() {
 var st=document.getElementById("state").value;
    //Stops the submit request
    $("#form").submit(function(e){
           e.preventDefault();
    });
    
    //checks for the button click event
    $("#sub").click(function(e){
           
    	   //$("#ajaxResponse").append("check");
            //get the form data and then serialize that
            dataString = $("#form").serialize();
          
            //get the form data using another method
           // var test_text = $("input#state").val();
           // alert(test_text);
            //dataString = "trya=" + test_text;
            dataString=st;
            
            //make the AJAX request, dataType is set to json
            //meaning we are expecting JSON data in response from the server
            $.ajax({
                type: "POST",
                url: "http://localhost:8080/ProductListing/rest/server1/postcheck1",
                data: dataString,
                dataType: "json",
                
                //if received a response from the server
                success: function( data, textStatus, jqXHR) {
                     $("#response").html("");
                     console.log( data );
                     str = JSON.stringify(data);
                     alert(str);
                     $("#response").append(str);
                     var obj=JSON.parse(str);
                     $("#response").append("<br/>Parsed data<br/>")
                     $("#response").append(obj.name);
                     
                     
                },
                
                //If there was no response from the server
                error: function(jqXHR, textStatus, errorThrown){
                     console.log("Something really bad happened " + textStatus);
                      $("#response").html(jqXHR.responseText);
                },
                
                //capture the request before it was sent to server
                beforeSend: function(jqXHR, settings){
                    //adding some Dummy data to the request
                    //settings.data += "&dummyData=whatever";
                    //disable the button until we get the response
                    $('#sub').attr("disabled", true);
                },
                
                //this is called after the response or error functions are finished
                //so that we can take some action
                complete: function(jqXHR, textStatus){
                    //enable the button
                    $('#sub').attr("disabled", false);
                }
      
            });       
    });
 
});