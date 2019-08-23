
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EMPLOYEE INFO</title>
<style>
body{
	background-image:url(imag.jpg);
	height: 130vh;
	background-size:cover;
	background-position:cover;	
}
</style>



</head>
<body>
<h2><center> Employee Information</center></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="red">
<th>Employee ID</th>
<th>Employee Name</th>
<th>Salary</th>
<th>Address</th>
<th>Phone Number</th>
<th>Gender</th>






</tr>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billing","root","root");
PreparedStatement ps=con.prepareStatement("select * from employee");
ResultSet rs=ps.executeQuery();
while(rs.next()) {
%>
<tr bgcolor="lightblue">
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td ><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>

</tr>
<%} %>
</table>
<a href="empop.html"><h3>BACK</h3></a>
</body>
</html>
