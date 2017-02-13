package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.sun.java.swing.plaf.windows.resources.windows;
import java.util.ArrayList;
import java.sql.*;
import dBConn.Conn;
import main.RMIConnector;

public final class login_005fprocess1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    final int NO_USER = 0;
    final int WRONG_PASSWORD = 1;
    final int LOGIN = 2;
    int status = 0;
    
    Conn conn = new Conn();
    
    String user_id = request.getParameter("userID");
    String password = request.getParameter("password");
      
    
    
    String sql2 = "SELECT * FROM adm_user WHERE USER_ID = '"+user_id+"' ";
    ArrayList<ArrayList<String>> dataStaff = conn.getData(sql2);

//    out.print(dataPatient.size());
//    out.print(dataStaff.size());
    
    
    if(dataStaff.size() > 0)                                                   // login Staff (admin, nurse, doctor)
    {
        for(int i=0; i<dataStaff.size(); i++)
        {    
            
            if(dataStaff.get(i).get(2).equals(password))
            {
                session.setAttribute("USER_ID", user_id);
                String hfc = dataStaff.get(0).get(1) ;
                session.setAttribute("HEALTH_FACILITY_CODE", hfc);
                String name = dataStaff.get(0).get(3) ;
                session.setAttribute("USER_NAME", name);
                String title = dataStaff.get(0).get(4) ;
                session.setAttribute("OCCUPATION_CODE", title);

                status = LOGIN;
                //response.sendRedirect("facility.jsp");
            }
            else
            {
               status = WRONG_PASSWORD;
            }
            
           
        }
    }
    else
    {
       status = NO_USER;
    }
    
    out.print(status);
    

      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
