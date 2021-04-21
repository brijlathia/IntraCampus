<%-- 
    Document   : home
    Created on : Feb 1, 2018, 11:02:17 PM
    Author     : pathik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP by Patrick</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p align="center"><%= "Hello World by patrick" %></p>
        <%
            try{
                session.setAttribute("userid", null);
                session.invalidate();
                //Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12219187","sql12219187","hSyAkCzXGu");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12219187","sql12219187","hSyAkCzXGu");
                Statement s=con.createStatement();
                s.execute("select * from temp");
                ResultSet rs=s.getResultSet();
                out.println("<table border='1' align='center'><tr><td>#</td><td>Name</td><td>Age</td></tr>");
                while(rs.next()){
                    out.println("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getInt(3)+"</td></tr>");
                }
            }
            catch(Exception e){
                out.println(e);
            }
        %>
    </body>
</html>
