package com.verizon.ves.webservice.servlets;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

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
	
		
		String lineofbusiness = "ves";
		CustomerDetails customerdetails = (CustomerDetails) session.getAttribute("customerdetails");
		Address billingaddress = (Address) session.getAttribute("billingaddress");
		Address connectionaddress = (Address) session.getAttribute("connectionaddress");
		
		customerdetails.setBillingaddress(billingaddress);
		customerdetails.setConnectionaddress(connectionaddress);
		ContractDetails[] contractdetails = (ContractDetails[]) session.getAttribute("contractdetails");
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-yyyy");
		Calendar calendar = Calendar.getInstance();
		
		String sysdate = sdf.format(calendar.getTime());
	
		int max = Integer.parseInt((String)request.getParameter("qty"));
		int current = (int)(0.25*max);
		Quantity quantity = new Quantity(max,current);
		
		Services[] services = new Services[1];
		String servicecode = request.getParameter("servicecode");
		String servicename = new SwitchCaseClass().serviceName(servicecode);
		services[0] = new Services(servicecode, servicename, quantity);
		
		int orderid =0;
		String duedate ="null"; 
		String dateofbooking = sysdate;
			

		String classofservice = contractdetails[0].getClassofservice();
		
	
		if(classofservice.equals("platinum"))
		  calendar.add(Calendar.DATE, 3); 
		else if(classofservice.equals("gold"))
			calendar.add(Calendar.DATE, 7); 	
		else if(classofservice.equals("silver"))
			calendar.add(Calendar.DATE, 11); 	
		else if(classofservice.equals("bronze"))
			calendar.add(Calendar.DATE, 15); 	
		else 
		  calendar.add(Calendar.DATE, 20); 	
	
		duedate = sdf.format(calendar.getTime());
		
		
		
		OrderDetails orderdetails = new OrderDetails(orderid,dateofbooking, duedate, services);

		
		Ordering ordering = new Ordering(lineofbusiness, customerdetails, orderdetails, contractdetails);
		
		System.out.println(ordering);
 
		Gson gson = new Gson();
		String orderingJson = gson.toJson(ordering);
						
		System.out.println(orderingJson);
		
		String outputJson = new OrderManagementRestClient().callServicePOST(orderingJson, orderingURL);
		
	
		if(outputJson.equals("null"))
		{
			session.setAttribute("orderingstatus", "failed");
			response.sendRedirect("error.jsp");
		}
		
		else
		{
			session.setAttribute("orderingstatus", "success");
			
			EnterpriseOrder enterpriseOrder=gson.fromJson(outputJson, EnterpriseOrder.class);
			session.setAttribute("enterpriseOrder",enterpriseOrder); 
			
			String customerId = enterpriseOrder.getCustomerid();
			String contractId = enterpriseOrder.getContractid();
			String orderId = enterpriseOrder.getOrderid();
			
			int customerid= Integer.parseInt(customerId);
			int contractid = Integer.parseInt(contractId);
			orderid = Integer.parseInt(orderId);
			
//			String email = customerdetails.getEmail();
//		    boolean status = new EnterpriseOrderDAO().NewOrder(orderId, contractId, customerId, email);
//			
//			if (status) {
//				System.out.println("Record inserted.");
//			} else {
//				System.out.println("Record NOT inserted.");
//			}
			
			ordering.getCustomerdetails().setCustomerid(customerid);
			ordering.getContractdetails()[0].setContractid(contractid);
			ordering.getOrderdetails().setOrderid(orderid);

			
			session.setAttribute("ordering", ordering);

			
			
	        double cost=Long.parseLong((String)request.getParameter("costperitem"));
			double qty=Long.parseLong((String)request.getParameter("qty"));
			double discount=(double) session.getAttribute("discount");
			double quote=(1-(discount/100))*cost*qty;
			
			System.out.println("quote:"+quote+" discount:"+discount);
			session.setAttribute("quote",quote); 
			response.sendRedirect("ordersummary.jsp");
			
			
			
		}
		

	}		
}