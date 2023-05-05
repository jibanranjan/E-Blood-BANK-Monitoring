<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Blood bank monitoring hospitals</title>
<link href="style.css" type="text/css" rel="stylesheet">
<style>

</style>

</head>
<body>
<div align="center"><h1 align="center" style="background-color: ;">
<span style="color: #ed2b59;">E-</span> 
<span style="color: #8a4f51;">Blood bank monitoring hospitals </span>
</h1>
</div>
<ul>
<li ><a href="bbhome.jsp">home</a></li>
<li><a href="adddonor.jsp">AddDonors</a></li>

<li><a href="addbd.jsp">AddBlood</a></li>
 
 <li><a href="vreq.jsp">ViewRequest</a></li>
 <li class="active"><a href="stock.jsp">Stock</a></li>
 <li><a href="report.jsp">Report</a></li>
 <li><a href="index.html">Logout</a></li>

</ul>
<div align="center"><h1 align="center" style="background-color: ;">
<span style="color: #ed2b59;">Add blood</span></h1></div>
<center>
<form action="stockback.jsp">
<table>
<tr><td>BloodGroup:</td><td><select name="bg">
<option>A+</option>
<option>A-</option>
<option>B+</option>
<option>B-</option>
<option>O+</option>
<option>O-</option>
<option>AB+</option>
<option>AB-</option>
</select><br>
</td></tr>
<tr><td>Type:</td><td><select name="type">
<option>Red Cells</option>
<option>White Cells</option>
<option>platelets</option>
<option>Plasma</option>
<option>NormalBlood</option>
</select><br>
</td></tr>
<tr><td>Units:</td><td><select name="units">
<option>1
<option>2
<option>3
</select><br>
</td></tr>
<tr><td><input type="submit" value="Add"></td><td><input type="reset" value="Reset"></td></tr>
</table>
<div align="center"><h1 align="center" style="background-color: ;">
<span style="color: #ed2b59;">Stock</span></h1>
</div>
<%@page import="java.sql.*" %>
<% 
String type1=request.getParameter("type");
String units1=request.getParameter("units");

int x1=0;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-blood bank monitoring hospitals","root","root");

PreparedStatement ps1=con.prepareStatement("select * from stock");
ResultSet rs=ps1.executeQuery();

%>
<table border="1">
<tr><td>Blood Group</td><td>Type</td>
<td>Units</td>
<% while(rs.next()){ %>
<tr>
<tr><td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>

</tr>
<%  }%>
</table>
</form>
</center>
</div>
</body>
</html>