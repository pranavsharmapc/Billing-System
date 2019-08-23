<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<style>
body {
	background-repeat: no-repeat;
	background-size: 100% 700px;
	color: white;
}

.simple-form {
	text-align: centre;
	margin: none;
}

#registration {
	width: 100%;
	background-color: #93BCC6;
	opacity: .8;
	padding: 100px 0px;
	outline: 10px;
}

#button {
	width: 250px;
	padding: 10px;
	border-radius: 5px;
	outline: 0px;
}

#number {
	width: 25px;
	padding: 10px;
	border-radius: 5px;
	outline: 0px;
}

#butt {
	width: 100px;
	padding: 10px;
	border-radius: 5px;
	outline: 0px;
	background-color: green;
	border: 2px solid #01010;
}

a {
	text-decoration: none;
	color: green;
}

a:hover {
	text-decoration: underline;
}
</style>



</head>
<body>
	<center>

		<div class="simple-form">
			<form id="registration" action="del_emp.jsp" method="post">

				<label><b>EMPLOYEE ID&nbsp; </b></label> <input type="text"
					name="emp_id" id="button" placeholder="Enter The employee ID"
					required><br>
				<br> <input type="submit" name="submit" value="delete"
					id="butt" />&nbsp;&nbsp; <a href="view_emp.jsp">CHECK </a><br>
				<br>
				<br> <a href="empop.html">BACK </a>









				<%
					try {
						String emp_id = request.getParameter("emp_id");
						Class.forName("com.mysql.jdbc.Driver");
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing", "root", "root");
						Statement stmt = con.createStatement();
						stmt.execute("DELETE FROM employee WHERE emp_id=" + emp_id);
						
						//	out.println("<script>alert('deleted successfully');window.location='empop.html';</script>");
					} catch (Exception e) {

						out.println("Unable to connect to database.");

					}
				//out.println("<script>alert('deleted successfully');window.location='empop.html';</script>");
					
				%>

			</form>
		</div>
	</center>

</body>
</html>