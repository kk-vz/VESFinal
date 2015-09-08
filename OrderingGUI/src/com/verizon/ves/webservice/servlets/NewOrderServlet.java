package com.verizon.ves.webservice.servlets;
import java.io.IOException;
import java.io.PrintWriter;







import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.verizon.ves.dao.EnterpriseOrderDAO;
import com.verizon.ves.restclient.OrderManagementRestClient;
import com.verizon.ves.ui.Address;
import com.verizon.ves.ui.ContractDetails;
import com.verizon.ves.ui.CustomerDetails;
import com.verizon.ves.ui.EnterpriseOrder;
import com.verizon.ves.ui.OrderDetails;
import com.verizon.ves.ui.Ordering;
import com.verizon.ves.ui.Quantity;
import com.verizon.ves.ui.Services;
import com.verizon.ves.ui.SwitchCaseClass;


@WebServlet("/NewOrderServlet")
public class NewOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String orderingURL = "http://192.168.1.19:8080/OrderManagement/rest/om/submitorder";

    public NewOrderServlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession();
		System.out.println("in Neworder servlet...");
		/*
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		Calendar calendar = Calendar.getInstance();
		
		String sysdate = sdf.format(calendar.getTime());



		String bstreetname = request.getParameter("bstreetname");
		String bzipcode = request.getParameter("bzipcode");
		String bcity = request.getParameter("bcity");		
		String bstate = request.getParameter("bstate");
		System.out.println("bstate" + bstate);
		int bstateid = Integer.parseInt(new SwitchCaseClass().StateName(bstate));
		String bcountry = "USA";
		Address billingaddress = new Address(bstreetname,bzipcode,bcity,bstate,bstateid,bcountry);
		
		System.out.println(billingaddress);
		
		String cstreetname = request.getParameter("cstreetname");
		String czipcode = request.getParameter("czipcode");
		String ccity = request.getParameter("ccity");		
		String cstate = request.getParameter("cstate");
		int cstateid = Integer.parseInt(new SwitchCaseClass().StateName(cstate));
		String ccountry = "USA";
		Address connectionaddress = new Address(cstreetname,czipcode,ccity,cstate,cstateid,ccountry);
		
		System.out.println(connectionaddress);
		
		String customertype ="new";
		String customerid ="null";
		String fname = request.getParameter("firstname");  
		String lname = "null";
		String email = request.getParameter("email");
		String dateofbirth = "null";
		String contactnumber = request.getParameter("contactnumber");
		
		CustomerDetails customerdetails = new CustomerDetails(customertype,customerid, fname, lname, billingaddress, connectionaddress, email, dateofbirth, contactnumber);
		
		
		//int max = Integer.parseInt((String)request.getParameter("max"));
		int max=100;
		int current = (int)(0.25*max);
		Quantity quantity = new Quantity(max,current);
		
		Services[] services = new Services[1];
		String servicecode = "b2000";//request.getParameter("product");
		String servicename = new SwitchCaseClass().serviceName(servicecode);
		services[0] = new Services(servicecode, servicename, quantity);
		
		String orderid ="null";
		String duedate ="null"; 
		String dateofbooking = sysdate;
		
		
		String contractid ="null";
		String modeltype = request.getParameter("modeltype");
		String classofservice = request.getParameter("classofservice");
		
	
		if(classofservice.equals("Platinum"))
		  calendar.add(Calendar.DATE, 3); 
		else if(classofservice.equals("Gold"))
			calendar.add(Calendar.DATE, 7); 	
		else if(classofservice.equals("Silver"))
			calendar.add(Calendar.DATE, 11); 	
		else if(classofservice.equals("Bronze"))
			calendar.add(Calendar.DATE, 15); 	
		else 
		  calendar.add(Calendar.DATE, 20); 	
	
		duedate = sdf.format(calendar.getTime());
		
		
		
		OrderDetails orderdetails = new OrderDetails(orderid,dateofbooking, duedate, services);
		
		String fromdate =request.getParameter("fromdate");
		String todate = request.getParameter("todate");
		int discountpercentage = Integer.parseInt((String)request.getParameter("discountpercentage"));
		String change ="null";
		ContractDetails[] contractdetails = new ContractDetails[1];
		contractdetails[0] = new ContractDetails(contractid, modeltype, classofservice, fromdate, todate, discountpercentage, change);
		
		String lineofbusiness = "ves";
		
		Ordering ordering = new Ordering(lineofbusiness, customerdetails, orderdetails, contractdetails);
		*/
		Address connectionaddress1 = new Address("10, rj road", 600033, "chennai", "ARIZONA", 20, "USA");
		Address billingaddress1 = new Address("aa street", 600053, "Mumbai", "ARIZONA", 20, "USA");		
		CustomerDetails customerdetails1 = new CustomerDetails("new", 20, "sid", "sss", connectionaddress1, billingaddress1, "abc@gmail.com", 6523417892L, "null");
		Quantity quantity1 = new Quantity(50, 20);
		Services[] services1= new Services[1];
		services1[0]= new Services("10233", "chgch", quantity1);
		
		
		OrderDetails orderdetails1= new OrderDetails("2012222", "22-AUG-2015", "22-MAR-2016", services1);
		ContractDetails[] contractdetails1=new ContractDetails[1];
		contractdetails1[0]=new ContractDetails(20141, "rtb", "gold", "20-APR-2015", "02-SEP-2017", 10, "10"); 
		Ordering ordering1= new Ordering("ves", customerdetails1, orderdetails1, contractdetails1); 
		System.out.println(ordering1);
		
		PrintWriter out = response.getWriter();  
		Gson gson = new Gson();
		String orderingJson = gson.toJson(ordering1);
						
		System.out.println(orderingJson);
		
		String outputJson = new OrderManagementRestClient().callServicePOST(orderingJson, orderingURL);
		
	//	write if else for outputJson
		if(outputJson.equals("null"))
		{
			session.setAttribute("orderingstatus", "failed");
		}
		
		else
		{
			session.setAttribute("orderingstatus", "success");
			
//			EnterpriseOrder enterpriseOrder=gson.fromJson(outputJson, EnterpriseOrder.class);
//			int customerid = enterpriseOrder.getCustomerid();
//			int contractid = enterpriseOrder.getContractid();
//			int orderid = enterpriseOrder.getOrderid();
//			
//		     boolean status = new EnterpriseOrderDAO().NewOrder(orderid1, contractid1, customerid1, "abc@gmail.com");
//			
//			ordering.getCustomerdetails().setCustomerid(customerid);
//			ordering.getContractdetails()[0].setContractid(contractid);
//			ordering.getOrderdetails().setOrderid(orderid);
//			
//			ordering1.getCustomerdetails().setCustomerid("1");
//			ordering1.getContractdetails()[0].setContractid("2");
//			ordering1.getOrderdetails().setOrderid("3");
			
			session.setAttribute("ordering", ordering1);
			/*System.out.println(session.getAttribute("cost"));
			System.out.println(session.getAttribute("quantity"));
			*/
			
			
	        double cost=Long.parseLong((String)request.getParameter("costperitem"));
			double quantity=Long.parseLong((String)request.getParameter("qty"));
			double discount=(double) session.getAttribute("discount");
			double quote=(1-(discount/100))*cost*quantity;
			
			System.out.println("quote:"+quote+" discount:"+discount);
			session.setAttribute("quote",quote); 
			response.sendRedirect("ordersummary.jsp");
			
			
			
		}
		

	}		
}