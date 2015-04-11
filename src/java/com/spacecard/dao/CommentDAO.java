/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spacecard.dao;

import java.sql.SQLException;

/**
 *
 * @author user
 */
public class CommentDAO extends DatabaseConnector
{
    public int addPost(int postcardId, int userId, String comment) throws SQLException
    {
        String sql = "INSERT INTO Comment(PostCardId, UserId, Comment) VALUES("+postcardId+", "+userId+", '"+comment+"')";
        return statement.executeUpdate(sql);
    }
    
    public int removePost(int postcardId, int userid) throws SQLException
    {
        String sql = "DELETE FROM Comment WHERE PostCardId ="+ postcardId+", UserId = "+userid+"";
        return statement.executeUpdate(sql);
    }
    
    
}
