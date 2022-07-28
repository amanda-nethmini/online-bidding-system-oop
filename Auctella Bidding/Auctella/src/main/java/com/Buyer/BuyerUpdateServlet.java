package com.Buyer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BuyerUpdateServlet")
public class BuyerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("Bid");
		String name = request.getParameter("Bname");
		String nic = request.getParameter("Bnic");
		String gender = request.getParameter("Bgender");
		String phone = request.getParameter("Bphone");
		String email = request.getParameter("Bemail");
		String userName = request.getParameter("Busername");
		String password = request.getParameter("Bpassword");
		
		boolean isTrue;		
		isTrue = BuyerDBUtil.updateBuyer(id, name, nic, gender, phone, email, userName, password);
		
		if(isTrue == true) {
			List<Buyer> buyerDetails = BuyerDBUtil.getBuyerDetails(id);
			request.setAttribute("buyerDetails", buyerDetails);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("buyerAccount.jsp");
			dis1.forward(request, response);
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
			
		}
		
		
	}

}
