<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
      <%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee REGISTER</title>
<style>
.previous {
    background-color:#4CAF50;
    color: white;
}
</style>
</head>
<body>
 
 <form action="emp_reg.jsp" method="post">

  
        
        
<%


String emp_id=request.getParameter("emp_id");
String ename=request.getParameter("ename");
String salary=request.getParameter("salary");
String address=request.getParameter("address");
String phno=request.getParameter("phno");
String gender=request.getParameter("gender");
String passwor=request.getParameter("passwor");



String connectionURL ="jdbc:mysql://localhost:3306/billing";

Connection connection = null;

PreparedStatement pstatement = null;

Class.forName("com.mysql.jdbc.Driver");

int updateQuery = 0;

if( emp_id!=null && ename!=null && salary!=null && address!=null && phno!=null  && gender!=null&& passwor!=null){

if( emp_id!="" && ename!="" && salary!=""  && address!=""&& phno!=""&& gender!=""&& passwor!="") {

try {

connection = DriverManager.getConnection(connectionURL,"root","root");

String queryString = "insert into employee(emp_id,ename,salary,address,phno,gender,passwor) values( ?, ? , ? ,?, ?,?,?)";

pstatement = connection.prepareStatement(queryString);


pstatement.setString(1,emp_id);
pstatement.setString(2,ename);

pstatement.setString(3,salary);

pstatement.setString(4,address);
pstatement.setString(5,phno);
pstatement.setString(6,gender);
pstatement.setString(7,passwor);


updateQuery = pstatement.executeUpdate();

if (updateQuery != 0) { %>

<br>

<center><TABLE style="background-color: white;" WIDTH="50%" border="1">

<tr><th>Data is inserted successfully to database.</th></tr>

</table></center>

<%

}

}

catch (Exception ex) {
%>
<script type="text/javascript">
alert("<%= ex %> ");
window.location="reg.html";
</script>



<% 
}

finally {

pstatement.close();

connection.close();

}

}

}

%>

  </form>

 <a href="reg.html" class="">&laquo; back</a>
</body>
</html>