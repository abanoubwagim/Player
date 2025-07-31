package com.spring.app;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Main {

	public static void main(String[] args) throws SQLException {
		
		
		
		String user="root";
		String password = "";
		String url="jdbc:mysql://localhost:3306/player";
		String driver="com.mysql.cj.jdbc.Driver";
		Connection connect = null;
		
		try {
			Class.forName(driver);
			connect = DriverManager.getConnection(url,user,password);
			
			System.out.println("su");
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			connect.close();
		}
		

	}

}
