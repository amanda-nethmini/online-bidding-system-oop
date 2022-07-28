package com.Buyer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BuyerLoginServlet")
public class BuyerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
				
		String userName = request.getParameter("username");
		String userPassword = request.getParameter("password");		
		boolean result;
		
		result = BuyerDBUtil.validate(userName, userPassword);
		
		if(result == true) {
			List<Buyer> buyerDetails = BuyerDBUtil.getBuyer(userName);
			request.setAttribute("buyerDetails", buyerDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("buyerAccount.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'> ");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='buyerLogin.jsp'");
			out.println("</script>");
		}
		
	}

}
