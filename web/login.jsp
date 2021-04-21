<%-- 
    Document   : login
    Created on : Feb 5, 2018, 11:41:23 PM
    Author     : pathik
--%>

<%@ page import ="java.sql.*" %>
<%
    String email = request.getParameter("email");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    //Connection con=DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12219187","sql12219187","hSyAkCzXGu");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:8889/IntraCampus","root","root");
    Statement st=con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from ic_signup where email='" + email + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", email);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("index.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>