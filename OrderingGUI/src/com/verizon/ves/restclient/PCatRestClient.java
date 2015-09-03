package com.verizon.ves.restclient;



import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
 
public class PCatRestClient {

    private static final String pCatURL = "http://192.168.1.64:4782/PCatServiceCatalog/api/VES";
    
     
  /*  public String callPCatURL(String input) {
    	 String output="";
    	 String op = null;
        try {
        	System.out.println("data cc"+ input);
        	String url = pCatURL + "/"+input;
        	System.out.println(url);
            URL insertUrl = new URL(url);           
            HttpURLConnection httpConnection = (HttpURLConnection) insertUrl.openConnection();
            httpConnection.setDoOutput(true);
            httpConnection.setRequestMethod("GET");
            httpConnection.setRequestProperty("Content-Type", "application/json");

            
            if (httpConnection.getResponseCode() != 200) {
                throw new RuntimeException("Failed : HTTP error code : "
                    + httpConnection.getResponseCode());
            }

            BufferedReader responseBuffer = new BufferedReader(new InputStreamReader(
                    (httpConnection.getInputStream())));
           
            System.out.println("Output from Server:\n");
            while ((op = responseBuffer.readLine()) != null) {
            	output = output+op;
                System.out.println(output);
            }
            httpConnection.disconnect();
          } catch (MalformedURLException e) {
            e.printStackTrace();
          } catch (IOException e) {
            e.printStackTrace();
         }

        	return output;
		
        }*/

    public String callPCatURL(String input) {
   	
    	String output="{\"Product_Details\":[{\"Product_ID\":{\"value\":\"b200\"},\"Product_Name\":{\"value\":\"PIP\"},\"Product_Description\":{\"value\":\"500Mbps\"},\"Cost\":{\"value\":\"200\"}},{\"Product_ID\":{\"value\":\"b201\"},\"Product_Name\":{\"value\":\"PIP\"},\"Product_Description\":{\"value\":\"1000Mbps\"},\"Cost\":{\"value\":\"700\"}}]}";
    	//\"Bundle_Details\":[{\"Bundle_Id\":{\"value\":\"2\"},\"Bundle_Desc\":{\"value\":\"PIP+ID\"},\"Bundle_Cost\":{\"value\":\"500\"}}]
       	return output;
		
       }
}