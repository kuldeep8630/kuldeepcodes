package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entities.CarDtls;

public class CarDAOImpl implements CarDAO {

	private Connection conn;

	public CarDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addCars(CarDtls c) {

		boolean f = false;

		try {
			String sql = "insert into cardtl(driver,carname,seats,fueltype,numplate,status,price,photo,user_email) values(?,?,?,?,?,?,?,?,?) ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, c.getDriver());
			ps.setString(2, c.getCarname());
			ps.setString(3, c.getSeats());
			ps.setString(4, c.getFueltype());
			ps.setString(5, c.getNumplate());
			ps.setString(6, c.getStatus());
			ps.setString(7, c.getPrice());
			ps.setString(8, c.getPhotoName());
			ps.setString(9, c.getUser_email());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public List<CarDtls> getAllCars() {

		List<CarDtls> list = new ArrayList<CarDtls>();
		CarDtls c = null;

		try {
			String sql = "select * from cardtl";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				c = new CarDtls();
				c.setCarId(rs.getInt(1));
				c.setDriver(rs.getString(2));
				c.setCarname(rs.getString(3));
				c.setSeats(rs.getString(4));
				c.setFueltype(rs.getString(5));
				c.setNumplate(rs.getString(6));
				c.setStatus(rs.getString(7));
				c.setPrice(rs.getString(8));
				c.setPhotoName(rs.getString(9));
				c.setUser_email(rs.getString(10));
				list.add(c);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public CarDtls getCarById(int id) {

		CarDtls c = null;

		try {

			String sql = "select * from cardtl where carId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				c = new CarDtls();

				c.setCarId(rs.getInt(1));
				c.setDriver(rs.getString(2));
				c.setCarname(rs.getString(3));
				c.setSeats(rs.getString(4));
				c.setFueltype(rs.getString(5));
				c.setNumplate(rs.getString(6));
				c.setStatus(rs.getString(7));
				c.setPrice(rs.getString(8));
				c.setPhotoName(rs.getString(9));
				c.setUser_email(rs.getString(10));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return c;

	}

	public boolean updateEditCars(CarDtls c) {

		boolean f = false;
		try {

			String sql = "update cardtl set driver=?,status=?,price=? where carID=? ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, c.getDriver());
			ps.setString(2, c.getStatus());
			ps.setString(3, c.getPrice());
			ps.setInt(4, c.getCarId());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public boolean deleteCars(int id) {
		boolean f = false;

		try {
			String sql = "delete from cardtl where carId=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	/*
	 * @Override public List<CarDtls> getNewCar() {
	 * 
	 * List<CarDtls> list = new ArrayList<CarDtls>(); CarDtls c = null;
	 * 
	 * try { String sql =
	 * "select * from cardtl  where status=? order by carId DESC ";
	 * PreparedStatement ps = conn.prepareStatement(sql); ps.setString(1, "Active");
	 * ResultSet rs = ps.executeQuery(); int i=1; while (rs.next()&& i<=4) { c = new
	 * CarDtls(); c.setCarId(rs.getInt(1)); c.setDriver(rs.getString(2));
	 * c.setCarname(rs.getString(3)); c.setSeats(rs.getString(4));
	 * c.setFueltype(rs.getString(5)); c.setNumplate(rs.getString(6));
	 * c.setStatus(rs.getString(7)); c.setPrice(rs.getString(8));
	 * c.setPhotoName(rs.getString(9)); c.setUser_email(rs.getString(10));
	 * list.add(c); i++;
	 * 
	 * }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * return list;
	 * 
	 * }
	 * 
	 * 
	 * public List<CarDtls> getRecentCar() { List<CarDtls> list = new
	 * ArrayList<CarDtls>(); CarDtls c = null;
	 * 
	 * try { String sql =
	 * "select * from cardtl  where status=? order by carId DESC ";
	 * PreparedStatement ps = conn.prepareStatement(sql); ps.setString(1, "Active");
	 * ResultSet rs = ps.executeQuery(); int i=1; while (rs.next()&& i<=4) { c = new
	 * CarDtls(); c.setCarId(rs.getInt(1)); c.setDriver(rs.getString(2));
	 * c.setCarname(rs.getString(3)); c.setSeats(rs.getString(4));
	 * c.setFueltype(rs.getString(5)); c.setNumplate(rs.getString(6));
	 * c.setStatus(rs.getString(7)); c.setPrice(rs.getString(8));
	 * c.setPhotoName(rs.getString(9)); c.setUser_email(rs.getString(10));
	 * list.add(c); i++;
	 * 
	 * }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * return list; }
	 * 
	 * @Override public List<CarDtls> getOldCar() { List<CarDtls> list = new
	 * ArrayList<CarDtls>(); CarDtls c = null;
	 * 
	 * try { String sql =
	 * "select * from cardtl  where status=? order by carId DESC ";
	 * PreparedStatement ps = conn.prepareStatement(sql); ps.setString(1, "Active");
	 * ResultSet rs = ps.executeQuery(); int i=1; while (rs.next()&& i<=4) { c = new
	 * CarDtls(); c.setCarId(rs.getInt(1)); c.setDriver(rs.getString(2));
	 * c.setCarname(rs.getString(3)); c.setSeats(rs.getString(4));
	 * c.setFueltype(rs.getString(5)); c.setNumplate(rs.getString(6));
	 * c.setStatus(rs.getString(7)); c.setPrice(rs.getString(8));
	 * c.setPhotoName(rs.getString(9)); c.setUser_email(rs.getString(10));
	 * list.add(c); i++;
	 * 
	 * }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * return list; }
	 * 
	 * @Override public List<CarDtls> getAllNewCar() { List<CarDtls> list = new
	 * ArrayList<CarDtls>(); CarDtls c = null;
	 * 
	 * try { String sql =
	 * "select * from cardtl  where status=? order by carId DESC ";
	 * PreparedStatement ps = conn.prepareStatement(sql); ps.setString(1, "Active");
	 * ResultSet rs = ps.executeQuery();
	 * 
	 * while (rs.next()) { c = new CarDtls(); c.setCarId(rs.getInt(1));
	 * c.setDriver(rs.getString(2)); c.setCarname(rs.getString(3));
	 * c.setSeats(rs.getString(4)); c.setFueltype(rs.getString(5));
	 * c.setNumplate(rs.getString(6)); c.setStatus(rs.getString(7));
	 * c.setPrice(rs.getString(8)); c.setPhotoName(rs.getString(9));
	 * c.setUser_email(rs.getString(10)); list.add(c);
	 * 
	 * 
	 * }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * return list; }
	 */

	public List<CarDtls> getAllRecentCar() {
		List<CarDtls> list = new ArrayList<CarDtls>();
		CarDtls c = null;

		try {
			String sql = "select * from cardtl  where status=? order by carId DESC ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "Active"); 
			ResultSet rs = ps.executeQuery();
		
			while (rs.next()) {
				c = new CarDtls();
				c.setCarId(rs.getInt(1));
				c.setDriver(rs.getString(2));
				c.setCarname(rs.getString(3));
				c.setSeats(rs.getString(4));
				c.setFueltype(rs.getString(5));
				c.setNumplate(rs.getString(6));
				c.setStatus(rs.getString(7));
				c.setPrice(rs.getString(8));
				c.setPhotoName(rs.getString(9));
				c.setUser_email(rs.getString(10));
				list.add(c);
				

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public List<CarDtls> getAllNewCar() {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * @Override public List<CarDtls> getAllNewCar() { // TODO Auto-generated method
	 * stub return null; }
	 */

	/*
	 * @Override public List<CarDtls> getAllOldCar() { List<CarDtls> list = new
	 * ArrayList<CarDtls>(); CarDtls c = null;
	 * 
	 * try { String sql =
	 * "select * from cardtl  where status=? order by carId DESC ";
	 * PreparedStatement ps = conn.prepareStatement(sql); ps.setString(1, "Active");
	 * ResultSet rs = ps.executeQuery();
	 * 
	 * while (rs.next()) { c = new CarDtls(); c.setCarId(rs.getInt(1));
	 * c.setDriver(rs.getString(2)); c.setCarname(rs.getString(3));
	 * c.setSeats(rs.getString(4)); c.setFueltype(rs.getString(5));
	 * c.setNumplate(rs.getString(6)); c.setStatus(rs.getString(7));
	 * c.setPrice(rs.getString(8)); c.setPhotoName(rs.getString(9));
	 * c.setUser_email(rs.getString(10)); list.add(c);
	 * 
	 * 
	 * }
	 * 
	 * } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * return list; }
	 */

	
}
