/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spacecard.dao;

import com.spacecard.friend.Friend;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

/**
 *
 * @author user
 */
public class FriendDAO extends DatabaseConnector
{
    public int addFriend(int invitorId, int inviteeId) throws SQLException
    {
        String sql = "INSERT INTO Friend(InvitorId, InviteeId) VALUES("+invitorId+","+inviteeId+")";
        return statement.executeUpdate(sql);
    }
    
    public int removeFriend(int friendId, int invitorId, int inviteeId) throws SQLException
    {
        String sql = "DELETE FROM Friend WHERE FriendId = "+friendId+"";
        return statement.executeUpdate(sql);
    }
    
    public Friend getFriend(int friendId) throws SQLException
    {
        String sql = "SELECT * FROM Friend WHERE FriendId ="+ friendId;
        ResultSet rs = statement.executeQuery(sql);
        Friend friend = null;
        
        while(rs.next())
        {
            friend = new Friend(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getDate(5));
        }
        return friend;
    }
    
    public Vector<Friend> getFriends() throws SQLException
    {
        String sql = "SELECT * FROM Friend ";
        ResultSet rs = statement.executeQuery(sql);
        Vector<Friend> friends = new Vector<Friend>();
        
        while(rs.next())
        {
            friends.add(new Friend(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getDate(5)));
        }
        return friends;
    }
}
