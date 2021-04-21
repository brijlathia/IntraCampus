<%-- 
    Document   : registration
    Created on : Feb 5, 2018, 11:22:08 PM
    Author     : pathik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
    try{
        
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String uname = request.getParameter("uname");
        String email = request.getParameter("email");
        double mob = Double.parseDouble(request.getParameter("mob"));
        String pass = request.getParameter("pass");
        String sque = request.getParameter("sque");
        String sans = request.getParameter("sans");
        String utype = request.getParameter("utype");
        
        Class.forName("com.mysql.jdbc.Driver");
        //Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12219187","sql12219187","hSyAkCzXGu");
        //Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12219187","sql12219187","hSyAkCzXGu");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:8889/IntraCampus","root","root");
        Statement st=con.createStatement();
        int i = st.executeUpdate("insert into `IntraCampus`.`ic_signup`(first_name,last_name,username,email,mobile_no,pass,seq_id,sans,utype) values ('" + fname + "','" + lname + "','" + uname + "','" + email + "','" + mob + "','"+ pass +"','"+sque+"','"+sans+"','"+utype+"')");
        if (i > 0) {
            //session.setAttribute("userid", user);
            response.sendRedirect("index.jsp?msg=1");
           // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
        } else {
            response.sendRedirect("index.jsp?msg=2");
        }
    }
    catch(Exception e){
        out.println(e);
    }
%>