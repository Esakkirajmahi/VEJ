package com.vej.LoginCredentials;

import java.sql.Connection;
import java.sql.Statement;

public class CompanySigninDao {
	
	public static void addcompanydatas (String email , String cname , String web , String pass)
	{
		
		String querry = "insert into companybase(emailid,companyname,webaddress,passsword) values ("+"'"+email+"' , '"+cname+"' , '"+web+"'  , '"+pass+"' ) ;" ;
		
		
		Connection con = MySql.getconnection() ;
		
		Statement st ;
		
		try {
			
			st = con.createStatement();
			
			System.out.println(querry);
			
			st.executeUpdate(querry);
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
