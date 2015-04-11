package com.spacecard.comment;

import java.util.Date;

public class Comment
{
	private int commentID;
	private int postcardID;
	private int userID;
	private String comment;
	private String status;
	private Date datePosted;
	
	
	public Comment()
	{}
	
	public Comment(int commentID, int postcardID, int userID, String comment, String status, Date datePosted)
	{
		this.commentID = commentID;
		this.postcardID = postcardID;
		this.userID = userID;
		this.comment = comment;
		this.status = status;
		this.datePosted = datePosted;
	}
	
	public void setCommentID(int commentID)
	{
		this.commentID = commentID;
	}
	
	public int getCommentID()
	{
		return commentID;
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
	
	public void setComment(String comment)
	{
		this.comment = comment;
	}
	
	public String getComment()
	{
		return comment;
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