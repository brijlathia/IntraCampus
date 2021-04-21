<%-- 
    Document   : a_meet
    Created on : Mar 12, 2018, 5:08:03 AM
    Author     : pathik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
    try{    
        String motto = request.getParameter("motto");
        String desc = request.getParameter("desc");
        String date = request.getParameter("date");
        String hr = request.getParameter("hr");
        String mn = request.getParameter("mn");
        String du = request.getParameter("du");
        
        Class.forName("com.mysql.jdbc.Driver");
        //Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12219187","sql12219187","hSyAkCzXGu");
        //Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12219187","sql12219187","hSyAkCzXGu");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:8889/IntraCampus","root","root");
        Statement st=con.createStatement();
        String uid=session.getAttribute("userid").toString();
        int i = st.executeUpdate("insert into meet(motto,info,dt,hr,mn,du,uid) values ('" + motto + "','" + desc + "','" + date + "','" + hr + "','" + mn + "','"+ du +"','"+ uid +"')");
        if (i > 0) {
            //session.setAttribute("userid", user);
            out.print("<script>");
            out.print("alert('Meeting Created Successfully');");
            out.print("window.top.location='add_meet.jsp';");
            out.print("</script>");
           // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
        } else {
            response.sendRedirect("add_p.jsp");
        }
    }
    catch(Exception e){
        out.println(e);
    }
%>