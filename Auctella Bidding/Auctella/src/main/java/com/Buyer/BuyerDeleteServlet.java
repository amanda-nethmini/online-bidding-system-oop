package com.Buyer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BuyerDeleteServlet")
public class BuyerDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("Bid");
		boolean isTrue;
		
		isTrue = BuyerDBUtil.deleteBuyer(id);
		
		if(isTrue == true) {
			RequestDispatcher disp1 = request.getRequestDispatcher("buyerRegister.jsp");
			disp1.forward(request, response);
			
		}
		else {
			List<Buyer> buyerDetails = BuyerDBUtil.getBuyerDetails(id);
			request.setAttribute("buyerDetails", buyerDetails);
			
			RequestDispatcher disp2 = request.getRequestDispatcher("buyerAccount.jsp");			
			disp2.forward(request, response);
			
		}
		
	}

}
