package com.vej.LoginCredentials;

import java.sql.Connection;
import java.sql.Statement;

public class AddJobDao {
	
	public static void addjobdatas(String loc , String funca ,String jpost , String phono , String vac , String sreq , String sal , String idate , String itime , String iplace ,String email)
	{
		
		String querry = "insert into jobdata values ("+"'"+loc+"' , '"+ funca+"' , '"+jpost+"' , '"+phono+"' , "+vac+" , '"+sreq+"' , "+sal+" , '"+idate+"' , '"+itime+"' , '" +iplace+"' , '"+email+"' ) ;"    ;                      
		
		Connection con = MySql.getconnection();
		
		Statement st ; 
		
		try
		{
			st = con.createStatement();
			
			System.out.println(querry);
			
			st.executeUpdate(querry);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	 
	}

}
