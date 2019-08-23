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
response.setHeader("Pragma", "no-cache");
response.setHeader("Cache-Control", "no-cache,no-store");
response.setHeader("Expires", "0");
String u=(String)session.getAttribute("person");
if(u!=null)
{
	session.removeAttribute("person");
	session.invalidate();


%>
<%
}
else{
response.sendRedirect("INDEX.jsp");}
%>
</body>
</html>