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
<li ><a href="adddonor.jsp">AddDonors</a></li>

<li><a href="addbd.jsp">AddBlood</a></li>
 
 <li class="active"><a href="vreq.jsp">ViewRequest</a></li>
 <li><a href="stock.jsp">Stock</a></li>
 <li><a href="report.jsp">Report</a></li>
 <li><a href="index.html">Logout</a></li>

</ul>

<div align="center"><h1 align="center" style="background-color: ;">
<span style="color: #ed2b59;">Status</span></h2>
<%@page import="java.sql.*" %>
<% 


int x1=0;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-blood bank monitoring hospitals","root","root");
PreparedStatement ps1=con.prepareStatement("select * from sreq where  status='0'");
PreparedStatement ps2=con.prepareStatement("select * from sreq where  status='0'");
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
<td>Status</td>
<td>Accept</td>
</tr>

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
<td><a href="accept.jsp?id=<%=rs.getString(1) %>&bg=<%=rs.getString(5)%>&type=<%=rs.getString(6)%>&units=<%=rs.getString(7)%>">Accept</a></td>

</tr>
<%  }%>
</table>
<%  }%>

</div>


</body>
</html>