package com.verizon.ves.restclient;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonReader;
import javax.ws.rs.core.MediaType;

public class OrderManagementRestClient {

/*
	
	public String callServicePOST(String input, String currentURL) {
   	 String output="";
   	 String op="";
       try {
    	   System.out.println(currentURL);
    	   
           URL insertUrl = new URL(currentURL); 
           System.out.println("input "+input);
           HttpURLConnection httpConnection = (HttpURLConnection) insertUrl.openConnection();
           httpConnection.setDoOutput(true);
           httpConnection.setRequestMethod("POST");
           httpConnection.setRequestProperty("Content-Type", MediaType.TEXT_PLAIN);      
           
           OutputStream outputStream = httpConnection.getOutputStream();
           outputStream.write(input.getBytes());
           outputStream.flush();
           
           if (httpConnection.getResponseCode() != 200) {
               throw new RuntimeException("Failed : HTTP error code : "
                   + httpConnection.getResponseCode());
           }
           

           BufferedReader responseBuffer = new BufferedReader(new InputStreamReader(
                   (httpConnection.getInputStream())));
          
           System.out.println("Output from Server:\n");
           while ((op = responseBuffer.readLine()) != null) {
        	   output = output  + op;
               System.out.println(output);
           }
           httpConnection.disconnect();
         } catch (MalformedURLException e) {
           e.printStackTrace();
         } catch (IOException e) {
           e.printStackTrace();
        }

       return output;
		
       }

	public String callServiceGET(String currentURL) throws IOException {
	   	
		String outputJson = null;
	   	int responseCode = 0;
		
						
		URL url = new URL(currentURL);
		HttpURLConnection httpConnection = (HttpURLConnection) url.openConnection();
		httpConnection.connect();
		responseCode = httpConnection.getResponseCode();
		System.out.println(responseCode);
		if (responseCode == 200) {
			BufferedReader br = new BufferedReader(new InputStreamReader(httpConnection.getInputStream()));
			String str = "";
			StringBuilder responseJson = new StringBuilder();
			while ((str = br.readLine()) != null) {
				
				responseJson.append(str);
			}
//			JsonReader jsonReader = Json.createReader(new StringReader(new String(responseJson)));
//			JsonObject jsonObj = jsonReader.readObject();
//			jsonReader.close();
   			outputJson = str; // jsonObj.toString();
//			System.out.println(jsonObj.toString());
		}

	      return outputJson;
			
	  }

*/
	public String callServicePOST(String input, String currentURL) {
		
		String outputJson ="{\"orderid\":14,\"contractid\":13,\"customerid\":12}";
		return outputJson; 
	}
	public String callServiceGET(String currentURL) {
		
		String outputJson ="{\"lineofbusiness\":\"ves\",\"orderdetails\":[{\"services\":[{\"servicename\":\"pip\",\"quantity\":{\"max\":100,\"current\":50},\"servicecode\":\"ves1523\"}],\"orderstatus\":\"new\",\"dateoforder\":\"2015-08-18\",\"duedate\":\"2015-08-25\",\"orderid\":42,\"products\":[\"123\",\"124\"]}],\"existingsnp\":{\"services\":\"null\",\"products\":\"null\"},\"contractdetails\":[{\"modeltype\":\"transactional\",\"max\":100,\"classofservice\":\"silver\",\"contractid\":52,\"current\":10,\"fromdate\":\"2015-08-18\",\"discountpercentage\":10,\"todate\":\"2016-08-18\"},{\"modeltype\":\"rtb\",\"max\":500,\"classofservice\":\"gold\",\"contractid\":105,\"current\":19,\"fromdate\":\"2015-08-18\",\"discountpercentage\":10,\"todate\":\"2016-08-18\"}],\"customerdetails\":{\"contactnumber\":\"9500689870\",\"lname\":\"siddharth\",\"customerstatus\":\"active\",\"customerid\":32,\"email\":\"lol@gmail.com\",\"connectionaddress\":{\"stateid\":20,\"zipcode\":560102,\"state\":\"karnataka\",\"country\":\"india\",\"city\":\"bangalore\",\"streetname\":\"10,mgroad\"},\"dateofbirth\":\"1993-03-24\",\"billingaddress\":{\"stateid\":20,\"zipcode\":560102,\"state\":\"karnataka\",\"country\":\"india\",\"city\":\"bangalore\",\"streetname\":\"10,mgroad\"},\"fname\":\"suresh\"}}";

		return outputJson; 
	}
}
