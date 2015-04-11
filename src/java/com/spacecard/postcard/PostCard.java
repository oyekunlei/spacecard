package com.spacecard.postcard;

import java.util.Date;

public class PostCard
{
	private int postcardID;
	private int userID;
	private int targetUserID;
	private String imageLink1;
	private String imageLink2;
	private String imageLink3;
	private String message;
	private Date datePosted;
	private String status;
	
	public PostCard()
	{}
	
	public PostCard(int postcardID, int userID, int targetUserID, String imageLink1, String imageLink2, String imageLink3, String message, Date datePosted, String status)
	{
		this.postcardID = postcardID;
		this.userID = userID;
		this.targetUserID = targetUserID;
		this.imageLink1 = imageLink1;
		this.imageLink2 = imageLink2;
		this.message = message;
		this.datePosted = datePosted;
		this.status = status;
		
	}
	
	public void setPostcardID(int postcardID)
	{
		this.postcardID = postcardID;
	}
	
	public int getPostcardID()
	{
		return postcardID;
	}
	
	public void setUserID(int userID)
	{
		this.userID = userID;
	}
	
	public int getUserID()
	{
		return userID;
	}
	
	public void setTargetUserID(int targetUserID)
	{
		this.targetUserID = targetUserID;
	}
	
	public int getTargetUserID()
	{
		return targetUserID;
	}
	
	public void setImageLink1(String imageLink1)
	{
		this.imageLink1 = imageLink1;
	}
	
	public String getImageLink1()
	{
		return imageLink1;
	}
	
	public void setImageLink2(String imageLink2)
	{
		this.imageLink2 = imageLink2;
	}
	
	public String getImageLink2()
	{
		return imageLink2;
	}
	
	public void setImageLink3(String imageLink3)
	{
		this.imageLink3 = imageLink3;
	}
	
	public String getImageLink3()
	{
		return imageLink3;
	}
	
	public void setMessage(String message)
	{
		this.message = message;
	}
	
	public String getMessage()
	{
		return message;
	}
	
	public void setStatus(String status)
	{
		this.status = status;
	}
	
	public String getStatus()
	{
		return status;
	}
	
	public void setDate(Date datePosted)
	{
		this.datePosted = datePosted;
	}
	
	public Date getDatePosted()
	{
		return datePosted;
	}
}