<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%
String dname1=request.getParameter("dname");
String emailid=request.getParameter("emailid");
String fname1=request.getParameter("fname");
String addr1=request.getParameter("addr");
String adhar1=request.getParameter("aadhar");
String phno1=request.getParameter("phno");
String bg1=request.getParameter("bg");

System.out.println("==");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-blood bank monitoring hospitals","root","root");
PreparedStatement ps=con.prepareStatement("insert into ddetails(dname,fname,addr,aadhar,phno,bg,emailid) values(?,?,?,?,?,?,?)");
ps.setString(1,dname1);
ps.setString(2,fname1);
ps.setString(3,addr1);
ps.setString(4,adhar1);
ps.setString(5,phno1);
ps.setString(6,bg1);
ps.setString(7,emailid);
ps.executeUpdate();
response.sendRedirect("adddonor.jsp?m=ss");
%>
