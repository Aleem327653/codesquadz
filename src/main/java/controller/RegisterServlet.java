package controller;

import jakarta.servlet.ServletException;


import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;
import service.RegisterService;

import java.io.IOException;


import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.dialect.MySQLDialect;

import hibernate.utils.FactoryProvider;

public class RegisterServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try { 
			String fName = request.getParameter("fName");
			String mName = request.getParameter("mName");
			String lName = request.getParameter("lName");
			String email = request.getParameter("email");
			String userId = request.getParameter("userId");
			String password = request.getParameter("password");
			
			User user=new User(userId, fName, mName, lName,email, password);
			
			Boolean f=RegisterService.insertUser(user);
			
			if(f) {
				HttpSession hs = request.getSession();
				 hs.setAttribute("msg","Registration Successfully"); 
				response.sendRedirect("login.jsp");
				
			}

		} catch (Exception e) {
			e.printStackTrace();
			HttpSession hs = request.getSession();
			hs.setAttribute("msg","User Already Exist"); 
			response.sendRedirect("register.jsp");
		}

	}

}
