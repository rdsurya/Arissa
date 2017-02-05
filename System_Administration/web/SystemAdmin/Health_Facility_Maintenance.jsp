<%-- 
    Document   : Health_Facility_Maintenance
    Created on : Feb 3, 2017, 3:58:28 PM
    Author     : user
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="dBConn.Conn"%>
<%@page import="Config.Config"%>
<%@page import="main.RMIConnector"%>
<%@include file="validateSession.jsp" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- header -->
    <div w3-include-html="libraries/header.html"></div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="bootstrap-3.3.6-dist/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="css/table.css">




    <!-- header -->
</head>

<body>
    <!-- menu top -->
    <div w3-include-html="libraries/topMenus.jsp"></div>
    <!-- menu top -->

    <div class="container-fluid">
        <div class="row">       
            <!-- menu side -->		
            <div w3-include-html="libraries/sideMenus.html"></div>
            <!-- menu side -->	

            <!-- main -->	

            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" style="background: #f2f4f8;">
                <div class="row">
                    <div class="col-md-12">
                        <div class="thumbnail">

                            <div class="tabbable-panel">
                                <h1>Health Facility Maintenance</h1>
                                <div class="tabbable-line">
                                    <ul class="nav nav-tabs ">
                                        <li class="active">
                                            <a href="#HFM_tab1" data-toggle="tab">
                                                DISCIPLINE </a>
                                        </li>
                                        <li>
                                            <a href="#HFM_tab2" data-toggle="tab">
                                                SUBDISCIPLINE </a>
                                        </li>

                                    </ul>
                                    <!-- tab content -->
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="HFM_tab1">

                                            <div id="discipline">

                                                <div id="disciplineMain">
                                                </div>
                                                <div id="disciplineTable">
                                                </div>

                                            </div>

                                        </div>
                                        <div class="tab-pane" id="HFM_tab2">

                                            <div id="subdiscipline">
                                                <div id="subdisciplineMain">
                                                </div>
                                                <div id="subdisciplineTable">
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>

                            <!-- Tab Menu -->




                        </div>
                    </div>
                </div>

            </div>

        </div>
        <!-- main -->		

    </div>





    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="http://www.w3schools.com/lib/w3data.js"></script>
    <script src="bootstrap-3.3.6-dist/js/jquery.dataTables.min.js"></script>



    <script>
        w3IncludeHTML();

        $(document).ready(function () {

            $("#disciplineMain").load("discipline_main.jsp");
            $("#disciplineTable").load("discipline_table.jsp");

            $("#subdisciplineMain").load("subdiscipline_main.jsp");
            $("#subdisciplineTable").load("subdiscipline_table.jsp");


        });

    </script>

</body>
</html>
