

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="dBConn.Conn"%>
<%@page import="main.RMIConnector"%>

<table  id="THE_detailTable"  class="table table-striped table-bordered" cellspacing="0" width="100%">
    <thead>
    <th>Master Code</th>
    <th>Detail Code</th>
    <th>Description</th>
    <th>Status</th>
    <th>Update</th>
    <th>Delete</th>
</thead>
<tbody>

    <%
        String sql = " SELECT master_reference_code, detail_reference_code, description, IFNULL(status, 'N/A')  FROM adm_lookup_detail ";
        ArrayList<ArrayList<String>> dataDetail = Conn.getData(sql);

        int size = dataDetail.size();
        for (int i = 0; i < size; i++) {
    %>

    <tr>
        <input id="DLT_hidden" type="hidden" value="<%=String.join("|", dataDetail.get(i))%>">
        <td><%= dataDetail.get(i).get(0)%></td>
        <td><%= dataDetail.get(i).get(1)%></td>
        <td><%= dataDetail.get(i).get(2)%></td>
        <td><%= dataDetail.get(i).get(3)%></td>

        <td>

            <!-- Update Part Start -->
            <a id="DLT_btnUpdate" data-toggle="modal" data-target="#DLT_detail2_"><i class="fa fa-pencil-square-o" aria-hidden="true" style="display: inline-block;color: #337ab7;"></i></a>
        </td>
        <td>
            <!-- Delete Button Start -->
            <a id="DLT_deleteButton_" class="testing"><i class="fa fa-times" aria-hidden="true" style="display: inline-block;color: #d9534f;" ></i></a>
            <!-- Delete Button End -->
        </td>
    </tr>

    <%
        }
    %>

</tbody>
</table>

<!-- Modal Update -->
<div class="modal fade" id="DLT_detail2_" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><i class="fa fa-times fa-lg"></i></button>
                <h3 class="modal-title" id="lineModalLabel">Update Lookup Detail</h3>
            </div>
            <div class="modal-body">

                <!-- content goes here -->
                <form class="form-horizontal">

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Master Code</label>
                        <div class="col-md-8">
                            <input id="DLT_masterCode_" name="textinput" type="text" placeholder="ATC Code" class="form-control input-md" readonly>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Detail Code</label>
                        <div class="col-md-8">
                            <input id="detailCode_" name="textinput" type="text" placeholder="Detail Code" class="form-control input-md" readonly>
                        </div>
                    </div>    

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Description</label>
                        <div class="col-md-8">
                            <textarea id="detailDesc_" class="form-control" rows="3"  ></textarea>
                        </div>
                    </div>


                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Status</label>
                        <div class="col-md-8">
                            <select class="form-control" name="tstatus" id="DLT_status_">
                                <option id="DLT_option1" value="1" >Active</option>
                                <option id="DLT_option2" value="0" >Inactive</option>
                            </select>
                        </div>
                    </div>
                </form>
                <!-- content goes here -->
            </div>
            <div class="modal-footer">
                <div class="btn-group btn-group-justified" role="group" aria-label="group button">
                    <div class="btn-group" role="group">
                        <button type="submit" class="btn btn-success btn-block btn-lg" role="button" id="DLT_btn_update_">Update</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="reset" id="DLT_updateReset" class="btn btn-default btn-block btn-lg" data-dismiss="modal" role="button">Cancel</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal Update -->
<!-- Update Part End -->

<!-- Delete Part Start -->


<script type="text/javascript" charset="utf-8">
  $('#detailTable').on('click', '#THE_detailTable #DLT_btnUpdate', function (e) {
        e.preventDefault();
        
        //go to the top
//        $('html,body').animate({
//            scrollTop: $("#maintainFam").offset().top
//        }, 500);

        //get the row value
        var row = $(this).closest("tr");
        var rowData = row.find("#DLT_hidden").val();
        var arrayData = rowData.split("|");
        //assign into seprated val
        var masterCode = arrayData[0], detailCode = arrayData[1], detailDesc = arrayData[2], status = arrayData[3];
        //set value in input on the top
        $('#DLT_masterCode_').val(masterCode);
        $('#detailCode_').val(detailCode);
        $('#detailDesc_').val(detailDesc);
        
        if(status === '1')
            $('#DLT_status_').val(1);
        else
            $('#DLT_status_').val(0);
          
        
        
        console.log(arrayData);
    });
    
</script>  


<!-- Delete Part Start -->




<script type="text/javascript" charset="utf-8">
    $(document).ready(function () {
        $('#THE_detailTable').DataTable();

    });
</script>
