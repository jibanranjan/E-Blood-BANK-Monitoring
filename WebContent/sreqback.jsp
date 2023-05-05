<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%
String pname1=request.getParameter("pname");
String dsname1=request.getParameter("dsname");
String rbg1=request.getParameter("rbg");
String type1=request.getParameter("type");
String units1=request.getParameter("units");
//String status1=request.getParameter("status");
String id=session.getAttribute("id").toString();

System.out.println("==");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-blood bank monitoring hospitals","root","root");
PreparedStatement ps=con.prepareStatement("insert into sreq(pname,dsname,rbg,type,units,hid) values(?,?,?,?,?,?)");
ps.setString(1,pname1);
ps.setString(2,dsname1);
ps.setString(3,rbg1);
ps.setString(4,type1);
ps.setString(5,units1);
ps.setString(6,id);
ps.executeUpdate();
response.sendRedirect("sreq.jsp?m=ss");
%>
