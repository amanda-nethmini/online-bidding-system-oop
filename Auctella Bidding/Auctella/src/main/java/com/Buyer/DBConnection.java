package com.Buyer;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	//variables to create the connection
	private static String url = "jdbc:mysql://localhost:3306/bidding";
	private static String userName = "root";
	private static String password = "071689";
	private static Connection con;
	
	public static Connection getConnection() {
		
		//exception handling
		try {
			
			//create driver
			Class.forName("com.mysql.jdbc.Driver");
			
			//create database connection
			con = DriverManager.getConnection(url, userName, password);
			
		}catch(Exception e) {
			
			System.out.println("Database Connection Unsuccessful!!");
			
		}
		
		return con;
	}
	
}
