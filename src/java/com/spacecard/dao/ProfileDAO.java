/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spacecard.dao;

import com.spacecard.profile.Profile;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author user
 */
public class ProfileDAO extends DatabaseConnector
{
    public int addProfile(String name, String email, String username, String password, String picturePath) throws SQLException
    {
        String sql = "INSERT INTO user(Username, Email, Password, FullName, ProfilePicPath) VALUES('"+username+"', '"+email+"', '"+password+"', '"+name+"', '"+picturePath+"')";
        return statement.executeUpdate(sql);
    }
    
    public Profile getProfile(int userId)throws SQLException
    {
        String sql = "SELECT * FROM user WHERE UserId = "+userId;
        ResultSet rs = statement.executeQuery(sql);
        Profile profile = null;
        
        while(rs.next())
        {
            profile = new Profile(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDate(8));
        }
        
        return profile;
    }
    
    public int updateProfile(int userId, String email, String name, String picturePath) throws SQLException
    {
        String sql = "UPDATE user SET Email = '"+email+"', FullName = '"+name+"', ProfilePicPath = '"+picturePath+"' WHERE UserId ="+ userId;
        return statement.executeUpdate(sql);
    }
    
    public int updateStatus(int userId, String status) throws SQLException
    {
        String sql = "UPDATE user SET Status = '"+status+"' WHERE UserId ="+userId;
        return statement.executeUpdate(sql);
    }
    
    public int getMax() throws SQLException
    {
        String sql = "SELECT MAX(UserId) FROM user";
        ResultSet rs = statement.executeQuery(sql);
        int max = 0;
        
        while(rs.next())
        {
            max = rs.getInt(1);
        }
        
        return max;
    }
}
