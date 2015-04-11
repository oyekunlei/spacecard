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
public class LoginDAO extends DatabaseConnector
{
    public Profile validate(String username, String password) throws SQLException
    {
        String sql = "SELECT UserId, Username, Password FROM user WHERE username = '"+username+"' AND password = '"+password+"'";
        ResultSet rs = statement.executeQuery(sql);
        Profile profile = null;
        
        while(rs.next())
        {
            profile = new Profile(rs.getInt(1), rs.getString(2), rs.getString(3));
        }
        return profile;
    }
    
    public int updateLogin(int userId, String username, String password) throws SQLException
    {
        String sql = "UPDATE user SET username = '"+username+"', password = '"+password+"' WHERE  UserId ="+ userId;
        return statement.executeUpdate(sql);
    }
}
