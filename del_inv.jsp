<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ page import="java.sql.*" %>

<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<style>
body{
      background-repeat:no-repeat;
      background-size:100% 700px;  
            color:white; 
}
.simple-form{
     text-align:centre;
     margin:none;
}
#registration{
     width:100%;
     background-color:#93BCC6;
     opacity:.8;
     padding:100px 0px;
     outline:10px;
}
#button{
     width:250px;
     padding:10px;
     border-radius:5px;
          outline:0px;
}
#number{
     width:25px;
     padding:10px;
     border-radius:5px;
     outline:0px;
}
#butt{
     width:100px;
     padding:10px;
     border-radius:5px;
     outline:0px;
     background-color:green;
     border:2px solid #01010;
}
a{
  text-decoration:none;
  color:green;
}
a:hover{
     text-decoration:underline;
}
</style>



</head>
<body>

<center>

<div class="simple-form">
      <form id="registration" action="del_inv.jsp" method="post">
    
                  <label><b>PRODUCT ID&nbsp;
                 </b></label>
         <input type="text" name="pid" id="button" placeholder="Enter The product ID" required><br><br>
                <input type="submit" name="submit" value="delete" id="butt"/>&nbsp;&nbsp;
                 <a href="view_inv.jsp">CHECK </a><br><br><br>
                <a href="inventory.html">BACK </a>
               

<%	try{

	String pid = request.getParameter("pid");
	//out.println(n);
	          
	         Class.forName("com.mysql.jdbc.Driver");
	         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing","root","root");
	         Statement stmt = con.createStatement();
	boolean i=stmt.execute("DELETE FROM inventory WHERE pid="+pid);
	
	
	        if(i)
	        {%>
	        	<br>

	        	<center><TABLE style="background-color: white;" WIDTH="70%" border="1">

	        	<tr><th>Data is deleted successfully to database.</th></tr>

	        	</table></center>

	     <%   }
}

     catch(Exception e)
     {
    	 
    	 out.println("Unable to connect to database.");

     }
     %>

	
  </form>
    </div>
</center>

</body>
</html>