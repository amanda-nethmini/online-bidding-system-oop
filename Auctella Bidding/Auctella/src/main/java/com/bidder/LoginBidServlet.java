package com.bidder;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginBidServlet")
public class LoginBidServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String bidID = request.getParameter("bidid");
		boolean isTrue;
		
		isTrue = BidderDBUtil.validate(bidID);
		
		if(isTrue == true) {
			List<Bidder> bidDetails = BidderDBUtil.getBidder(bidID);
			request.setAttribute("bidDetails", bidDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("viewBid.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Bid Id is Incorrect');");
			out.println("location='loginBid.jsp'");
			out.println("</script>");
		}
	}

}
