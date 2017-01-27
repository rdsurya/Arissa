<%-- 
    Document   : master_lookup_table
    Created on : Jan 25, 2017, 4:43:13 PM
    Author     : user
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="dBConn.Conn"%>
<%@page import="main.RMIConnector"%>

<table  id="THE_masterTable"  class="table table-striped table-bordered" cellspacing="0" width="100%">
    <thead>
    <th>Master Code</th>
    <th>Master Code Description</th>
    <th>Status</th>
    <th>Update</th>
    <th>Delete</th>
</thead>
<tbody>

    <%
        String sql = " SELECT Master_Reference_code, description, IFNULL(status, 'N/A') FROM adm_lookup_master ";
        ArrayList<ArrayList<String>> dataMaster = Conn.getData(sql);

        int size = dataMaster.size();
        for (int i = 0; i < size; i++) {
    %>

    <tr>
        <td><%= dataMaster.get(i).get(0)%></td>
        <td><%= dataMaster.get(i).get(1)%></td>
        <td><%= dataMaster.get(i).get(2)%></td>


        <td>

            <!-- Update Part Start -->
            <a data-toggle="modal" data-target="#detail2_<%=i%>"><i class="fa fa-pencil-square-o" aria-hidden="true" style="display: inline-block;color: #337ab7;"></i></a>

            <!-- Modal Update -->

            <!-- Update Part End -->
        </td>
        <!-- Delete Part Start -->
        <td>
            <!-- Delete Button Start -->
            <a id="deleteButton_<%=i%>" class="testing"><i class="fa fa-times" aria-hidden="true" style="display: inline-block;color: #d9534f;" ></i></a>
        </td>
        <!-- Delete Button End -->
    </tr>
    <%
        }
    %>
</tbody>
</table>    


<div class="modal fade" id="detail2_" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><i class="fa fa-times fa-lg"></i></button>
                <h3 class="modal-title" id="lineModalLabel">Update Master Code Details</h3>
            </div>
            <div class="modal-body">

                <!-- content goes here -->
                <form class="form-horizontal">

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Master Code</label>
                        <div class="col-md-8">
                            <input id="masterCode_" name="textinput" type="text" placeholder="Master Code" class="form-control input-md"  readonly>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Master Code Description</label>
                        <div class="col-md-8">
                            <textarea id="masterDesc_" class="form-control" rows="3" ></textarea>
                        </div>
                    </div>


                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Status</label>
                        <div class="col-md-8">
                            <select class="form-control" name="tstatus" id="status_">
                                <option value="1" >Active</option>
                                <option value="0" >Inactive</option>
                                
                            </select>
                        </div>
                    </div>
                </form>
                <!-- content goes here -->
            </div>
            <div class="modal-footer">
                <div class="btn-group btn-group-justified" role="group" aria-label="group button">
                    <div class="btn-group" role="group">
                        <button type="submit" class="btn btn-success btn-block btn-lg" role="button" id="btn_update_">Update</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="reset" id="updateReset" class="btn btn-default btn-block btn-lg" data-dismiss="modal" role="button">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal Update -->


<script type="text/javascript" charset="utf-8">

    $(document).ready(function () {
        $("#deleteButton_").click(function () {

            var conf = confirm('Are you sure want to delete?');
//            if (conf) {
//
//                var data = {
//                    masterCode: "",
//                };
//
//                $.ajax({
//                    url: "master_lookup_delete.jsp",
//                    type: "post",
//                    data: data,
//                    timeout: 10000, // 10 seconds
//                    success: function (datas) {
//
//                        if (datas.trim() === 'Success') {
//                            $('#THE_masterTable').load('master_lookup_table.jsp');
//                            alert("Delete Success");
//                        } else if (datas.trim() === 'Failed') {
//                            alert("Delete failed!");
//                        }
//
//                    },
//                    error: function (err) {
//                        alert("Error! Deletion failed!!");
//                    }
//
//                });
//
//            }

        });

        $("#btn_update_").click(function () {

            var masterCode = $("#masterCode_").val();
            var masterDesc = $("#masterDesc_").val();
            var status = $("#status_").val();

            var data = {
                masterCode: masterCode,
                masterDesc: masterDesc,
                status: status
            };

            $.ajax({
                url: "master_lookup_update.jsp",
                type: "post",
                data: data,
                timeout: 10000,
                success: function (datas) {
                    if (datas.trim() === 'Success') {
                        $('#masterTable').load('master_lookup_table.jsp');
                        $(".modal-backdrop").hide();
                        alert("Update Success");
                    } else if (datas.trim() === 'Failed') {
                        alert("Update failed!");

                    }
                },
                error: function (err) {
                    alert("Error update!");
                }

            });
        });
    });
</script>  





<script type="text/javascript" charset="utf-8">
    $(document).ready(function () {
        $('#THE_masterTable').DataTable();
    });
</script>
