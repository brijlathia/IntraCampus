<%-- 
    Document   : viewp
    Created on : Mar 13, 2018, 3:17:34 AM
    Author     : pathik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Viewing Participants</title>
    </head>
    <body>
       <%
            String uid=session.getAttribute("userid").toString();
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:8889/IntraCampus","root","root");
            ResultSet rs1;
            Statement s1=con.createStatement();
            rs1=s1.executeQuery("select * from ic_signup where email='"+uid+"'");
            rs1.next();
            int id=rs1.getInt("uid");
            
            
            ResultSet rs;
            Statement s=con.createStatement();
            rs=s.executeQuery("select m.m_id,m.motto,m.info,m.hr,m.mn,m.du,m.uid,p.m_id,p.uid,u.first_name from meet m,participants p,ic_signup u where p.m_id=m.m_id && u.uid=p.uid && m.uid="+id);
            out.print("<table align='center' border='1'><tr><td>#</td><td>Participants</td></tr>");
            int i=0;
            while(rs.next()){
                i++;
                out.println("<tr><td>"+i+"</td><td>"+rs.getString("first_name") +"</td></tr>");
            }
       %>
    </body>
</html>
