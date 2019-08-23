<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>
   JSP Page
   </title> 
   </head> 
   <body> 
   <%
   String username=request.getParameter("username"); 
   String password=request.getParameter("password");
   if((username.equals("pranav") && password.equals("pranavpc")))
   { 
   response.sendRedirect("admin_login.html");
   } 
   else
   {
	   response.sendRedirect("Error.jsp");
   }
   %> 
   </body> 
   </html>

