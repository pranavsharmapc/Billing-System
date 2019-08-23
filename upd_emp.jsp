<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update</title>
</head>
<body>

 <%

try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billing","root","root");
   String emp_id=request.getParameter("emp_id");
   int salary=Integer.parseInt(request.getParameter("salary"));
  String phno=request.getParameter("phno");
 

   
   
   PreparedStatement st=con.prepareStatement("update employee set salary=?,phno=? where emp_id=?");
   st.setInt(1,salary);
   st.setString(2,phno);
   st.setString(3,emp_id);
   
   int i=st.executeUpdate();
	if(i>0){
	out.println("Updated successfully");
	out.print("<center><a href='empop.html'>BACK</a>");
 }
	else{
		out.println("Not updated successfully");
       
	}
 }	
 
catch(Exception e)
 {
System.out.println("pl retry"+e);
	
 }           

%>


 </body>