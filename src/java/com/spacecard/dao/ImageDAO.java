/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spacecard.dao;

import com.spacecard.image.Image;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

/**
 *
 * @author user
 */
public class ImageDAO extends DatabaseConnector
{
    public Vector<Image> getImages() throws SQLException
    {
        String sql = "SELECT * FROM image";
        ResultSet rs = statement.executeQuery(sql);
        Vector<Image> images = new Vector<Image>();
        
        while(rs.next())
        {
            images.add(new Image(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));
        }
        
        return images;
    }
    
    public Vector<Image> getImages(String category) throws SQLException
    {
        String sql = "SELECT * FROM image WHERE category = '"+category+"'";
        ResultSet rs = statement.executeQuery(sql);
        Vector<Image> images = new Vector<Image>();
        
        while(rs.next())
        {
            images.add(new Image(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));
        }
        
        return images;
    }
    
    public Image getImage(int imageId) throws SQLException
    {
        String sql = "SELECT * FROM image WHERE imageId = '"+imageId+"'";
        ResultSet rs = statement.executeQuery(sql);
        Image image = new Image();
        
        while(rs.next())
        {
            image = new Image(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
        }
        
        return image;
    }
}
