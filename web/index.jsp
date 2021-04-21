<%-- 
    Document   : index
    Created on : Feb 5, 2018, 11:36:45 PM
    Author     : pathik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<%
    if(request.getParameter("logout")!=null){
        String s=request.getParameter("logout");
        if(s.equals("1")){
              session.setAttribute("userid", null);
//            session.invalidate();
            response.sendRedirect("index.jsp?msg=3");
        }
    }
    try{
        String msg=request.getParameter("msg");
        if(msg.equals("1")){
            out.println("<script>alert('You registered successfully! Please login to continue!');</script>");
        }
        else if(msg.equals("2")){
            out.println("<script>alert('Registration is not done ! Please try again after some time');</script>");
        }
        else if(msg.equals("3")){
            out.println("<script>alert('You logged out !');</script>");
        }
//        String logout=request.getParameter("logout");
//        if(logout.equals("1")){
//            session.setAttribute("userid", null);
//            session.invalidate();
//            response.sendRedirect("index.jsp?msg=3");
////            out.println("<script>window.top.location='www.google.com';</script>");
//        }
    }
    catch(Exception e){
    }
    int flag=0;
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")){
        flag=0;
    }
    else{
        flag=1;
    }
%>
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
    <li class="active"><a href="index.jsp">Home</a></li>
    <li><a href="#">Links</a></li>
    <li><a href="#">About</a></li>
    <li><a href="#">Contact</a></li>
    <%
        if(flag==0){
            out.println("<li><a href='reg.jsp'>Register</a></li>");
        }
    %>
    <%
        if(flag==1){
            out.println("<li><a href='index.jsp?logout=1'>Logout</a></li>");
        }
    %>
  </ul>
</div>
<!-- end #menu -->
<div id="page">
  <div id="content">
        <%
             if (flag==0){
//                  out.println("NO");
              
        %>
    <div class="post boxed">
      <h2 class="title">Login to begin!</h2>
      <div class="story">
        <form method="post" action="login.jsp">
            <table class="patrick" align="center">
                <tr>
                    <td>Email ID</td>
                    <td><input type="email" name="email" placeholder="Email ID"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pass" placeholder="Password"></td>
                </tr>
            </table>
      </div>
      <div class="meta" align="center">
          <input type="submit" name="register" value="Login"/>
          <input type="reset" name="reset">
      </form>
      </div>
    </div>
    <%
            }
if(flag==1){
        %>
        
        
      <div class="post boxed">
          <h2 class="title"><% out.println(session.getAttribute("userid")); %></h2>
      <div class="story">
          <p>You have no messages now!</p>
      </div>
      <div class="meta" align="center">
          <p>Try again in some time!</p>
        <%
            }
        %>
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
