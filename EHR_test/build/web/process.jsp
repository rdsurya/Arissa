<%-- 
    Document   : process
    Created on : Jan 19, 2017, 10:57:32 AM
    Author     : user
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="dBConn.Conn"%>
<%@page import="main.RMIConnector"%>

<%
    Connection con = null;
    PreparedStatement ps = null;

    /* try{
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://10.73.32.200:3306/servercis","root","qwerty");
    }catch(Exception e){
        out.print(e);
    }*/
    String comment = request.getParameter("comment");

    RMIConnector rmic = new RMIConnector();

    String sqlInsert = "Insert into ehr_central_prototype(comment) values('" + comment + "')";

    // ps = con.prepareStatement(sqlInsert);
    // ps.setString(1, comment);
    // ps.executeLargeUpdate();
    //Statement st = con.createStatement();
    //st.executeUpdate(sqlInsert); 
    //con.close();
    boolean isInsert = rmic.setQuerySQL(Conn.HOST, Conn.PORT, sqlInsert);
    if (isInsert) {

        %><script language='javascript'>
            alert("Comment inserted successfully");
            window.location = 'index.html';
        </script> <%                    } 
    else {
                                out.print("Comment failed!");
        %><script language='javascript'>
            alert("Comment failed!");
            window.location = 'index.html';
        </script> <%
                        }
%>
