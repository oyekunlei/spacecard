package com.spacecard.friend;

import java.util.Date;

public class Friend
{
	private int friendID;
	private int inviteeID;
	private int invitorID;
	private String status;
	private Date dateConnected;
	
	public Friend()
	{}
	
	public Friend(int friendID, int inviteeID, int invitorID, String status, Date dateConnected)
	{
		this.friendID = friendID;
		this.inviteeID = inviteeID;
		this.invitorID = invitorID;
		this.status = status;
		this.dateConnected = dateConnected;
	}
	
	public void setFriendID(int friendID)
	{
		this.friendID = friendID;
	}
	
	public int getFriendID()
	{
		return friendID;
	}
	
	public void setInviteeID(int inviteeID)
	{
		this.inviteeID = inviteeID;
	}
	
	public int getInviteeID()
	{
		return inviteeID;
	}
	
	public void setInvitorID(int invitorID)
	{
		this.invitorID = invitorID;
	}
	
	public int getInvitorID()
	{
		return invitorID;
	}
	
	public void setStatus(String status)
	{
		this.status = status;
	}
	
	public String getStatus()
	{
		return status;
	}
	
	
	public void setDateConnected(Date dateConnected)
	{
		this.dateConnected = dateConnected;
	}
	
	public Date getDateConnected()
	{
		return dateConnected;
	}
}