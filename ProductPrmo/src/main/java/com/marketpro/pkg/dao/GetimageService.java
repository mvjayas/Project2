package com.marketpro.pkg.dao;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetimageService {

	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	 {        
	     OutputStream stream = response.getOutputStream();  
	     Blob imgBlob = null;
	     ResultSet rs = null;
	     byte[] imbBytesAry = null;
	     
	     try
	     {
	         getImage imgtest = new getImage();
	         rs = imgtest.get(1);

	         if(rs != null)
	         {
	             while(rs.next())
	             {
	                 imgBlob = rs.getBlob(1);
	                 int len = new Integer( new Long( imgBlob.length()).toString() ).intValue();
	                 imbBytesAry = imgBlob.getBytes(1,len);
	                 if (imbBytesAry.length == 0 || imbBytesAry == null)
	                 {
	                     //noImageFound(request, response);
	                     stream.write(null);
	                 }
	                 else
	                 {
	                     stream.write(imbBytesAry);
	                 }
	             }
	         }
	         else
	         {
	             //noImageFound(request, response);
	             stream.write(null);
	         }
	     }
	     catch (Exception e)
	     {
	         //noImageFound(request, response);
	         stream.write(null);
	     }  
	 }
	 
	}
	

