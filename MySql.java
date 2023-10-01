package com.vej.LoginCredentials;

import java.sql.*;

public class MySql {
	
	
	
	
	public static Connection getconnection ()
	{
		String url = "jdbc:mysql://localhost:3306/mydb";
		String uname = "root";
		String pass ="Esakki6469";
		
		Connection con = null;
		try {
			
			System.out.println("manoj");

			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection( url , uname , pass );
		}
		
		catch(Exception e) {
			
			System.out.println("hii error");
			e.printStackTrace();
		}
		
		return con;
	}
}
