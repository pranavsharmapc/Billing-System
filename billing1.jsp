<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>bill</title>


</head>
<body>

	<form action="billing1.jsp" method="post">
		<h2>
			<center>BILLING</center>
		</h2>
             
		<table align="center" cellpadding="5" cellspacing="5" border="1">
			<tr bgcolor="red">
				<th>
					<p>product id</p> <input type="text" name="pid">
				</th>
				<th><p>quantity</p> <input type="text" name="qty">
				<input type="submit" name="submit" value="submit"/></th>
				

			</tr>
		</table>
<center><a href="billing.jsp">PRINT </a></center>


		<a href="emp.html"><h3>BACK</h3></a>



		<%
			String pid = request.getParameter("pid");
			String qty = request.getParameter("qty");

			String connectionURL = "jdbc:mysql://localhost:3306/billing";

			Connection connection = null;

			PreparedStatement pstatement = null;
			PreparedStatement pstatement1 = null;
			Class.forName("com.mysql.jdbc.Driver").newInstance();

			int updateQuery = 0;

				if (pid != "" && qty != "") {

					try {

						connection = DriverManager.getConnection(connectionURL, "root", "root");

						String queryString = "insert into billing values(?,?)";
                        
						pstatement = connection.prepareStatement(queryString);

						pstatement.setString(1,pid);

						pstatement.setString(2,qty);
					updateQuery = pstatement.executeUpdate();

if (updateQuery != 0) { %>

		<br>

<center><TABLE style="background-color:;" WIDTH="50%" border="1">

<tr><th>Data is inserted successfully to database.</th></tr>

</table></center>

<%

}

}

catch (Exception ex) {

out.println("Unable to connect to database." +ex);

}

					
					finally {

						pstatement.close();

						connection.close();

					}

				}

			
		%>

	</form>
</body>
</html>