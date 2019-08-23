<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ page import="java.sql.*" %>

<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> system</title>
<link rel="icon"  href="logo.jpg" type="image/jpg"/>


</head>
<body>



<%


String pid=request.getParameter("pid");
String quantity=request.getParameter("quantity");



String connectionURL ="jdbc:mysql://localhost:3306/billing";

Connection connection = null;

PreparedStatement pstatement = null;

Class.forName("com.mysql.jdbc.Driver").newInstance();

int updateQuery = 0;

if( pid!=null   && quantity!=null ){

if( pid!=""  && quantity!="") {

try {

connection = DriverManager.getConnection(connectionURL,"root","root");

String queryString = "insert into billing values(?,?)";

pstatement = connection.prepareStatement(queryString);




pstatement.setString(1, pid);

pstatement.setString(2,quantity);




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

out.println("Unable to connect to database.");

}

finally {

pstatement.close();

connection.close();

}

}

}

%>


</body>
</html>