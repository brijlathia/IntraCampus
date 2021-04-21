<%-- 
    Document   : add_p
    Created on : Mar 13, 2018, 2:05:16 AM
    Author     : pathik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Participants to meeting</title>
    </head>
    <body>
        <h1 align='center'>Add Participants</h1>
        <%
            String uid=session.getAttribute("userid").toString();
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:8889/IntraCampus","root","root");
            Statement s=con.createStatement();
            ResultSet rs1;
            rs1=s.executeQuery("select uid from ic_signup where email='"+uid+"'");
            rs1.next();
            int id=rs1.getInt("uid");
            //out.println(id);
            
            Statement st=con.createStatement();
            ResultSet rs;
            
            rs = st.executeQuery("select m_id,motto,uid from meet where uid="+id);
            out.print("<form method='post' action='addp.jsp'>");
            out.print("<table align='center' border='1'>");
            out.print("<tr><td>Select Meeting</td>");
            out.println("<td><select name='meet'>");
            while(rs.next()){
                out.println("<option value='"+rs.getInt(1)+"'>"+rs.getString(2) +"</option>");
            }
            out.print("</select></td></tr>");
            out.print("<tr><td>Select Employee</td><td><select name='emp'>");
            
            Statement st2=con.createStatement();
            ResultSet r3;
            r3=st2.executeQuery("select * from ic_signup where utype='EMP'");
            while(r3.next()){
                out.print("<option value='"+r3.getInt("uid")+"'>"+r3.getString("first_name")+" "+r3.getString("last_name")+"</option>");
            }
            out.print("</select></td></tr>");
            out.print("<tr><td colspan='2' align='center'><input type='submit' name='submit'></td></tr>");
            out.print("</table></form>");
        %>
    </body>
</html>
