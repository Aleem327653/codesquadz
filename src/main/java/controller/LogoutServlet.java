package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

public class LogoutServlet extends HttpServlet {
	
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     try {
    	 HttpSession hs=request.getSession();
         hs.invalidate();
         HttpSession hs1=request.getSession();
         hs1.setAttribute("msg", "Logout SuccessFully");
         response.sendRedirect("login.jsp");
     }catch(Exception ex) {
    	 ex.printStackTrace();
    	 
     }
	}

	
	

}
