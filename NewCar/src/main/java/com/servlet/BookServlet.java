package com.servlet;

import java.awt.print.Book;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookingDAOImpl;
import com.DAO.CarDAOImpl;
import com.DB.DBConnect;
import com.entities.Booking;
import com.entities.CarDtls;
@WebServlet("/Booking")
public class BookServlet  extends HttpServlet{

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			 int cid=Integer.parseInt(req.getParameter("cid"));
			 int uid=Integer.parseInt(req.getParameter("uid"));
			
			 CarDAOImpl dao=new CarDAOImpl(DBConnect.getConn());
			 CarDtls c=dao.getCarById(cid);
			 
			 Booking b=new Booking();
			 b.setCid(cid);
			 b.setUserId(uid);
			 b.setCarName(c.getCarname());
			 b.setDriverName(c.getDriver());
			 b.setPrice(Double.parseDouble(c.getPrice()));
			 b.setTotalPrice(Double.parseDouble(c.getPrice()));
			 
			 BookingDAOImpl dao2=new BookingDAOImpl(DBConnect.getConn());
			 boolean f=dao2.addBooking(b);
			 
			 HttpSession session=req.getSession();
			  
			 if(f)
			 {
				 session.setAttribute("addbooking", "Booking SuccessFully");
				 resp.sendRedirect("all_recent.jsp");
				
			 }else {
				 
				 session.setAttribute("failed","Booking Failed");
				 resp.sendRedirect("all_recent.jsp");
			 }
			 
			 
			 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
