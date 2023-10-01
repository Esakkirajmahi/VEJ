package com.vej.LoginCredentials;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class LoginEmailDao {
	
	public static String getemail (String email)
	{
		String cemail =null;
		
	    String querry = "select emailid from jobportal where emailid =" +"'"+email+"' ;" ;
	    
	    Connection econ =MySql.getconnection();
	    
	    Statement st = null;
	    
	    try {
	    	
	    	
	    	st = econ.createStatement();
	    	
	    	ResultSet rs = st.executeQuery(querry);
	    	
	    	rs.next();
	    	
	    	 cemail =rs.getString(1);
	    	 
	    	
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    	
	    }
	    return cemail;
	}
}
