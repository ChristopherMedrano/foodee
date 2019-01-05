package com.foodee.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 
 * This abstract class holds the connection objects and dispose method to be
 * extended by all DAO classes.
 * 
 * @author Chris Medrano
 *
 */
abstract class AbstractDao {

	// These objects are used to connect and query the database
	protected Connection conn;
	protected Statement st;
	protected PreparedStatement ps;
	protected ResultSet rs;
	OracleConnection oc = new OracleConnection();
	/**
	 * 
	 * This method looks for open connections to the database. Any open connections
	 * are closed.
	 * 
	 * @param none
	 * 
	 */
	public void dispose() {
		try {
			if (!rs.equals(null)) {
				if (!rs.isClosed())
					rs.close();
			}
			if (!ps.equals(null)) {
				if (!ps.isClosed())
					ps.close();
			}
			if (!conn.equals(null)) {
				if (!conn.isClosed())
					conn.close();
			}
		} catch (SQLException e) {
			System.out.println(e);
		} catch (NullPointerException e) {
			// ignore
		}
	}

}
