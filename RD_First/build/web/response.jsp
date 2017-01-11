<%-- 
    Document   : response
    Created on : Jan 11, 2017, 12:59:12 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Oit!!!</title>
    </head>
    <body>
        <jsp:useBean id="mybean" scope="session" class="rd.first.NameHandler" />
        <jsp:setProperty name="mybean" property="name" />
        <h1>Hello, <jsp:getProperty name="mybean" property="name" /> !</h1>
    </body>
</html>
