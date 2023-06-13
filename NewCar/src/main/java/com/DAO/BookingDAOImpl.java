package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entities.Booking;
import com.entities.CarDtls;

public class BookingDAOImpl implements BookingDAO {
	
	private Connection conn;
	 
	public BookingDAOImpl (Connection conn)
	{
		
		this.conn =conn;
		
		
	}
	public boolean addBooking(Booking b) {
	    boolean f = false;
	    try {
	        String sql = "INSERT INTO book (cid, uid, carName, driverName, price, total_price) VALUES (?, ?, ?, ?, ?, ?)";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setInt(1, b.getCid());
	        ps.setInt(2, b.getUserId());
	        ps.setString(3, b.getCarName());
	        ps.setString(4, b.getDriverName());
	        ps.setDouble(5, b.getPrice());
	        ps.setDouble(6, b.getTotalPrice());
	        
	        int i = ps.executeUpdate();
	        if (i == 1) {
	            f = true;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return f;
	}
	

//	public boolean adduid(int uid) {
//	    boolean f = false;
//	    try {
//	        String sql = "INSERT INTO book (cid, uid, carName, driverName, price, total_price) VALUES (?, ?, ?, ?, ?, ?)";
//	        PreparedStatement ps = conn.prepareStatement(sql);
//	        ps.setInt(1, b.getCid());
//	        ps.setInt(2, b.getUserId());
//	        ps.setString(3, b.getCarName());
//	        ps.setString(4, b.getDriverName());
//	        ps.setDouble(5, b.getPrice());
//	        ps.setDouble(6, b.getTotalPrice());
	        
//	        int i = ps.executeUpdate();
//	        if (i == 1) {
//	            f = true;
//	        }
//	    } catch (Exception e) {
//	        e.printStackTrace();
//	    }
//	    return f;
//	}
	
	/*
	 * @Override public Booking getCarByUser(int userId) { Booking b=null; double
	 * totalPrice=0; try {
	 * 
	 * String sql="select * book from book where uid=?"; PreparedStatement
	 * ps=conn.prepareStatement(sql); ps.setInt(1,userId);
	 * 
	 * ResultSet rs=ps.executeQuery();
	 * 
	 * while (rs.next()); { b=new Booking(); b.setBid(rs.getInt(1));
	 * b.setCid(rs.getInt(2)); b.setUserId(rs.getInt(3));
	 * b.setCarName(rs.getString(4)); b.setDriverName(rs.getString(5));
	 * b.setPrice(rs.getDouble(6));
	 * 
	 * totalPrice=totalPrice+rs.getDouble(7);
	 * 
	 * } } catch (Exception e) { e.printStackTrace(); } return b; }
	 */
	
}
