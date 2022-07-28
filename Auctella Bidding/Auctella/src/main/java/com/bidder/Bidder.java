package com.bidder;

import java.sql.Timestamp;

public class Bidder {

	private int PaintingID;
	private String PaintingName;
	private String Category;
	private float BidAmount;
	private Timestamp BidEndTime;
	private String BidID;
	
	public Bidder(int PaintingID, String PaintingName, String Category, float BidAmount, Timestamp BidEndTime,String BidID) {
		
		this.PaintingID = PaintingID;
		this.PaintingName = PaintingName;
		this.Category = Category;
		this.BidAmount = BidAmount;
		this.BidEndTime = BidEndTime;
		this.BidID = BidID;
	}

	public int getPaintingID() {
		return PaintingID;
	}

	public String getPaintingName() {
		return PaintingName;
	}

	public String getCategory() {
		return Category;
	}

	public float getBidAmount() {
		return BidAmount;
	}


	public Timestamp getBidEndTime() {
		return BidEndTime;
	}


	public String getBidID() {
		return BidID;
	}
}
