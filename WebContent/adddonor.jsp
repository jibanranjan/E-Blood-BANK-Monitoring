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
<li class="active"><a href="adddonor.jsp">AddDonors</a></li>

<li><a href="addbd.jsp">AddBlood</a></li>
 
 <li><a href="vreq.jsp">ViewRequest</a></li>
 <li><a href="stock.jsp">Stock</a></li>
 <li><a href="report.jsp">Report</a></li>
 <li><a href="index.html">Logout</a></li>

</ul>
<div align="center">
<h2>AddDonors</h2>
<form action="addback.jsp">
<table>
<tr><td>DonorName:</td><td><input type="text" name="dname"></td></tr>
<tr><td>FatherName:</td><td><input type="text" name="fname"></td></tr>
<tr><td>Email:</td><td><input type="email" name="emailid"></td></tr>

<tr><td>DonorAddress:</td><td><textarea  title="enter address" name="addr"></textarea></td></tr>
<tr><td>AadharNo:</td><td><input type="text" name="aadhar"></td></tr>
<tr><td>PhoneNo:</td><td><input type="text" name="phno"></td></tr>
<tr><td>BloodGroup:</td><td><input type="text" name="bg"></td></tr>
<tr><td><input type="submit" value="Add Donor"></td><td><input type="reset" value="Reset"></td></tr>
</table>
</form>
</div>
</body>
</html>