package com.vej.LoginCredentials;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class SignINDao {
	
	public static void addDatas(String emailid , String firstname , String lastname , String username , String password  , String gender , String experience , String industry , String keyskills)
	{
		String querry = "insert into jobportal values ("+"'"+emailid+"' ,"+"'"+firstname+"' ,"+"'"+lastname+"' , '"+username+"' , '"+password +"' , '"+gender+" ' , "+experience+" , '"+industry+"' , '"+keyskills+"' ) ; " ;
		System.out.println(querry);
		
		Connection con = MySql.getconnection();
		
		Statement st;
		try {
			st = con.createStatement();
			
			st.executeUpdate(querry);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
