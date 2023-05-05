<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%
String uname1=request.getParameter("uname");
String pass1=request.getParameter("pass");

	 if(uname1.equals("bb")&&pass1.equals("bb")){
		response.sendRedirect("bbhome.jsp");

	}
	else{
		response.sendRedirect("bba.jsp");

	} 
%>	