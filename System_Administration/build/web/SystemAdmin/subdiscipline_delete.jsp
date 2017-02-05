<%-- 
    Document   : subdiscipline_delete
    Created on : Feb 6, 2017, 12:16:49 AM
    Author     : user
--%>

<%@page import="Config.Config"%>
<%@page import="dBConn.Conn"%>
<%@page import="main.RMIConnector"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    Conn conn = new Conn();
    
    String disciplineCode = request.getParameter("disciplineCode");
    String subdisciplineCode = request.getParameter("subdisciplineCode");

    RMIConnector rmic = new RMIConnector();
    String sql = "DELETE FROM adm_subdiscipline WHERE discipline_cd = '" + disciplineCode + "' AND subdiscipline_cd = '"+subdisciplineCode+"' ";

    boolean status = rmic.setQuerySQL(conn.HOST, conn.PORT, sql);

    if (status == true) {
        out.print("Success");
    } else {
        out.print("Failed");
    }
%>
