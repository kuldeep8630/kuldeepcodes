package com.servlet;

import java.io.IOException; 

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entities.User;

@WebServlet("/register")

public class RegisterServlet  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String name=req.getParameter("fname");
			String mobile=req.getParameter("mobile");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			
			
			User us=new User();
			us.setName(name);
			us.setMobile(mobile);
			us.setEmail(email);
			us.setPassword(password);
			
			
			HttpSession session=req.getSession();
			
			
			
			if(check!=null) 
			{	UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());
				boolean f=dao.userRegister(us);
				
				if(f)
				{
				
				//System.out.println("User Register Success...");
				session.setAttribute("SuccMSG", "Registration Successfully");
				resp.sendRedirect("register.jsp");
					 
				}else {
				
				//System.out.println("Something went wrong");
					session.setAttribute("ErrorMSG", "Something Went Wrong");
					resp.sendRedirect("register.jsp");
				
				}				
				
				
			} else { 
				//System.out.println("Please Agree Terms & Conditions");
		
				session.setAttribute("ErrorMSG", "Please Agree Terms & Conditions");
				resp.sendRedirect("register.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
