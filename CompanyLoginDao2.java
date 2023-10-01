package com.vej.LoginCredentials;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class CompanyLoginDao2 {
	
	
	
	public static String getcompemail (String email)
	{
		String compemail =null;
		
	    String querry = "select emailid from companybase where emailid =" +"'"+email+"' ;" ;
	    
	    Connection econ =MySql.getconnection();
	    
	    Statement st = null;
	    
	    try
	    {
	    	st = econ.createStatement();
	    	
	    	ResultSet rs = st.executeQuery(querry);
	    	
	    	rs.next();
	    	
	    	 compemail =rs.getString(1);
	    	
	    }
	    
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	    
	    return compemail;
	
	


}
}
