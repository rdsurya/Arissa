<%-- 
    Document   : detail_lookup_update
    Created on : Jan 26, 2017, 12:30:28 PM
    Author     : user
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Config.Config"%>
<%@page import="dBConn.Conn"%>
<%@page import="main.RMIConnector"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%           
    
    String masterCode = request.getParameter("masterCode");
    String detailCode = request.getParameter("detailCode");
    String detailDesc = request.getParameter("detailDesc");
    String status = request.getParameter("status");
   

    RMIConnector rmic = new RMIConnector();

    String sqlInsert = "UPDATE adm_lookup_detail set description = '"+detailDesc+"', status = '"+status+"' "+
                    "WHERE master_reference_code = '"+masterCode+"' AND detail_reference_code = '"+detailCode+"'";
    
   //out.print(sqlInsert);
    
    boolean isInsert = rmic.setQuerySQL(Conn.HOST, Conn.PORT, sqlInsert);
    
    if (isInsert == true) {
        out.print("Success");
    } else {
        out.print("Failed");
    }

%>