<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-image: url(imag.jpg);
	height: 130vh;
	background-size: cover;
	background-position: cover;
}
</style>

</head>
<body>
<body>
	<form action="nagesh1.jsp" method="post">
		<h2>
			<center>BILLING</center>
		</h2>

		<table align="right" cellpadding="5" cellspacing="5" border="1">
			<tr bgcolor="red">
				<th>
					<p>product id</p> <input type="text" name="pid">
				</th>
				<th>Product Name</th>
				<th>MRP</th>
				<th>Selling Price</th>
				<th>Expiry Date</th>
				<th><p>quantity</p> <input type="text" name="quantity"></th>
				<th><p>total</p> </th>
				<input type="submit" name="submit" value="submit"/>

				<table align="center" cellpadding="5" cellspacing="5" border="1">
					<th>EMPLOYEE ID</th>
					<th>BILL NUMBER</th>
				</table>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>



				<table align="bottom" cellpadding="5" cellspacing="5" border="1">
					<th>BILL NUMBER</th>
					<th>TOTAL TRANSACTION</th>
				</table>
			</tr>
		</table>
	</form>
</body>
</html>