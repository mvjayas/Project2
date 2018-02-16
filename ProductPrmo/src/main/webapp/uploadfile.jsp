<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
      body {background: linear-gradient(to bottom, #33ccff 0%, #ff99cc 100%);} 
      h1 {color: black;}    
 </style>
</head>
<body>
      <h1>The Upload Page...</h1>
      <form action="uploadfile" method="get" enctype="multipart/form-data" >
        <table border=“2” align=“center” width=“50%”>  
          <tr> 
             <th align=”center” bgcolor=”SlateBlue” style=”color:white” colspan= "2">
               <h2>Image Upload</h2>
             </th>
          </tr>
          <tr> 
             <th align="right">Select Image:</th>
             <td><input type="file" name="image"/></td>
          </tr>
          <tr> 
             <th align="right">Select Name:</th>
             <td><input type="text" name="imageName"/></td>
           </tr>
           <tr> 
           <td><input type="submit" value="Submit" style="margin:0;"></input></td>
            <td><input type="reset" value="Reset" style="margin:0;"></input></td>
           </tr>
          </table>
        </form>
      </body>
</html>