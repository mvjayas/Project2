package com.marketpro.pkg;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

public class DBConnection 
{
	String sql ="select * from user where name=? and password=? ;";
	//String url ="jdbc:mysql://localhost:3306/product";
	String url ="jdbc:mysql://35.196.200.210:3306/product";
	
	//String uname ="root";
	//String password ="11420";

	public boolean check(String uname, String pass)
	{
		System.out.println(" in DBconnection uname ="+uname );
		System.out.println(" in DBconnection pass ="+pass );
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Properties properties = new Properties();
			properties.setProperty("user", "root");
			properties.setProperty("password", "11420");
			properties.setProperty("useSSL", "false");
			properties.setProperty("autoReconnect", "true");
			
			Connection con = DriverManager.getConnection(url,properties);
			PreparedStatement st = con.prepareStatement(sql);
			//st.setString(1, "'" + uname +"'");
			//st.setString(2, "'" + pass+"'");
			st.setString(1, uname);
			st.setString(2,pass);

			ResultSet rs =st.executeQuery();
			if  (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		 return false;
	}
	
}
