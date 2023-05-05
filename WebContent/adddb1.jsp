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
<li><a href="bbhome.jsp">home</a></li>
<li><a href="adddonor.jsp">AddDonors</a></li>

<li class="active"><a href="addbd.jsp">AddBlood</a></li>
 
 <li><a href="vreq.jsp">ViewRequest</a></li>
 <li><a href="stock.jsp">Stock</a></li>
 <li><a href="report.jsp">Report</a></li>
 <li><a href="index.html">Logout</a></li>

</ul>
<div align="center"><h1 align="center" style="background-color: ;">
<span style="color: #ed2b59;">Add blood</span> 
</h1>
<form action="addbdback.jsp">
<table>
<tr><td>BloodGroup:</td><td><input name="bg" value="<%=request.getParameter("bg")%>" readonly="readonly"><!-- 
<option>A+</option>
<option>A-</option>
<option>B+</option>
<option>B-</option>
<option>O+</option>
<option>O-</option>
<option>AB+</option>
<option>AB-</option>
</select><br> -->
</td></tr>
<%@page import="java.sql.*" %>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-blood bank monitoring hospitals","root","root");


String aa=request.getParameter("bg");
System.out.println(aa);
PreparedStatement ps19=con.prepareStatement("select id,dname from ddetails where bg='"+aa+"'");
PreparedStatement ps119=con.prepareStatement("select id,dname from ddetails where bg='"+aa+"'");

ResultSet rs=ps19.executeQuery();
ResultSet rs1=ps119.executeQuery();
%>
<tr><td>DonorName:</td><td>



<select   name="dname"  >
<!-- <option selected="selected">Choose Donor</option>
 --><%while(rs.next()){
 %>
<option value="<%=rs.getString("dname")%>"> <%=rs.getString(2) %></option>

<%} %>



</select>
<%while(rs1.next()){%>
 <input type="hidden" name="id" value="<%=rs1.getString(1)%>">
<%} %>

<tr><td>Units:</td><td><select name="units">
<option>1
<option>2
<option>3
</select><br>
</td></tr>
<tr><td>BP:</td><td><input type="text" name="bp"></td></tr>
<tr><td>Sugar:</td><td><select name="sugar">
<option>Yes
<option>No
</select>
</td></tr>
<tr><td><input type="submit" value="Add"></td><td><button > <a href="stock.jsp">add others</a></button> </td></tr>
</table>
</form>
</div>
</body>
</html>
