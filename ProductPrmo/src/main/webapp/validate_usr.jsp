<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Talk</title>
</head>
<style type="text/css">
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

* {
    box-sizing: border-box;
}

body {
  margin: 0;
}

/* Style the header */
.header {
    background-color: #f1f1f1;
    padding: 20px;
    text-align: center;
}

/* Style the top navigation bar */
.topnav {
    overflow: hidden;
    background-color: #333;
}

/* Style the topnav links */
.topnav a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
    background-color: #ddd;
    color: black;
}

/* Create three equal columns that floats next to each other */
.column1 {
    float: left;
    width: 20%;
    padding: 15px;
    overflow: scroll;
}

/* Create three equal columns that floats next to each other */
.column2 {
    float: left;
    width: 60%;
    padding: 15px;
    overflow: scroll;
}

/* Create three equal columns that floats next to each other */
.column3 {
    float: left;
    width: 20%;
    padding: 15px;
    overflow: scroll;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
    overflow: scroll;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media (max-width:600px) {
    .column1 {
        width: 100%;
        overflow: scroll;
    }
}

</style>

<body>

<!-- NOT USED    
<img alt="logo" src="ProductPrmo/../resources/images/image_02.jpg" width="50%" height="50%"/>
-->

<div class="header">
  <h1>Product Review</h1>
  <p>Product Review</p>
</div>

<div class="topnav">
  <a href="Home.jsp">Home</a>
  <a href="Display.jsp">Product</a>
  <a href="uploadfile.jsp">Upload</a>
  <a href="#Feedback">Feedback</a>
  <a href="#Contact">Contact</a>
</div>

<div class="row">
  <div class="column1">
      <h2>Static Image</h2>
    <img src="ProductPrmo/../resources/images/image_02.jpg"/>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
  </div>
  <div class="column2">
    <h2>Product</h2>
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
		//out.print("<tr> <td align='center'>"+ i + "</td><td align='center'><img src=\"image?id="+i+"\" width=\"115\" height=\"140\"</td></tr>" );
		out.print("<tr> <td align='center'>"+ i + "</td><td align='center'><img src=\"image?id="+i+"\" width=\"117\" height=\"150\"</td>" );
		out.print("<td> <textarea rows=\"10\" cols=\"50\" name=\"comment\" name=\"comment" +i + "\" >Enter Comments here... </textarea></td> </tr>"  );

	}
%>
 </table>   

  </div>
  <div class="column3">
    <h2>Share</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet pretium urna. Vivamus venenatis velit nec neque ultricies, eget elementum magna tristique. Quisque vehicula, risus eget aliquam placerat, purus leo tincidunt eros, eget luctus quam orci in velit. Praesent scelerisque tortor sed accumsan convallis.</p>
  </div>
</div>

</body>
</html>

