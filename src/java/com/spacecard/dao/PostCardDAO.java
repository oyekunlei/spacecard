/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spacecard.dao;

import com.spacecard.postcard.PostCard;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

/**
 *
 * @author user
 */
public class PostCardDAO extends DatabaseConnector
{
    public int addPost(int userId, int targetId, String imageLink1, String imageLink2, String imageLink3, String message) throws SQLException
    {
        String sql = "INSERT INTO PostCard(UserId, TargetUserId, ImageLink1, ImageLink2, ImageLink3, Message) VALUES("+userId+", "+targetId+",'"+imageLink1+"', '"+imageLink2+"', '"+imageLink3+"', '"+message+"')";
        return statement.executeUpdate(sql);
    }
    
    public int removePost(int postcardId) throws SQLException
    {
        String sql = "DELETE FROM PostCard WHERE PostCardId ="+postcardId;
        return statement.executeUpdate(sql);
    }
    
    public PostCard getPost(int postcardid) throws SQLException
    {
        String sql = "SELECT * FROM PostCard WHERE PostCardId = "+ postcardid;
        ResultSet rs = statement.executeQuery(sql);
        PostCard postcard = null;
        
        while(rs.next())
        {
            postcard = new PostCard(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDate(8), rs.getString(sql));
        }
        return postcard;
    }
    
    public Vector<PostCard> getPosts() throws SQLException
    {
        String sql = "SELECT * FROM PostCard ";
        ResultSet rs = statement.executeQuery(sql);
        Vector<PostCard> postcards = new Vector<PostCard>();
        
        while(rs.next())
        {
            postcards.add(new PostCard(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDate(8), rs.getString(sql)));
        }
        return postcards;
    }
}
