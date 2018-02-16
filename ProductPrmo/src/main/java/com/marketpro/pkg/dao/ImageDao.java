package com.marketpro.pkg.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Properties;





public class ImageDao {
	String sql ="insert into  images (image_file,user)  values (?,?); ";
	String url ="jdbc:mysql://localhost:3306/product";
	//String url ="jdbc:mysql://35.196.200.210:3306/product";
	
	//String uname ="root";
	//String password ="11420";

	public boolean upload(String filename, String usr1)
	{

		System.out.println(" in ImageDao File ="+ filename);
		 System.out.println("ImageDAO Name---> " + usr1 );
		//System.out.println("inside the ImageDao --Name :"+model.getClass("name")  );
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Properties properties = new Properties();
			properties.setProperty("user", "root");
			properties.setProperty("password", "11420");
			properties.setProperty("useSSL", "false");
			properties.setProperty("autoReconnect", "true");
			//Prep the file
			File imageFile = new File (filename);  
			FileInputStream  fis = new FileInputStream(imageFile) ;

			Connection con = DriverManager.getConnection(url,properties);
			PreparedStatement st = con.prepareStatement(sql);
			//st.setString(1, "'" + uname +"'");
			//st.setString(2, "'" + pass+"'");
			st.setBinaryStream(1, (InputStream) fis , (int) imageFile.length() );
			st.setString(2, usr1);
			st.executeUpdate();
			st.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		 return false;
}

	}
	

