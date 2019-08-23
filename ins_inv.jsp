<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*" %>
      <%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>INVENTORY REGISTER</title>
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

 <form action="ins_inv.jsp" method="post">

    <div class="loginbox">
 
        <h1>INVENTORY REGISTER</h1>
            <p>pid</p>
            <input type="text"  name="pid">
             <p>product NAME</p>
            <input type="text" pattern="[a-zA-Z]+[a-zA-Z ]+[a-zA-Z]$" name="pname">
             <p>mrp</p>
            <input type="text"  name="mrp">
             <p>selling price</p>
            <input type="text" name="s_price">
             <p>exp_date</p>
            <input type="date" name="exp_date"  >

            
             <p>quantity</p>
            <input type="text" name="quantity">
            
          
           
          
             <input type="submit" name="submit" value="Register"/>
               
               
               
               		<a href="inventory.html"><h3>BACK</h3></a>
               
        
        
<%


String pid=request.getParameter("pid");
String pname=request.getParameter("pname");
String mrp=request.getParameter("mrp");
String s_price=request.getParameter("s_price");
String exp_date=request.getParameter("exp_date");
String quantity=request.getParameter("quantity");




String connectionURL ="jdbc:mysql://localhost:3306/billing";

Connection connection = null;

PreparedStatement pstatement = null;

Class.forName("com.mysql.jdbc.Driver");

int updateQuery = 0;

//if( pid!=null && pname!=null && mrp!=null && s_price!=null && exp_date!=null  && quantity!=null){

if( pid!="" && pname!="" && mrp!=""  && s_price!=""&& exp_date!=""&& quantity!="") {

try {

connection = DriverManager.getConnection(connectionURL,"root","root");

String queryString = "insert into inventory(pid,pname,mrp,s_price,exp_date,quantity) values( ?, ? , ? ,?, ?,?)";

pstatement = connection.prepareStatement(queryString);


pstatement.setString(1,pid);
pstatement.setString(2,pname);

pstatement.setString(3,mrp);

pstatement.setString(4,s_price);
pstatement.setString(5,exp_date);
pstatement.setString(6,quantity);



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



%>

  </form>

</body>
</html>