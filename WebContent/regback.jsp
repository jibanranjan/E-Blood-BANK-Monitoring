<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%
String hname1=request.getParameter("hname");
String addr1=request.getParameter("addr");
String hpass1=request.getParameter("pass");
String phno1=request.getParameter("phno");
String eid1=request.getParameter("eid");


System.out.println("==");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-blood bank monitoring hospitals","root","root");
PreparedStatement ps=con.prepareStatement("insert into hreg(hname,addr,hpass,phno,eid) values(?,?,?,?,?)");
ps.setString(1,hname1);
ps.setString(2,addr1);
ps.setString(3,hpass1);
ps.setString(4,phno1);
ps.setString(5,eid1);

ps.executeUpdate();

response.sendRedirect("reg.jsp?m=ss");
%>
