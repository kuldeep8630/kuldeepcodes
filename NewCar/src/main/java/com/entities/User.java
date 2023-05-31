package com.entities;

public class User {
	private int id;
	private String name;
	private String mobile;
	private String Email;
	private String password;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public User(int id, String name, String mobile, String email, String password) {
		super();
		this.id = id;
		this.name = name;
		this.mobile = mobile;
		Email = email;
		this.password = password;
	}
	public User(String name, String mobile, String email, String password) {
		super();
		this.name = name;
		this.mobile = mobile;
		Email = email;
		this.password = password;
	}
	
	
	
}
