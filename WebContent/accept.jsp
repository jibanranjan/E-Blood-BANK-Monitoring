<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<%@page import="java.sql.*" %>
<%@page import=" com.sun.jersey.api.client.Client" %>
<%@page import=" com.sun.jersey.api.client.ClientResponse" %>
<%@page import=" com.sun.jersey.api.client.WebResource" %>
<% 
String id="";
int jmk=0;
int jmk1=0;
String abc="";
id=request.getParameter("id");
String bg1=request.getParameter("bg");
String type1=request.getParameter("type");
String units1=request.getParameter("units");
System.out.println(units1);
System.out.println(bg1);
System.out.println(type1);

int dp=Integer.parseInt(units1);
int units=0;

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-blood bank monitoring hospitals","root","root");



PreparedStatement ps19=con.prepareStatement("select * from sreq where id='"+id+"'");
ResultSet rs19=ps19.executeQuery();

while(rs19.next()){

System.out.println(rs19.getString(5)+"===========");
 abc=rs19.getString(5);
System.out.println(abc);
System.out.println(type1);

PreparedStatement ps1=con.prepareStatement("select count(*),units from stock where type='"+type1+"' and bg='"+abc+"'");

ResultSet rs1=ps1.executeQuery();
while(rs1.next()){
	
	jmk=rs1.getInt(2);
	jmk1=rs1.getInt(1);
	
}
}
System.out.println(jmk);


if(jmk==0){
	System.out.println("==========1");


PreparedStatement ps82=con.prepareStatement(" SELECT DISTINCT(phno) FROM ddetails  where  bg='"+abc+"'");
ResultSet rs82= ps82.executeQuery();

while(rs82.next()){
/* 
String url = "http://www.weberleads.in/http-api.php?username=NADHIYA&password=36816&senderid=TAKEOF&route=2&number="+rs82.getString(1)+"&message=A%20request%20from%20Blood:We%20need%20Your%20Blood%20please%20donate%20now";
Client restClient = Client.create();
WebResource webResource = restClient.resource(url);
ClientResponse resp = webResource.accept("application/json")
                                            .get(ClientResponse.class);
if(resp.getStatus() != 200){
    System.err.println("Unable to connect to the server");
}
String output = resp.getEntity(String.class);
System.out.println("response: "+output); */

String url = "http://www.weberleads.in/http-api.php?username=NADHIYA&password=36816&senderid=TAKEOF&route=2&number="+rs82.getString(1)+"&message=A%20request%20from%20Blood:We%20need%20Your%20Blood%20please%20donate%20now";
Client restClient = Client.create();
WebResource webResource = restClient.resource(url);
ClientResponse resp = webResource.accept("application/json")
                                            .get(ClientResponse.class);
if(resp.getStatus() != 200){
    System.err.println("Unable to connect to the server");
}
String output = resp.getEntity(String.class);
System.out.println("response: "+output);


/* 
---------------------------------------------------------------- */
PreparedStatement ps82ab=con.prepareStatement(" SELECT DISTINCT(emailid) FROM ddetails  where  bg='"+abc+"'");
ResultSet rs82ab= ps82ab.executeQuery();

while(rs82ab.next()){

String mail=rs82ab.getString(1);

//String mail=(String)session.getAttribute("mail");


String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="januram513@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="janakiram"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =mail; // out going email id

String from ="januram513@gmail.com"; //Email id of the recipient
String subject="Request from blood bank";
//String subject ="welcome";
//String status="accepted";

String messageText ="We need your blood please donate now : ";



session.setAttribute("mail",mail);
boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
try 
{
transport.sendMessage(msg, msg.getAllRecipients());
//out.println("message successfully sended"); // assume it was sent
//response.sendRedirect("reg1.jsp");
}
catch (Exception err) 
{
out.println("Request Not Accepted"); // assume it’s a fail
}
transport.close();

}


	response.sendRedirect("vreq.jsp?msg=Stock not availabe");
}}

else {
	
	System.out.println("==========1sss");
	
	
	System.out.println("jmk=========="+jmk);
	System.out.println("dp=========="+dp);
	
	if(jmk>=dp){
		
		System.out.println("jmk=========="+jmk);
		System.out.println("dp=========="+dp);

		PreparedStatement ps2=con.prepareStatement("update sreq set status='1' where  id='"+id+"'");
		ps2.executeUpdate();
		
		int dpr=jmk-dp;
		System.out.println(dpr+"=");
		
		System.out.println(type1);
		System.out.println(abc);
		PreparedStatement ps22=con.prepareStatement("update stock set units='"+dpr+"' where   type='"+type1+"' and bg='"+abc+"'");
		ps22.executeUpdate();
		
		if(dpr<25){
			
PreparedStatement ps82=con.prepareStatement(" SELECT DISTINCT(phno) FROM ddetails  where  bg='"+abc+"'");
ResultSet rs82= ps82.executeQuery();

while(rs82.next()){

	String url = "http://www.weberleads.in/http-api.php?username=NADHIYA&password=36816&senderid=TAKEOF&route=2&number="+rs82.getString(1)+"&message=A%20request%20from%20Blood:We%20need%20Your%20Blood%20please%20donate%20now";
Client restClient = Client.create();
WebResource webResource = restClient.resource(url);
ClientResponse resp = webResource.accept("application/json")
                                            .get(ClientResponse.class);
if(resp.getStatus() != 200){
    System.err.println("Unable to connect to the server");
}
String output = resp.getEntity(String.class);
System.out.println("response: "+output);
			
			
			
		}
		
		}
		
		
		System.out.println("hgbydjfbdvgjyf");
		response.sendRedirect("vreq.jsp?msg=accepted ");


	}
	else{
		
PreparedStatement ps82=con.prepareStatement(" SELECT DISTINCT(phno) FROM ddetails  where  bg='"+abc+"'");
ResultSet rs82= ps82.executeQuery();

while(rs82.next()){

	String url = "http://www.weberleads.in/http-api.php?username=NADHIYA&password=36816&senderid=TAKEOF&route=2&number="+rs82.getString(1)+"&message=A%20request%20from%20Blood:We%20need%20Your%20Blood%20please%20donate%20now";
Client restClient = Client.create();
WebResource webResource = restClient.resource(url);
ClientResponse resp = webResource.accept("application/json")
                                            .get(ClientResponse.class);
if(resp.getStatus() != 200){
    System.err.println("Unable to connect to the server");
}
String output = resp.getEntity(String.class);
System.out.println("response: "+output);
			
			
			
		}

PreparedStatement ps82a=con.prepareStatement(" SELECT DISTINCT(emailid) FROM ddetails  where  bg='"+abc+"'");
ResultSet rs82a= ps82a.executeQuery();

while(rs82a.next()){

String mail=rs82a.getString(1);

//String mail=(String)session.getAttribute("mail");


String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="januram513@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="janakiram"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =mail; // out going email id

String from ="januram513@gmail.com"; //Email id of the recipient
String subject="Request from blood bank";
//String subject ="welcome";
//String status="accepted";

String messageText ="We need your blood please donate now : ";



session.setAttribute("mail",mail);
boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
try 
{
transport.sendMessage(msg, msg.getAllRecipients());
//out.println("message successfully sended"); // assume it was sent
//response.sendRedirect("reg1.jsp");
}
catch (Exception err) 
{
out.println("Request Not Accepted"); // assume it’s a fail
}
transport.close();

}
			
			

		response.sendRedirect("vreq.jsp?msg=low Stock ");

	}
	
	
	System.out.println("======");
}

/* 
int x1=0;
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-blood bank monitoring hospitals","root","root");

PreparedStatement ps1=con.prepareStatement("select units from stock where type='"+type1+"' and bg='"+bg1+"'");


//PreparedStatement ps11=con.prepareStatement("select  count(*) from stock where type='"+type1+"' and bg='"+bg1+"'");

ResultSet rs1=ps1.executeQuery();


//ResultSet rs11=ps1.executeQuery();
while(rs1.next()){
	units=rs1.getInt(1);
	
	}

if(units>Integer.parseInt(units1)){
	
	System.out.println("blood is not Available");
	response.sendRedirect("vreq.jsp?m=Blood Not Available");

}
	
PreparedStatement ps2=con.prepareStatement("update sreq set status='1' where  id='"+id+"'");
x1=ps2.executeUpdate();
if(x1==0){
	response.sendRedirect("vreq.jsp?m=fail");
}

else if(x1==1)
{
	
	jmk=units-Integer.parseInt(units1);
	
	PreparedStatement ps22=con.prepareStatement("update stock set units='"+jmk+"' where   type='"+type1+"' and bg='"+bg1+"'");
	ps22.executeUpdate();
	
	
	
	
	
	
	
	response.sendRedirect("vreq.jsp?m=Accept");

} */
%>
