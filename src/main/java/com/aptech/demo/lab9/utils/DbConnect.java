package com.aptech.demo.lab9.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnect {
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/lab8";
		String user = "mirai";
		String password = "remichan";
		return DriverManager.getConnection(url, user, password);
	}
}
