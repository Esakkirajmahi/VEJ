package com.vej.LoginCredentials;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class CompanyLoginDao {
	
	public static String getCompanyPass(String email)
	{
		String pass = null;
		
		String querry = "select passsword from companybase where emailid ="+"'"+email+"' ;" ;
		
		Connection con = MySql.getconnection();
		
		Statement st ;
		
		try {
			
			st = con.createStatement();
			
			ResultSet rs = st.executeQuery(querry);
			
			rs.next();
			
			pass = rs.getString(1);
			
		}
		catch(Exception e)
		{
			
			e.printStackTrace();
			
		}
		
		return pass;
		

	}

}
