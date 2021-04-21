<%-- 
    Document   : addp
    Created on : Mar 13, 2018, 3:12:37 AM
    Author     : pathik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            String meet = request.getParameter("meet");    
            String emp = request.getParameter("emp");
            
            String uid=session.getAttribute("userid").toString();
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:8889/IntraCampus","root","root");
            Statement s=con.createStatement();
            
            s.execute("insert into participants (m_id,uid) values ('"+meet+"','"+emp+"')");
            response.sendRedirect("viewp.jsp");
        %>
    </body>
</html>
