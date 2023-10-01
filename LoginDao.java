package com.vej.LoginCredentials;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDao {
	
	
	
	protected static String getpassword (String email)
	{
		
		String pass=null;
		
		String querry = "select password from jobportal where emailid =" +"'"+email+"' ;" ;
		

		Connection lcon = MySql.getconnection();
		
		
		Statement st;
		try {
			st = lcon.createStatement();
			

			ResultSet rs = st.executeQuery(querry);
			
			rs.next();
			
			pass = rs.getString(1);
			
			
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		return pass;	
		
	}

}
