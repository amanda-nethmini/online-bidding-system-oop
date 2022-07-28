package com.Buyer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BuyerDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess;
	
	//inserting new buyer
	public static boolean insertBuyer(String name, String nic, String gender, String phone, String email, String userName, String password) {
		
		isSuccess = false;		
		
		//exception handling
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "insert into buyer values(0,'"+name+"', '"+nic+"', '"+gender+"', '"+phone+"', '"+email+"', '"+userName+"', '"+password+"')";
			int res = stmt.executeUpdate(sql);	
			
			if( res> 0) {
				isSuccess = true;				
			}
			else {
				isSuccess = false;
			}	
			
		}catch(Exception e) {
			
			e.printStackTrace();			
		}		
		return isSuccess;
		
	}
	
	//Buyer details validation
	public static boolean validate(String userName, String password) {
		
		//exception handling
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from buyer where username='"+userName+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//return customer details after validation
	public static List<Buyer> getBuyer(String userName){
		
		ArrayList<Buyer> buyer = new ArrayList<>();
		
		//exception handling
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from buyer where username='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String nic = rs.getString(3);
				String gender = rs.getString(4);
				String phone = rs.getString(5);
				String email = rs.getString(6);
				String username = rs.getString(7);
				String password = rs.getString(8);
				
				Buyer b = new Buyer(id,name,nic,gender,phone,email,username,password);
				buyer.add(b);
				
			}
			
		}
		catch(Exception e) {
			
			e.printStackTrace();			
		}		
		
		return buyer; 
		
	}
	
	//updating Buyer details 
	public static boolean updateBuyer(String id, String name, String nic, String gender, String phone, String email, String userName, String password) {
		
		//exception handling
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "update buyer set name='"+name+"', nic='"+nic+"', gender='"+gender+"', phone='"+phone+"', email='"+email+"', username='"+userName+"', password='"+password+"'" 
			+ "where id='"+id+"'";
			int res = stmt.executeUpdate(sql);	
			
			if( res> 0) {
				isSuccess = true;				
			}
			else {
				isSuccess = false;
			}	
			
		} catch(Exception e) {
			
			e.printStackTrace();			
		}
		
		return isSuccess;
		
	}
	
	//retrieving buyer details
	public static List<Buyer> getBuyerDetails(String id){
		
		int conID = Integer.parseInt(id);		
		ArrayList<Buyer> buyer = new ArrayList<>();
		
		//exception handling
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from buyer where id='"+conID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int bid = rs.getInt(1);
				String name = rs.getString(2);
				String nic = rs.getString(3);
				String gender = rs.getString(4);
				String phone = rs.getString(5);
				String email = rs.getString(6);
				String username = rs.getString(7);
				String password = rs.getString(8);
				
				Buyer b = new Buyer(bid,name,nic,gender,phone,email,username,password);
				buyer.add(b);
				
			}
			
		}
		catch(Exception e) {
			
			e.printStackTrace();			
		}		
		
		return buyer; 
		
	}
	
	//deleting a buyer
	public static boolean deleteBuyer(String id) {
		
		int conID = Integer.parseInt(id);
		
		//exception handling
		try {			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "delete from buyer where id='"+conID+"'";
			int res = stmt.executeUpdate(sql);
			
			if(res>0) {
				isSuccess = true;
				
			}
			else {
				isSuccess = false;
				
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}	
		
		
		return isSuccess;
	}
	
	
	
	
}
