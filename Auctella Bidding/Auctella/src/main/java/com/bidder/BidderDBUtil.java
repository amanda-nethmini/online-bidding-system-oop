package com.bidder;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class BidderDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String bidID) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from bidder where BidID='"+bidID+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Bidder> getBidder(String bidID) {
		ArrayList<Bidder> bidder = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from bidder where BidID='"+bidID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int PaintingID = rs.getInt(1);
				String PaintingName = rs.getString(2);
				String Category = rs.getString(3);
				Float BidAmount = rs.getFloat(4);
				Timestamp BidEndTime = rs.getTimestamp(5);
				String BidID =rs.getString(6);
				
				Bidder bid = new Bidder(PaintingID,PaintingName,Category,BidAmount,BidEndTime,BidID);
				bidder.add(bid);
			}
		}
		catch(Exception e) {
			
		}
		return bidder;
	}

}
