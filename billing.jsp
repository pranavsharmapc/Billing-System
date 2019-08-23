<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<style>
body {
	font-family: sans-serif;
	font-size: 1em;
	background-color: grey;
}

table1 {
	width:10%;
	position:right;
}
.t
{
position:absolute;
bottom:0px;
left:0px;
}
table {
	width:50%;
}

table, th, td {
	border: 1px solid black;
	border-collapse:collapse;
	opacity: 0.95;
 }

th,td {
	padding: 10px;
	text-align:center;
 }

th {
	background-color: red;
	color: white;
 }

tr:nth-child(even) {
	background-color: #F5F5F5;
 }

tr:nth-child(odd){
	background-color: white;
 }

</style>
</head>
<body>

	<center>
		<p>STORE NAME</p>
		<p>STORE ADDRESS</p>
		<p>CONTACT NUMBER</p>
	</center>
	<table align="center">
		<tr>

		</tr>
		<tr>
			<th>pid</th>
			<th>quantity</th>
			<th>pname</th>
			<th>mrp</th>
			<th>selling price</th>
			<th>expiry date</th>
			<th>TOTAL</th><br>
		</tr>
          <a href="ins_trans.jsp">RECORD</a>
		
		<a href="emp.html"><h3>BACK</h3></a>

		<%
			String connectionURL = "jdbc:mysql://localhost:3306/billing";

			Connection connection = null;

			Statement st = null;

			ResultSet rs = null;

			try {

				Class.forName("com.mysql.jdbc.Driver").newInstance();

				connection = DriverManager.getConnection(connectionURL, "root", "root");

				String queryString = "select b.pid,b.qty,i.pname,i.mrp,i.s_price,i.exp_date,(i.s_price*b.qty)as TOTAL from billing b inner join inventory i on b.pid=i.pid ";
				
		
			st = connection.createStatement();

				rs = st.executeQuery(queryString);

				while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getString(6)%></td>
			<td><%=rs.getString(7)%></td>
			
		</tr>

		<%
			}

			} catch (Exception e) {
			} finally {

				st.close();

				connection.close();

			}
		%>			</table>
		
		<div=t>
		<table1 align="right">
	
		<%
		String connectionURL1 = "jdbc:mysql://localhost:3306/billing";

		Connection connection1 = null;

		Statement st1 = null;

		ResultSet rs1 = null;

		try {

			Class.forName("com.mysql.jdbc.Driver").newInstance();

			connection1 = DriverManager.getConnection(connectionURL1, "root", "root");
		String queryString1 = "select count(*),sum(b.qty),sum((i.s_price*b.qty)) from billing b inner join inventory i on b.pid=i.pid ";
				
		
			st1 = connection1.createStatement();

				rs1 = st1.executeQuery(queryString1);

				while (rs1.next()) {
		%>
		<tr> <th>ITEMS=</th>
			<td><%=rs1.getString(1)%></td><br>
			</tr>
			<tr> <th>PARTICULARS=</th>
			<td><%=rs1.getString(2)%></td><br>
			</tr>
			<tr> <th>TOTAL AMOUNT =</th>
			<td><%=rs1.getString(3)%></td><br>
			</tr>
			
		</tr>

		<%
			}

			} catch (Exception e) {
			} finally {

				st1.close();

				connection1.close();

			}
			%>
         </table1>
         </div>

</body>
</html>