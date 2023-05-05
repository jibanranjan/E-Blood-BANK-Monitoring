<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%
String uname1=request.getParameter("uname");
String pass1=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
int x1=0;
String id=null;
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-blood bank monitoring hospitals","root","root");

PreparedStatement stmt=con.prepareStatement("select count(*),id from hreg where eid='"+uname1+"' and hpass='"+pass1+"'");
ResultSet rs=stmt.executeQuery();
while(rs.next())
{
x1=rs.getInt(1);
id=rs.getString(2);
}
	if(x1==1)
		{
		session.setAttribute("id", id);
		out.println("<br>+session.getId()");
		response.sendRedirect("hhome.jsp");
		}
	else
	{
	response.sendRedirect("h1.jsp");
	}
%>	