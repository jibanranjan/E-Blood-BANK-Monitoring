<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Blood bank monitoring hospitals</title>
<link href="style.css" type="text/css" rel="stylesheet">
<style>

</style>

</head>
<body><%@ page import="java.sql.*" %>

<div align="center"><h1 align="center" style="background-color: ;">
<span style="color: #ed2b59;">E-</span> 
<span style="color: #8a4f51;">Blood bank monitoring hospitals </span>
</h1>
</div>
<ul>
<li ><a href="hhome.jsp">home</a></li>
<li><a href="sreq.jsp">SendRequest</a></li>
<li class="active"><a href="vs.jsp">Status</a></li>
 <li><a href="hrep.jsp">Report</a></li>
 <li><a href="index.html">Logout</a></li>

</ul>
<div align="center">
<h2>Status</h2>

<% 
String id="";
id=session.getAttribute("id").toString();

int x1=0;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-blood bank monitoring hospitals","root","root");
PreparedStatement ps1=con.prepareStatement("select * from sreq where  hid='"+id+"'");
PreparedStatement ps2=con.prepareStatement("select * from sreq where   hid='"+id+"'");
ResultSet rs1=ps1.executeQuery();

ResultSet rs=ps2.executeQuery();

while(rs1.next()){	
	x1++;
}
	if(x1==0)
	{
		out.println("No records");

	}
	else if(x1>=1){
%>
<table border="1">
<tr><td>Request Id</td><td>PatientName</td>
<td>DeseageName</td>
<td>RequestBloodGroup</td>
<td>Type</td>
<td>Units</td>
<td>Status</td></tr>

<% while(rs.next()){ %>
<tr>
<tr><td><%=rs.getString(1) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7) %></td>
<td><% if(rs.getString(8).equals("1"))
{
	out.println("Accepted");
}
else if(rs.getString(8).equals("0"))
{
	out.println("Pending");
}
%>
</td>
</tr>
<%  }%>
</table>
<%  }%>

</div>
</body>
</html>