package org.apache.jsp.SystemAdmin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.sql.*;
import dBConn.Conn;
import main.RMIConnector;

public final class detail_005flookup_005ftable_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<table  id=\"THE_detailTable\"  class=\"table table-striped table-bordered\" cellspacing=\"0\" width=\"100%\">\n");
      out.write("    <thead>\n");
      out.write("    <th>Master Code</th>\n");
      out.write("    <th>Detail Code</th>\n");
      out.write("    <th>Description</th>\n");
      out.write("    <th>Status</th>\n");
      out.write("    <th>Update</th>\n");
      out.write("    <th>Delete</th>\n");
      out.write("</thead>\n");
      out.write("<tbody>\n");
      out.write("\n");
      out.write("    ");

        String sql = " SELECT master_reference_code, detail_reference_code, description, IFNULL(status, 'N/A')  FROM adm_lookup_detail ";
        ArrayList<ArrayList<String>> dataDetail = Conn.getData(sql);

        int size = dataDetail.size();
        for (int i = 0; i < size; i++) {
    
      out.write("\n");
      out.write("\n");
      out.write("    <tr>\n");
      out.write("        <td>");
      out.print( dataDetail.get(i).get(0));
      out.write("</td>\n");
      out.write("        <td>");
      out.print( dataDetail.get(i).get(1));
      out.write("</td>\n");
      out.write("        <td>");
      out.print( dataDetail.get(i).get(2));
      out.write("</td>\n");
      out.write("        <td>");
      out.print( dataDetail.get(i).get(3));
      out.write("</td>\n");
      out.write("\n");
      out.write("        <td>\n");
      out.write("\n");
      out.write("            <!-- Update Part Start -->\n");
      out.write("            <a data-toggle=\"modal\" data-target=\"#DLT_detail2_\"><i class=\"fa fa-pencil-square-o\" aria-hidden=\"true\" style=\"display: inline-block;color: #337ab7;\"></i></a>\n");
      out.write("        </td>\n");
      out.write("        <td>\n");
      out.write("            <!-- Delete Button Start -->\n");
      out.write("            <a id=\"DLT_deleteButton_\" class=\"testing\"><i class=\"fa fa-times\" aria-hidden=\"true\" style=\"display: inline-block;color: #d9534f;\" ></i></a>\n");
      out.write("            <!-- Delete Button End -->\n");
      out.write("        </td>\n");
      out.write("    </tr>\n");
      out.write("\n");
      out.write("    ");

        }
    
      out.write("\n");
      out.write("\n");
      out.write("</tbody>\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("<!-- Modal Update -->\n");
      out.write("<div class=\"modal fade\" id=\"DLT_detail2_\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"modalLabel\" aria-hidden=\"true\">\n");
      out.write("    <div class=\"modal-dialog\">\n");
      out.write("        <div class=\"modal-content\">\n");
      out.write("            <div class=\"modal-header\">\n");
      out.write("                <button type=\"button\" class=\"close\" data-dismiss=\"modal\"><i class=\"fa fa-times fa-lg\"></i></button>\n");
      out.write("                <h3 class=\"modal-title\" id=\"lineModalLabel\">Update Lookup Detail</h3>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"modal-body\">\n");
      out.write("\n");
      out.write("                <!-- content goes here -->\n");
      out.write("                <form class=\"form-horizontal\">\n");
      out.write("\n");
      out.write("                    <!-- Text input-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-md-4 control-label\" for=\"textinput\">Master Code</label>\n");
      out.write("                        <div class=\"col-md-8\">\n");
      out.write("                            <input id=\"DLT_masterCode_\" name=\"textinput\" type=\"text\" placeholder=\"ATC Code\" class=\"form-control input-md\" readonly>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!-- Text input-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-md-4 control-label\" for=\"textinput\">Detail Code</label>\n");
      out.write("                        <div class=\"col-md-8\">\n");
      out.write("                            <input id=\"detailCode_\" name=\"textinput\" type=\"text\" placeholder=\"Detail Code\" class=\"form-control input-md\" readonly>\n");
      out.write("                        </div>\n");
      out.write("                    </div>    \n");
      out.write("\n");
      out.write("                    <!-- Text input-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-md-4 control-label\" for=\"textinput\">Description</label>\n");
      out.write("                        <div class=\"col-md-8\">\n");
      out.write("                            <textarea id=\"detailDesc_\" class=\"form-control\" rows=\"3\"  ></textarea>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <!-- Text input-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label class=\"col-md-4 control-label\" for=\"textinput\">Status</label>\n");
      out.write("                        <div class=\"col-md-8\">\n");
      out.write("                            <select class=\"form-control\" name=\"tstatus\" id=\"DLT_status_\">\n");
      out.write("                                <option value=\"1\" >Active</option>\n");
      out.write("                                <option value=\"0\" >Inactive</option>\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("                <!-- content goes here -->\n");
      out.write("            </div>\n");
      out.write("            <div class=\"modal-footer\">\n");
      out.write("                <div class=\"btn-group btn-group-justified\" role=\"group\" aria-label=\"group button\">\n");
      out.write("                    <div class=\"btn-group\" role=\"group\">\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-success btn-block btn-lg\" role=\"button\" id=\"DLT_btn_update_\">Update</button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"btn-group\" role=\"group\">\n");
      out.write("                        <button type=\"reset\" id=\"DLT_updateReset\" class=\"btn btn-default btn-block btn-lg\" data-dismiss=\"modal\" role=\"button\">Cancel</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<!-- Modal Update -->\n");
      out.write("<!-- Update Part End -->\n");
      out.write("\n");
      out.write("<!-- Delete Part Start -->\n");
      out.write("\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" charset=\"utf-8\">\n");
      out.write("\n");
      out.write("//    $(document).ready(function () {\n");
      out.write("//        $(\"#DLT_deleteButton_\").click(function () {\n");
      out.write("//\n");
      out.write("//            var conf = confirm('Are you sure want to delete?');\n");
      out.write("//            if (conf) {\n");
      out.write("//\n");
      out.write("//                var data = {\n");
      out.write("//                    detailCode: \"\",\n");
      out.write("//                    masterCode: \"\"\n");
      out.write("//                };\n");
      out.write("//\n");
      out.write("//                $.ajax({\n");
      out.write("//                    url: \"detail_lookup_delete.jsp\",\n");
      out.write("//                    type: \"post\",\n");
      out.write("//                    data: data,\n");
      out.write("//                    timeout: 10000, // 10 seconds\n");
      out.write("//                    success: function (datas) {\n");
      out.write("//\n");
      out.write("//                        if (datas.trim() === 'Success') {\n");
      out.write("//                            $('#detailTable').load('detail_lookup_table.jsp');\n");
      out.write("//                            alert(\"Delete Success\");\n");
      out.write("//                        } else if (datas.trim() === 'Failed') {\n");
      out.write("//                            alert(\"Delete failed!\");\n");
      out.write("//                        }\n");
      out.write("//\n");
      out.write("//                    },\n");
      out.write("//                    error: function (err) {\n");
      out.write("//                        alert(\"Error! Deletion failed!!\");\n");
      out.write("//                    }\n");
      out.write("//\n");
      out.write("//                });\n");
      out.write("//\n");
      out.write("//            }\n");
      out.write("//\n");
      out.write("//        });\n");
      out.write("//\n");
      out.write("//        $(\"#DLT_btn_update_\").click(function () {\n");
      out.write("//\n");
      out.write("//            var masterCode = $(\"#DLT_masterCode_\").val();\n");
      out.write("//            var detailCode = $(\"#detailCode_\").val();\n");
      out.write("//            var detailDesc = $(\"#detailDesc_\").val();\n");
      out.write("//            var status = $(\"#DLT_status_\").val();\n");
      out.write("//\n");
      out.write("//            var data = {\n");
      out.write("//                masterCode: masterCode,\n");
      out.write("//                detailCode: detailCode,\n");
      out.write("//                detailDesc: detailDesc,\n");
      out.write("//                status: status\n");
      out.write("//            };\n");
      out.write("//\n");
      out.write("//            $.ajax({\n");
      out.write("//                url: \"detail_lookup_update.jsp\",\n");
      out.write("//                type: \"post\",\n");
      out.write("//                data: data,\n");
      out.write("//                timeout: 10000,\n");
      out.write("//                success: function (datas) {\n");
      out.write("//                    console.log(datas);\n");
      out.write("//                    if (datas.trim() === 'Success') {\n");
      out.write("//                        $('#detailTable').load('detail_lookup_table.jsp');\n");
      out.write("//                        $(\".modal-backdrop\").hide();\n");
      out.write("//                        alert(\"Update Success\");\n");
      out.write("//                    } else if (datas.trim() === 'Failed') {\n");
      out.write("//                        alert(\"Update failed!\");\n");
      out.write("//\n");
      out.write("//                    }\n");
      out.write("//                },\n");
      out.write("//                error: function (err) {\n");
      out.write("//                    alert(\"Error update!\");\n");
      out.write("//                }\n");
      out.write("//\n");
      out.write("//            });\n");
      out.write("//        });\n");
      out.write("//    });\n");
      out.write("</script>  \n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Delete Part Start -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\" charset=\"utf-8\">\n");
      out.write("    $(document).ready(function () {\n");
      out.write("        $('#THE_detailTable').DataTable();\n");
      out.write("\n");
      out.write("    });\n");
      out.write("</script>\n");
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
