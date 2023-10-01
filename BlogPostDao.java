package com.vej.LoginCredentials;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BlogPostDao 
{
	
	public static ArrayList blogdata()

	{  
		ArrayList  list = null;
		
		String querry = "select * from jobdata as j inner join companybase as c on c.emailid = j.emailid;";
		
		Connection con =MySql.getconnection();
		
		Statement st ;
		
		try 
		{
			
			st = con.createStatement();
			
			ResultSet rs = st.executeQuery(querry);
			
		 
		   list = new ArrayList();
		  
		   while(rs.next())
		  {
			  Map map = new HashMap ();
			  
			  map.put("loc", rs.getString(1));
			  map.put("desig", rs.getString(3));
			  map.put("phone_num", rs.getString(4));
			  map.put("vaccancy", rs.getString(5));
			  map.put("skills", rs.getString(6));
			  map.put("salary", rs.getString(7));
			  map.put("date", rs.getString(8));
			  map.put("place", rs.getString(9));
			  map.put("compname", rs.getString(13));
			  map.put("web", rs.getString(14));
			  
			  list.add(map);

			  
		  }
			
		}
		catch(Exception e)
		{
			
			e.printStackTrace();
		}
		
	   return list;
		
		
	}

}
