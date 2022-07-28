package com.Buyer;

public class Buyer {
	
	private int id;
	private String name;
	private String nic;
	private String gender;
	private String phone;
	private String email;
	private String userName;
	private String password;
	
	public Buyer(int id, String name, String nic, String gender, String phone, String email, String userName,String password) {
		
		this.id = id;
		this.name = name;
		this.nic = nic;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.userName = userName;
		this.password = password;
	}

	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}	

	public String getNic() {
		return nic;
	}
	
	public String getGender() {
		return gender;
	}	

	public String getPhone() {
		return phone;
	}	

	public String getEmail() {
		return email;
	}	

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}	
	

}
