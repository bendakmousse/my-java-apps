package com.sdzee.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connection_db {

	public static Connection connectdb() {
		Connection cononnection;
		try {
			String jdbcURL = "jdbc:mysql://localhost:3306/lib_db";
			String dbUser = "root";
			String dbPassword = "admin";

			Class.forName("com.mysql.jdbc.Driver");
			cononnection = DriverManager.getConnection(jdbcURL, dbUser , dbPassword);
			System.out.println("conneccted with database");
			return cononnection;
		} catch (ClassNotFoundException cnfe) {
			System.out.println("no connect " + cnfe.getMessage());
			return null;
		} catch (SQLException sql) {
			System.out.println("SQLException: " + sql.getMessage());
			System.out.println("SQLState: " + sql.getSQLState());
			System.out.println("Erro: " + sql.getErrorCode());
			System.out.println("StackTrace: " + sql.getStackTrace());
			return null;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

}
