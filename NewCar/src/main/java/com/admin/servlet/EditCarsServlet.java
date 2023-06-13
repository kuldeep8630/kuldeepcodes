package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CarDAOImpl;
import com.DB.DBConnect;
import com.entities.CarDtls;

@WebServlet("/editcars")
public class EditCarsServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String driver = req.getParameter("dname");
			String status = req.getParameter("cstatus");
			String price = req.getParameter("price");

			CarDtls c = new CarDtls();
			c.setCarId(id);
			c.setDriver(driver);
			c.setStatus(status);
			c.setPrice(price);

			CarDAOImpl dao = new CarDAOImpl(DBConnect.getConn());
			boolean f = dao.updateEditCars(c);

			HttpSession session = req.getSession();

			if (f) {

				session.setAttribute("sucMsg", "Car Detail Updated");
				resp.sendRedirect("admin/all_cars.jsp");

			} else {

				session.setAttribute("failedMsg", "Something Went Wrong");
				resp.sendRedirect("admin/all_cars.jsp");

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
