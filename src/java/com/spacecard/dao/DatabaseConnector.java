/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spacecard.dao;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.SQLException;
import java.sql.DriverManager;
/**
 *
 * @author user
 */
public abstract class DatabaseConnector
{
    protected Connection connection;
	protected Statement statement;
	
	public DatabaseConnector()
	{
		
	}
	
	public void openConnection(String username, String password, String url) throws SQLException, ClassNotFoundException
	{
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection(url, username, password);
		statement = connection.createStatement();
	}
	
	public void closeConnection() throws SQLException
	{
		connection.close();
		statement.close();
	}
}
