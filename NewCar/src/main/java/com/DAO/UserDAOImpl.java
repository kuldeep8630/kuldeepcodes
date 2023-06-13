package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.entities.User;
import com.mysql.cj.xdevapi.Result;

public class UserDAOImpl implements UserDAO {
	
	private Connection conn;

	public UserDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean userRegister(User us) {
		boolean f=false;
		
		try {
			
			String sql="insert into user(name,mobile,email,password) values(?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, us.getName());
			ps.setString(2, us.getMobile());
			ps.setString(3, us.getEmail());
			ps.setString(4, us.getPassword());
			
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
				
			}	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}

	 
	public User login(String email, String password) {
		User us=null;
		
		try {
			Statement ps=conn.createStatement();
			
			ResultSet rs=ps.executeQuery("select * from user where email='"+email+"' and password='"+password+"'");
			int x=0;
			while(rs.next())
			{
				x=1;
						
			}
				
			if(x==1)
			{
				us=new User();
			}
			System.out.println(us);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return us;
	}
	 
	
}
