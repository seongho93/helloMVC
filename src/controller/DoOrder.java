package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.CustomerService;
import model.Customer;
import model.Order;

/**
 * Servlet implementation class DoOrder
 */
@WebServlet("/doOrder")
public class DoOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String itemNumber = request.getParameter("itemNumber");	
		String description = request.getParameter("description");
		String price = request.getParameter("price");	
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");	
		String middleInitial = request.getParameter("middleInitial");
		String shippingAddress = request.getParameter("shippingAddress");	
		String creditCard = request.getParameter("creditCard");
		String creditCardNumber = request.getParameter("creditCardNumber");	
		String RepeatCreditCardNumber = request.getParameter("RepeatCreditCardNumber");
		
		Order order = new Order(itemNumber,description,price,firstName,lastName,middleInitial,shippingAddress,creditCard,creditCardNumber);
		
		request.setAttribute("order", order);	
				
		String page;
		
		if(creditCardNumber.equals(RepeatCreditCardNumber))
			page ="/view/order.jsp";
		else
			page ="/view/form.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
		dispatcher.forward(request, response);
		
	}
}
