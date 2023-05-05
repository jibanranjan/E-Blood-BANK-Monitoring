<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%

int abc=0;
int abcd=0;
int abc11=0;

String bg1=request.getParameter("bg");
String type1=request.getParameter("type");
String units1=request.getParameter("units");

System.out.println("==");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-blood bank monitoring hospitals","root","root");

/* 
PreparedStatement ps=con.prepareStatement("insert into stock(bg,type,units) values(?,?,?)");
ps.setString(1,bg1);
ps.setString(2,type1);
ps.setString(3,units1);
ps.executeUpdate(); */

PreparedStatement ps1=con.prepareStatement("select units from stock where type='"+type1+"' and bg='"+bg1+"'");
PreparedStatement ps11=con.prepareStatement("select  count(*) from stock where type='"+type1+"' and bg='"+bg1+"'");

ResultSet rs1=ps1.executeQuery();
ResultSet rs11=ps11.executeQuery();
while(rs11.next()){
	abc11=rs11.getInt(1);
	
}

if(abc11>=1)
{
	

while(rs1.next()){
	abc=rs1.getInt(1);
	
}

abcd=Integer.parseInt(units1)+abc;
PreparedStatement ps2=con.prepareStatement("update stock set units='"+abcd+"'  where type='"+type1+"' and bg='"+bg1+"'");
ps2.executeUpdate();

}
else
{
	
	int a3=Integer.parseInt(request.getParameter("units"));
	PreparedStatement ps2=con.prepareStatement("insert into stock (bg,type,units) values(?,?,?)");
	ps2.setString(1,bg1);
	ps2.setString(2,type1);
	ps2.setInt(3,a3);
	
	ps2.executeUpdate();

}
response.sendRedirect("stock.jsp?m=ss");
%>
