<%-- 
    Document   : reg
    Created on : Feb 4, 2018, 3:25:15 PM
    Author     : pathik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>IntraCampus</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="default.css" rel="stylesheet" type="text/css" />
<style>
    #page{
        width: 475px !important;
    }
</style>
</head>
<body>
<div id="menu">
  <ul>
    <li><a href="index.jsp">Home</a></li>
    <li><a href="#">Links</a></li>
    <li><a href="#">About</a></li>
    <li><a href="#">Contact</a></li>
    <li class="active"><a href="reg.jsp">Register</a></li>
  </ul>
</div>
<!-- end #menu -->
<div id="page">
  <div id="content">
    <div class="post boxed">
      <h2 class="title">Please register!</h2>
      <div class="story">
        <form method="post" action="registration.jsp">
            <table class="patrick" align="center">
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="fname" placeholder="First Name"></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lname" placeholder="Last Name"></td>
                </tr>
                <tr>
                    <td>User Name</td>
                    <td><input type="text" name="uname" placeholder="Username"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" placeholder="Email ID"></td>
                </tr>
                <tr>
                    <td>Mobile</td>
                    <td><input type="tel" name="mob" placeholder="Mobile Number"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pass" placeholder="Password"></td>
                </tr>
                <tr>
                    <td>Security Question</td>
                    <td>
                        <select name="sque">
                            <%
                                try{
                                    Class.forName("com.mysql.jdbc.Driver");
                                    //Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12219187","sql12219187","hSyAkCzXGu");
                                    //Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12219187","sql12219187","hSyAkCzXGu");
                                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:8889/IntraCampus","root","root");
                                    Statement s=con.createStatement();
                                    s.execute("select * from ic_seq_que");
                                    ResultSet rs=s.getResultSet();
                                    while(rs.next()){
                                        out.println("<option value='"+rs.getInt("seq_id")+"'>"+rs.getString("que")+"</option>");
                                    }
                                }
                                catch(Exception e){
                                    out.println(e);
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Your Answer</td>
                    <td><input type="text" name="sans" placeholder="Your Answer"></td>
                </tr>
                <tr>
                    <td>Designation</td>
                    <td>
                        <label for="emp">Employee</label><input type="radio" name="utype" value="EMP" id="emp"><label for="tl">Team Leader</label><input type="radio" name="utype" value="TL" id="tl">
                    </td>
                </tr>
            </table>
      </div>
      <div class="meta" align="center">
          <input type="submit" name="register" value="register"/>
      </form>
      </div>
    </div>
  </div>
  <!-- end #content -->
  <div style="clear: both;">&nbsp;</div>
</div>
<!-- end #page -->
<div id="footer">
  <p id="legal">Copyright &copy; IntraCampus. Designed by <a href="#">...</a></p>
  <p id="links"> <a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a> | <a href="#"><abbr title="eXtensible HyperText Markup Language">XHTML</abbr></a> | <a href="http://jigsaw.w3.org/css-validator/check/referer"><abbr title="Cascading Style Sheets">CSS</abbr></a></p>
</div>
<!-- end #footer -->
</body>
</html>
