package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.entities.User;
import com.mysql.cj.Session;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		
		if (email != null && !email.isEmpty() && password != null && !password.isEmpty()) {
			User us= new User();
			us.setEmail(email);
			us.setPassword(password);
			UserDAO dao=new UserDAO(DBConnect.getConnection());
			boolean f=dao.userRegister(us);

			if (true) {
				response.sendRedirect("home.jsp");
			} else {
				HttpSession session = request.getSession();
				session.setAttribute("login-failed", "Invalid Data Entered  :(");
				response.sendRedirect("login.jsp");
			}
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("login-failed", "Please provide all the required information.");
			response.sendRedirect("login.jsp");
			
			

		}
	}
}