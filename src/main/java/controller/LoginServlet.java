package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;
import service.LoginService;

import java.io.IOException;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.utils.FactoryProvider;


public class LoginServlet extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String userId = request.getParameter("userId");
			String password = request.getParameter("password");
			
			boolean f=LoginService.getLogin(userId, password);
			
			if(f) {
				User user=LoginService.getUserDetail(userId);
				HttpSession hs = request.getSession(); 
				hs.setAttribute("user", user);
				response.sendRedirect("dashboard.jsp");
				
			}else {
				 HttpSession hs = request.getSession(); 
				 hs.setAttribute("msg","User Not Found");
				 response.sendRedirect("login.jsp");
				
			}
		
		}catch(Exception ex) {
			ex.printStackTrace();
			HttpSession hs = request.getSession(); 
			 hs.setAttribute("msg","SomeThing Went wrong");
					response.sendRedirect("login.jsp");
		}
		
	}

}
