package org.apache.jsp.SystemAdmin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class discipline_005fmain_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!-- Add Part Start -->\n");
      out.write("<!-- Add Button Start -->\n");
      out.write("<h4 style=\"padding-top: 30px;padding-bottom: 35px; font-weight: bold\">\n");
      out.write("    DISCIPLINE MANAGEMENT\n");
      out.write("    <span class=\"pull-right\">\n");
      out.write("        <button class=\"btn btn-success\" data-status=\"pagado\" data-toggle=\"modal\" data-id=\"1\" data-target=\"#DM_detail\" style=\" padding-right: 10px;padding-left: 10px;color: white;\"><a data-toggle=\"tooltip\" data-placement=\"top\" title=\"Add Items\" id=\"test\"><i class=\" fa fa-plus\" style=\" padding-right: 10px;padding-left: 10px;color: white;\"></i></a>ADD Discipline</button>\n");
      out.write("    </span>\n");
      out.write("</h4>\n");
      out.write("<!-- Add Button End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Add Modal Start -->\n");
      out.write("<div class=\"modal fade\" id=\"DM_detail\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"modalLabel\" aria-hidden=\"true\">\n");
      out.write("    <div class=\"modal-dialog\">\n");
      out.write("        <div class=\"modal-content\">\n");
      out.write("            <div class=\"modal-header\">\n");
      out.write("                <button type=\"button\" class=\"close\" data-dismiss=\"modal\"><i class=\"fa fa-times fa-lg\"></i></button>\n");
      out.write("                <h3 class=\"modal-title\" id=\"lineModalLabel\">Add New Discipline</h3>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"modal-body\">\n");
      out.write("\n");
      out.write("                <!-- content goes here -->\n");
      out.write("                <form class=\"form-horizontal\" id=\"addForm\">\n");
      out.write("\n");
      out.write("                    <!-- Text input-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-md-4 control-label\" for=\"textinput\">Discipline Name</label>\n");
      out.write("                        <div class=\"col-md-8\">\n");
      out.write("                            <input id=\"disciplineName\"  type=\"text\" placeholder=\"Name required\" class=\"form-control input-md\" maxlength=\"100\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!-- Text input-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-md-4 control-label\" for=\"textinput\">Discipline Code</label>\n");
      out.write("                        <div class=\"col-md-8\">\n");
      out.write("                            <input id=\"disciplineCode\"  type=\"text\" placeholder=\"Code required\" class=\"form-control input-md\" maxlength=\"30\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                     <!-- Text input-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-md-4 control-label\" for=\"textinput\">Group Code</label>\n");
      out.write("                        <div class=\"col-md-8\">\n");
      out.write("                            <input id=\"groupCode\"  type=\"text\" placeholder=\"Optional\" class=\"form-control input-md\" maxlength=\"30\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                     \n");
      out.write("                     <!-- Text input-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-md-4 control-label\" for=\"textinput\">Category Code</label>\n");
      out.write("                        <div class=\"col-md-8\">\n");
      out.write("                            <input id=\"categoryCode\"  type=\"text\" placeholder=\"Optional\" class=\"form-control input-md\" maxlength=\"30\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                     \n");
      out.write("                     <!-- Text input-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-md-4 control-label\" for=\"textinput\">Specialty Code</label>\n");
      out.write("                        <div class=\"col-md-8\">\n");
      out.write("                            <input id=\"specialtyCode\"  type=\"text\" placeholder=\"Optional\" class=\"form-control input-md\" maxlength=\"30\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    \n");
      out.write("                     <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-md-4 control-label\" for=\"textinput\">Status</label>\n");
      out.write("                        <div class=\"col-md-8\">\n");
      out.write("                            <select class=\"form-control\" name=\"tstatus\" id=\"DM_status\">\n");
      out.write("                                <option  value=\"1\" >Active</option>\n");
      out.write("                                <option  value=\"0\" >Inactive</option>\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </form>\n");
      out.write("                <!-- content goes here -->\n");
      out.write("            </div>\n");
      out.write("            <div class=\"modal-footer\">\n");
      out.write("                <div class=\"btn-group btn-group-justified\" role=\"group\" aria-label=\"group button\">\n");
      out.write("                    <div class=\"btn-group\" role=\"group\">\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-success btn-block btn-lg\" role=\"button\" id=\"btnAdd\">Add</button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"btn-group\" role=\"group\">\n");
      out.write("                        <button type=\"reset\" id=\"DM_btnReset\" class=\"btn btn-default btn-block btn-lg\" data-dismiss=\"modal\" role=\"button\" >Cancel</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!-- Add Modal End -->                         \n");
      out.write("<!-- Add Part End -->\n");
      out.write("\n");
      out.write("\n");
      out.write(" <script>\n");
      out.write("\n");
      out.write("        w3IncludeHTML();\n");
      out.write("\n");
      out.write("        $(document).ready(function () {\n");
      out.write("            \n");
      out.write("            function DM_reset() {\n");
      out.write("                document.getElementById(\"disciplineName\").value = \"\";\n");
      out.write("                document.getElementById(\"disciplineCode\").value = \"\";\n");
      out.write("                document.getElementById(\"groupCode\").value = \"\";\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("\n");
      out.write("            $('#DM_btnReset').on('click', function () {\n");
      out.write("                DM_reset();\n");
      out.write("            });\n");
      out.write("\n");
      out.write("            $('#btnAdd').on('click', function () {\n");
      out.write("                               \n");
      out.write("                var disciplineName = $('#disciplineName').val();\n");
      out.write("                var disciplineCode = $('#disciplineCode').val();\n");
      out.write("                var groupCode = $('#groupCode').val();\n");
      out.write("                var status = $('input[name=\"status\"]:checked').val();\n");
      out.write("\n");
      out.write("                if (disciplineName === \"\") {\n");
      out.write("                    alert(\"Fill in the Master Code\");\n");
      out.write("                    $('#disciplineName').focus();\n");
      out.write("                    \n");
      out.write("                } else if (disciplineCode === \"\") {\n");
      out.write("                    alert(\"Complete The Fields\");\n");
      out.write("                    $('#disciplineCode').focus();\n");
      out.write("                    \n");
      out.write("                } else if (status !== \"1\" && status !== \"0\") {\n");
      out.write("                    alert(\"Select Any Status\");\n");
      out.write("                } else {\n");
      out.write("\n");
      out.write("                    var data = {\n");
      out.write("                        disciplineName : disciplineName,\n");
      out.write("                        disciplineCode : disciplineCode,\n");
      out.write("                        groupCode : groupCode,\n");
      out.write("                        status: status\n");
      out.write("                    };\n");
      out.write("\n");
      out.write("                    $.ajax({\n");
      out.write("                        url: \"master_lookup_insert.jsp\",\n");
      out.write("                        type: \"post\",\n");
      out.write("                        data: data,\n");
      out.write("                        timeout: 10000,\n");
      out.write("                        success: function (datas) {\n");
      out.write("\n");
      out.write("                            if (datas.trim() === 'Success') {\n");
      out.write("\n");
      out.write("                                $('#masterTable').load('master_lookup_table_1.jsp');\n");
      out.write("                                $('#DM_detail').modal('hide');\n");
      out.write("                                alert(\"Insertion Success\");\n");
      out.write("                                reset();\n");
      out.write("                                \n");
      out.write("                            } else if (datas.trim() === 'Failed') {\n");
      out.write("                                \n");
      out.write("                                alert(\"Insertion failed!\");\n");
      out.write("                                //$('#DM_detail').modal('hide');\n");
      out.write("                                reset();\n");
      out.write("                                \n");
      out.write("                            } else{\n");
      out.write("                                alert(datas.trim());\n");
      out.write("                                document.getElementById(\"disciplineName\").value = \"\";\n");
      out.write("                                $('#disciplineName').focus();\n");
      out.write("                            }\n");
      out.write("                            \n");
      out.write("                        },\n");
      out.write("                        error: function (err) {\n");
      out.write("                            console.log(\"Ajax Is Not Success\");\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                    });\n");
      out.write("                }\n");
      out.write("\n");
      out.write("            });\n");
      out.write("\n");
      out.write("\n");
      out.write("        });\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </script>\n");
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
