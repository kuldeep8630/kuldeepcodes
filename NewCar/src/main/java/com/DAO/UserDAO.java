package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.entities.*;
import com.mysql.cj.QueryReturnType;
public class UserDAO {
	
	private Connection conn;

	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}
 
	public boolean userRegister(User us)

	{
		boolean f=false;
	    try {
	    	
//	    	String qu="insert into user(name,mobile,E-mail,password) values (?,?,?,?)";
//	    	PreparedStatement ps=conn.prepareStatement(qu);
//			ps.setString(1,us.getName());
//			ps.setString(1,us.getMobile());
//			ps.setString(1,us.getEmail());
//			ps.setString(1,us.getPassword());
//			
//			ps.executeUpdate();
	    	Statement statement=conn.createStatement();
	    	statement.executeUpdate("INSERT INTO `index2`.`user` (`name`, `mobile`, `E-mail`, `password`) VALUES ('"+us.getName()+"', '"+us.getMobile()+"', '"+us.getEmail()+"', '"+us.getPassword()+"')");
	    	
	    	f=true;
			
			
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	
		
		return f;
	}

	public boolean loginUser(User us) {
		boolean f = false;
		try {
			String query = ("select * from user where  email='" +
		               us.getEmail() + "' and password='" + us.getPassword() + "'");

		Statement statement = conn.createStatement();
		ResultSet rs = statement.executeQuery(query);
		if (rs.next()) {
			f = true;
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
			return f;

	}
	

	
	
	

}
