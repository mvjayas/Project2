
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
    <title>untitled</title>
    <style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
    
  </head>

  <body >
  <form action="main" method="post" name="myForm1">
  
      <table align='center' style="width: 50%">
      <tr>
      <th>ProductID </th>
      <th>Product</th>
      <th>Comment</th>
      <th>Rating</th>
      </tr>
   
<%@ page import="com.marketpro.pkg.dao.getImage" %>
<%
	getImage imgtest = new getImage();
	for (int i=1 ; i<= imgtest.get(); i++  ){
		//out.print("<tr> <td align='center'>"+ i + "</td><td align='center'><img src=\"image?id="+i+"\" width=\"117\" height=\"150\"</td></tr>" );
		out.print("<tr> <td align='center'>"+ i + "</td><td align='center'><img src=\"image?id="+i+"\" width=\"117\" height=\"150\"</td>" );
		out.print("<td> <textarea rows=\"10\" cols=\"100\" name=\"comment\" name=\"comment" +i + "\" >Enter Comments here... </textarea></td> </tr>"  );
		
		
		
	}
%>
<!--  
      <tr>
      <td align='center'>1 </td>
      <td align='center'>
	  <img src="image?id=1" width="117" height="150" >
	   </td>
	   </tr> 
	   <tr><td align='center'>2 </td> 
	   <td align='center'>
	  <img src="image?id=2" width="117" height="150">
	  </td> </tr>
	  <tr><td align='center'>3 </td> 
	   <td align='center'>
	  <img src="image?id=3" width="117" height="150">
	  </td> </tr>
	  <tr>
	  <td align='center'>4 </td>
	  <td align='center'>
	    <img src="image?id=4" width="117" height="150">
	  </td> </tr>
	   <tr>
	  <td align='center'>5 </td>
	  <td align='center'>
	    <img src="image?id=5" width="117" height="150">
	  </td> </tr>
	  
	  -->
       <!--<img src="/test-testimgs-context-root/servlet/test1.images.servlet.GetImage"> -->
       <!--<img src="ProductPrmo/../resources/images/image_02.jpg">  -->
      
              

      </table>
      
      <input type="submit" id="mySubmit" value="Goback">
      </form>
     </body>
</html>