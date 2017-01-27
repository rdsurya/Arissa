<%-- 
    Document   : detail_lookup_insert
    Created on : Jan 26, 2017, 12:08:36 PM
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
    String detailDesc = request.getParameter("detailName");
    String status = request.getParameter("status");
    String userID = (String) session.getAttribute("USER_ID");

    String sqlCheck = "Select master_reference_code FROM adm_lookup_detail WHERE master_reference_code = '" + masterCode + "' AND detail_reference_code = '" + detailCode + "' LIMIT 1 ";

    ArrayList<ArrayList<String>> duplicate = Conn.getData(sqlCheck);

    if (duplicate.size() > 0) {
        out.print("Duplicate combination of Master Code and Detail Code. Please use different combination.");

    } else {

        RMIConnector rmic = new RMIConnector();

        String sqlInsert = "INSERT INTO adm_lookup_detail(master_reference_code, detail_reference_code, description, status, created_by, created_date)"
                + " VALUES('" + masterCode + "', '" + detailCode + "', '" + detailDesc + "', '" + status + "', '" + userID + "', now())";

        boolean isInsert = rmic.setQuerySQL(Conn.HOST, Conn.PORT, sqlInsert);

        if (isInsert == true) {
            out.print("Success");
        } else {
            out.print("Failed");
        }

    }


%>