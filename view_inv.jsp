
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inventory Info</title>
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

<h2><center> INVENTORY</center></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="red">
<th>Product ID</th>
<th>Product Name</th>
<th>MRP</th>
<th>Selling Price</th>
<th>Expiry Date</th>
<th>Quantity</th>






</tr>
<%

String connectionURL ="jdbc:mysql://localhost:3306/billing";

Connection connection = null;

  

ResultSet rs=null;

try {

	Class.forName("com.mysql.jdbc.Driver").newInstance();

	connection = DriverManager.getConnection(connectionURL,"root","root");
	
	CallableStatement st=connection.prepareCall("CALL displays();");
	

   rs=st.executeQuery();
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
<%}    
}catch(Exception e)
{
}
finally {

	

	connection.close();

	}
	%>
	<a href="inventory.html"><h3>BACK</h3></a>
</table>
</body>
</html>
