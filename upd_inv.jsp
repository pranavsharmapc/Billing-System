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
   String pid=request.getParameter("pid");
  int s_price=Integer.valueOf(request.getParameter("s_price"));
  int quantity=Integer.valueOf(request.getParameter("quantity")); 

   
   
   PreparedStatement st=con.prepareStatement("update inventory set s_price=?,quantity=? where pid=?");
   st.setInt(1,s_price);
  
   st.setInt(2,quantity);
   st.setString(3,pid);

   int i=st.executeUpdate();
	if(i>0){
	out.println("<script>alert('Updated successfully');window.location='inventory.html';</script>");
	//out.print("<center><a href='inventory.html'>BACK</a>");
 }
	else{
		out.println("Not updated successfully");
		//out.print("<center><a href='inventory.html'>BACK</a>");
	}
 }	
 
catch(Exception e)
 {
out.println("pl retry"+e);
//out.print("<center><a href='inventory.html'>BACK</a>");
 }           
 //out.print("<center><a href='inventory.html'>BACK</a>");
%>


 </body>