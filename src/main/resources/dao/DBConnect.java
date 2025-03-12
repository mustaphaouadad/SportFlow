package dao;
import java.sql.Connection;

import java.sql.DriverManager;


public class DBConnect {
	      
	
	private static Connection coon ;
	
	public static Connection getCoon() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			coon= DriverManager.getConnection("jdbc:mysql://localhost:3306/TalentSphre","root","0000");
			 
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
		return coon;
	}

}
