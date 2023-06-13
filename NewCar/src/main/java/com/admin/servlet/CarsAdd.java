package com.admin.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.CarDAOImpl;
import com.DB.DBConnect;
import com.entities.CarDtls;

@WebServlet("/add_cars")
@MultipartConfig
public class CarsAdd extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String driver = req.getParameter("dname");
			String carname = req.getParameter("carname");
			String seats = req.getParameter("seats");
			String fueltype = req.getParameter("ftype");
			String numplate = req.getParameter("numplate");
			String status = req.getParameter("cstatus");
			String price = req.getParameter("price");
			Part part = req.getPart("bimg");
			String fileName = part.getSubmittedFileName();

			CarDtls c = new CarDtls(driver,carname,seats,fueltype,numplate,status,price,fileName, "admin");

			CarDAOImpl dao = new CarDAOImpl(DBConnect.getConn());

			boolean f = dao.addCars(c);

			HttpSession session = req.getSession();

			if (f) {
				String path = getServletContext().getRealPath("") + "carimages";

				File file = new File(path);

				part.write(path + File.separator + fileName);

				session.setAttribute("sucMsg", "Car Add Successfully");
				resp.sendRedirect("admin/add_cars.jsp");
			} else {
				session.setAttribute("failedMsg", "Something Went Worng ");
				resp.sendRedirect("admin/add_cars.jsp");

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
