package com.foodee.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 * 
 * Used to  created a connection to the database and handle exceptions. 
 * Uses db.properties located in the resources folder
 * 
 * @author Chris Medrano
 *
 */
public class OracleConnection{
	
	/**
	 * 
	 * Attempts to connect to the database.
	 * 
	 * @return connection 	whether or not we were able to connect to database
	 * @throws ClassNotFoundException
	 * @throws IOException
	 * @throws SQLException
	 * 
	 */
	public Connection getConnection() throws ClassNotFoundException,IOException, SQLException {
	final Properties prop = new Properties();
	final InputStream inputStream = OracleConnection.class.getClassLoader()
			.getResourceAsStream("com/foodee/resources/db.properties");
	prop.load(inputStream);
	Class.forName(prop.getProperty("driver"));
	final Connection connection = DriverManager.getConnection(prop.getProperty("url"), 
			prop.getProperty("user"), prop.getProperty("password"));
	return connection;
	}
}
