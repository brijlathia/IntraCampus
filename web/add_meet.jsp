<%-- 
    Document   : add_meet
    Created on : Mar 12, 2018, 4:44:34 AM
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
      <h2 class="title">Plan a meet!</h2>
      <div class="story">
        <form method="post" action="a_meet.jsp">
            <table class="patrick" align="center">
                <tr>
                    <td>Motto</td>
                    <td><input type="text" name="motto" placeholder="brief of project 93"></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td><input type="text" name="desc" placeholder="discussion on all modules"></td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td><input type="date" name="date" placeholder="dd/mm/yyyy"></td>
                </tr>
                <tr>
                    <td>Time</td>
                    <td><input type="number" name="hr" min="9" max="18" placeholder="09" style="width:85px;"><input type="number" name="mn" min="0" max="59" placeholder="00" style="width:85px;">
                    </td>
                </tr>
                <tr>
                    <td>Expected Duration (hrs)</td>
                    <td><input type="number" name="du" placeholder="1.5" min="0.1" max="8"></td>
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
