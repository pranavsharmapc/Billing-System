<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
ArrayList<Student> temp=(ArrayList<Student>) request.getAttribute("all");
%>
<table border="4" bgcolor="cyan" cellpadding="4" cellspacing="4">
<tr>
<th>student name</th>
<th>student usn</th>
<th>student dept</th>
<th>student skills</th>
<th>student intrest</th>
<th>student status</th>
</tr>
<% 
for(Student h:temp)
{%>
<tr>
<td><%out.println(h.getUsn()); %></td>
<td><%out.println(h.getSname()); %></td>

<td><%out.println(h.getDept()); %></td>

<td><%out.println(h.getSkills()); %></td>
<td><%out.println(h.getIntrest()); %></td>
<td><%out.println(h.getStatus()); %></td>



</tr>
<%} %>




</table>
</body>
</html>