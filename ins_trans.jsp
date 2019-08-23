<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
      <%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TRANSACTION ENTRY</title>
<style>

body{
    margin: 0;
    padding: 0;
    
    background-size: cover;
    background-position: center;
    font-family: sans-serif;
}

.loginbox{
    width:320px;
    height: 700px;
    background: #93BCC6;
    opacity: 0.5;
    color: #fffff;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 30px;
    border-radius:20px;
}

.avatar{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    top: -50px;
    left: calc(50% - 50px);
}

h1{
    margin: 0;
    padding: 0 0 20px;
    text-align: center;
    font-size: 22px;
}

.loginbox p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}

.loginbox input{
    width: 100%;
    margin-bottom: 20px;
}

.loginbox input[type="text"], input[type="password"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 30px;
    color: black;
    font-size: 16px;
}
.loginbox input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    background: #adff2f;
    color: #fff;
    font-size: 18px;
    border-radius: 20px;
}
.loginbox input[type="submit"]:hover
{
    cursor: pointer;
    background: #228b22;
    color: #fff;
}
.loginbox a{
    text-decoration: none;
    font-size: 12px;
    line-height: 20px;
    color: #93BCC6;
}

.loginbox a:hover
{
    color: #228b22;
}

</style>
</head>
<body>

 <form action="ins_trans.jsp" method="post">
		<a href="emp.html"><h3>BACK</h3></a>

    <div class="loginbox">
 
        <h1>TRANSACTIONS</h1>
          
             <p>emp_id</p>
            <input type="text"  name="emp_id">
            <p>items</p>
            <input type="text"  name="items">
            <p>particulars</p>
            <input type="text"  name="particulars">
             <p>total</p>
            <input type="text" name="total">
            

            
                     
          
           
          
             <input type="submit" name="submit" value="Register"/>
               
               
               
               <a href="#">BACK </a>
        
        
<%


//String bid=request.getParameter("bid");
String emp_id=request.getParameter("emp_id");
String items=request.getParameter("items");
String particulars=request.getParameter("particulars");
String total=request.getParameter("total");




String connectionURL ="jdbc:mysql://localhost:3306/billing";

Connection connection = null;

PreparedStatement pstatement = null;

Class.forName("com.mysql.jdbc.Driver");

int updateQuery = 0;

if( emp_id!=null && items!=null && particulars!=null && total!=null){

if(  emp_id!="" && items!=""  && particulars!="" && total!="") {

try {

connection = DriverManager.getConnection(connectionURL,"root","root");
 
String queryString = "insert into trans(emp_id,items,particulars,total) values(? , ? ,? , ? )";

pstatement = connection.prepareStatement(queryString);


//pstatement.setString(1,bid);
pstatement.setString(1,emp_id);
pstatement.setString(2,items);
pstatement.setString(3,particulars);
pstatement.setString(4,total);





updateQuery = pstatement.executeUpdate();

if (updateQuery != 0) { %>

<br>

<center><TABLE style="background-color: white;" WIDTH="70%" border="1">

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
<%
					try {
						Class.forName("com.mysql.jdbc.Driver");
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billing", "root", "root");
						Statement stmt = con.createStatement();
						stmt.execute("DELETE FROM billing");
						
						//	out.println("<script>alert('deleted successfully');window.location='empop.html';</script>");
					} catch (Exception e) {

						out.println("Unable to connect to database.");

					}
				//out.println("<script>alert('deleted successfully');window.location='empop.html';</script>");
					
				%>

  </form>

</body>
</html>