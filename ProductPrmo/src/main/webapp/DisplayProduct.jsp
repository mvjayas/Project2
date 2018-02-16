<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>

</head>
<body>
    <table style="width: 100%">
    <tr>
    <th>ProductID</th>
    <th>Product</th> 
    </tr>
    <%@ page import="java.sql.*" %>
     <%@ page import="java.io.*"%>
	    <%@ page import="java.util.Properties"%>
		<%@ page import="java.util.ArrayList"%>
		<%@ page import="java.util.List"%>

       <%
  
       Blob image = null;
       byte[ ] imgData = null ;      
       ArrayList<Blob> bl=null;
       
       try {
   		
    	//String sql1 ="select count(1) from images ;";
    	String sql ="select image_file from images;";
    	bl= new ArrayList<Blob>();
    			
    	//String url ="jdbc:mysql://35.196.200.210:3306/product";
    	String url ="jdbc:mysql://localhost:3306/product";
    	Class.forName("com.mysql.jdbc.Driver");
		Properties properties = new Properties();
		properties.setProperty("user", "root");
		properties.setProperty("password", "11420");
		properties.setProperty("useSSL", "false");
		properties.setProperty("autoReconnect", "true");
		Connection con = DriverManager.getConnection(url,properties);
		PreparedStatement st = con.prepareStatement(sql);
		//PreparedStatement st1 = con.prepareStatement(sql1);
		//st.setString(1, "'" + uname +"'");
		//st.setString(2, "'" + pass+"'");
		//st.setString(1, uname);
		//st.setString(2,pass);
		//ResultSet rs1 =st1.executeQuery();
		ResultSet rs =st.executeQuery();
		System.out.println("After the result   ");
		//if (rs.next()) 
		while (rs.next())
		{
			System.out.println("st-1"); 
			//image = rs.getBlob(1);
			//imgData = image.getBytes(1,(int)image.length());
			bl.add(rs.getBlob(1));
			System.out.println("st-2");
		} 
		System.out.println("After the while loop");
			//else {
			//out.println("Display Blob Example");
			//out.println("image not found for given id>");
			//return;
			//}
		//for ( int i=0;i<rs1.getInt(1); i++ ) {
		for ( int i=0;i< bl.size(); i++ ) {
			System.out.println("Inside the FOR loop");
			Blob b=bl.get(i);
			System.out.println("st-4"+b);
			byte brr[]=new byte[(int)b.length()];
			System.out.println("st-6");
			brr=b.getBytes(1, (int)b.length());
			System.out.println("st-7"+brr);
			response.setContentType("image/jpg");
			OutputStream o = response.getOutputStream();
			System.out.println("st-8"+o);
			response.getOutputStream().write(brr);
			out.print("<BR>");
			%>
			<tr><td align='center'> <% out.print(i); %></td> <td>
			<img src=<%o.write(brr); %> width="117" height="160" >
			</td>		
			<% 
			System.out.println("st-9");

			o.flush();
			o.close();
		}
		rs.close();
		st.close();
		con.close();

		//response.setContentType("image/jpg");
		//OutputStream o = response.getOutputStream();
		//o.write(imgData);
		//o.flush();
		//o.close();
		} catch (Exception e) {
		out.println("Unable To Display image");
		out.println("Image Display Error=" + e.getMessage());	
		}
       	   
    %>
    
   </div> </table></td></tr>
	</table> 
    
    <h1>
    this is  a test </h1> 

</body>
</html>