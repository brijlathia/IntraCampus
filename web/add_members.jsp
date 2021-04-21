<%-- 
    Document   : add_members
    Created on : Mar 12, 2018, 10:07:56 AM
    Author     : pathik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int flag=0;
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")){
    flag=0;
    }
    else{
        flag=1;
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Participants to Meeting</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
