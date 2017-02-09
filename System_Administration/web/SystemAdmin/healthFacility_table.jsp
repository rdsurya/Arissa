<%-- 
    Document   : healthFacility_table
    Created on : Feb 10, 2017, 3:44:47 AM
    Author     : user
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="dBConn.Conn"%>
<%@page import="main.RMIConnector"%>

<%
    Conn conn = new Conn();
%>

<table  id="THE_healthFacilityTable"  class="table table-striped table-bordered" cellspacing="0" width="100%">
    <thead>
    <th>HFC Code</th>
    <th>HFC Name</th>
    <th>Director</th>
    <th>Address</th>
    <th>Update</th>
    <th>Delete</th>
</thead>
<tbody>

    <%
        String sql ="Select hfc_cd, hfc_type, hfc_name, address1, address2, address3, state_cd, district_cd, town_cd, country_cd, postcode, telephone_no, fax_no, email, hfc_server, hfc_report, ifnull(DATE_FORMAT(established_date,'%d/%m/%Y'), ''), director_name, hfc_category_cd, hfc_sub_type, contact_person, hfc_status, hfc_ip "+
                    "FROM adm_health_facility";
        
        ArrayList<ArrayList<String>> dataHFC = conn.getData(sql);

        int size = dataHFC.size();
        for (int i = 0; i < size; i++) {
    %>

    <tr>
<input id="HFT_hidden" type="hidden" value="<%=String.join("|", dataHFC.get(i))%>">
<td><%= dataHFC.get(i).get(0)%></td> <!-- HFC code -->   
<td><%= dataHFC.get(i).get(2)%></td> <!-- HFC name  --> 
<td><%= dataHFC.get(i).get(17)%></td> <!-- Director --> 
<td><%= dataHFC.get(i).get(3)%> <%=dataHFC.get(i).get(4)%> <%= dataHFC.get(i).get(5)%></td> <!-- Address  --> 


<td style="width: 5% ">

    <!-- Update Part Start -->
    <a id="HFT_btnUpdate" data-toggle="modal" data-target="#HFT_detail" style="cursor: pointer"><i class="fa fa-pencil-square-o" aria-hidden="true" style="display: inline-block;color: #337ab7;"></i></a>
</td>
<td style="width: 5% ">
    <!-- Delete Button Start -->
    <a id="HFT_btnDelete" class="testing" style="cursor: pointer"><i class="fa fa-times" aria-hidden="true" style="display: inline-block;color: #d9534f;" ></i></a>
    <!-- Delete Button End -->
</td>
</tr>



<%
    }
%>

</tbody>
</table>

<!-- Modal Update -->
<div class="modal fade" id="HFT_detail" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 50%">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><i class="fa fa-times fa-lg" style="color: red"></i></button>
                <h3 class="modal-title" id="lineModalLabel">Update Health Facility</h3>
            </div>
            <div class="modal-body">
                <form id="HFT_form" class="form-horizontal">
                    <div class="row">
                        <div class="col-md-12">
                                                        
                            <!-- Text input-->
                            <div class="form-group" >
                                <label class="col-md-2 control-label" for="textinput">Health Facility Code</label>
                                <div class="col-md-8">
                                    <input type="text"  class="form-control" id="HFT_hfcCode" placeholder="Health Facility Code" maxlength="30" readonly="true">   
                                </div>
                            </div>
                            
                            <!-- Text input-->
                            <div class="form-group" >
                                <label class="col-md-2 control-label" for="textinput">Health Facility Name</label>
                                <div class="col-md-8">
                                    <input type="text"  class="form-control" id="HFT_hfcName" placeholder="Name" maxlength="30"> 
                                </div>
                            </div>
                            
                            <!-- Text input-->
                            <div class="form-group" >
                                <label class="col-md-2 control-label" for="textinput">Address-1</label>
                                <div class="col-md-10">
                                    <input type="text"  class="form-control" id="HFT_address1" placeholder="Address (Optional)" maxlength="40">   
                                </div>
                            </div>
                            
                             <!-- Text input-->
                            <div class="form-group" >
                                <label class="col-md-2 control-label" for="textinput">Address-2</label>
                                <div class="col-md-10">
                                    <input type="text"  class="form-control" id="HFT_address2" placeholder="Address (Optional)" maxlength="40">   
                                </div>
                            </div>
                             
                             <!-- Text input-->
                            <div class="form-group" >
                                <label class="col-md-2 control-label" for="textinput">Address-3</label>
                                <div class="col-md-10">
                                    <input type="text"  class="form-control" id="HFT_address3" placeholder="Address (Optional)" maxlength="40">   
                                </div>
                            </div> 
                           
                        </div>
                        
                         <!--pembahagi form menjadi dua horizontal-->
                        
                        <div class="col-md-6">
                            
                             <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">State</label>
                                <div class="col-md-8">
                                    <select class="form-control"  id="HFT_state" >
                                        <option  value="0" >Select the state</option>
                                        <%
                                            String sql2 = "SELECT detail_reference_code, description FROM adm_lookup_detail WHERE master_reference_code = '0002' AND detail_reference_code NOT IN ('00', '98') order by description ";
                                            ArrayList<ArrayList<String>> stateList = conn.getData(sql2);
                                            for(int i = 0; i < stateList.size(); i++){
                                        %>
                                        <option  value="<%= stateList.get(i).get(0)%>" ><%= stateList.get(i).get(1)%></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                </div>
                            </div>
                             
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Town</label>
                                <div class="col-md-8">
                                    <select class="form-control"  id="HFT_town">
                                        <option  value="0" >-- Select the town --</option>
                                        
                                    </select>
                                </div>
                            </div> 
                            
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Fax No</label>
                                <div class="col-md-8">
                                    <input id="HFT_faxNo" maxlength="30"  type="text" placeholder="Fax no" class="form-control input-md">
                                </div>
                            </div>
                            
                             <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Email</label>
                                <div class="col-md-8">
                                    <input id="HFT_email" maxlength="100"  type="text" placeholder="email@example.com" class="form-control input-md">
                                </div>
                            </div>
                             
                             <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">IP No</label>
                                <div class="col-md-8">
                                    <input id="HFT_IP" maxlength="30"  type="text" placeholder="Health Facility IP No (Optional)" class="form-control input-md">
                                </div>
                            </div>
                                                        
                                                       
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Category</label>
                                <div class="col-md-8">
                                    <input id="HFT_category" maxlength="30"  type="text" placeholder="Health Facility Category (Optional)" class="form-control input-md">
                                </div>
                            </div>
                            
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Type</label>
                                <div class="col-md-8">
                                    <input id="HFT_type" maxlength="30"  type="text" placeholder="Health Facility Type (Optional)" class="form-control input-md">
                                </div>
                            </div>
                            
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Director Name</label>
                                <div class="col-md-8">
                                    <input id="HFT_director" maxlength="100"  type="text" placeholder="Director Name" class="form-control input-md">
                                </div>
                            </div>
                            
                             <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Established Date</label>
                                <div class="col-md-8">
                                    <input id="HFT_establishedDate" maxlength="30"  type="text" placeholder="Established date (Optional)" class="form-control input-md" readonly="true">
                                </div>
                            </div>
                            
                        </div>
                        
                        <!--pembahagi form menjadi dua vertical-->
                        
                        <div class="col-md-6">
                            
                             <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">District</label>
                                <div class="col-md-8" id="selectDistrict">
                                     <select class="form-control"  id="HFT_district">
                                        <option  value="0" >-- Select the district --</option>
                                        
                                    </select>
                                </div>
                            </div>
                             
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Postcode</label>
                                <div class="col-md-8">
                                    <input id="HFT_postcode" maxlength="30"  type="text" placeholder="postcode" class="form-control input-md">
                                </div>
                            </div>  
                             
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Tel No</label>
                                <div class="col-md-8">
                                    <input id="HFT_telNo" maxlength="30"  type="text" placeholder="Telephone Number" class="form-control input-md">
                                </div>
                            </div> 
                            
                             <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Contact Person</label>
                                <div class="col-md-8">
                                    <input id="HFT_contactPerson" maxlength="30"  type="text" placeholder="Contact Person (Optional)" class="form-control input-md">
                                </div>
                            </div>
                            
                            
                             <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Server</label>
                                <div class="col-md-8">
                                    <input id="HFT_server" maxlength="30"  type="text" placeholder="Health Facility Server (Optional)" class="form-control input-md">
                                </div>
                            </div>
                                                       
                            
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Report to</label>
                                <div class="col-md-8">
                                    <input id="HFT_reportTo" maxlength="30"  type="text" placeholder="Report to (Optional)" class="form-control input-md">
                                </div>
                            </div>
                            
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Subtype</label>
                                <div class="col-md-8">
                                    <input id="HFT_subtype" maxlength="30"  type="text" placeholder="Health Facility Subtype (Optional)" class="form-control input-md">
                                </div>
                            </div>
                            
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="textinput">Status</label>
                                <div class="col-md-8">
                                    <select class="form-control"  id="HFT_status">
                                        <option  value="1" >Active</option>
                                        <option  value="0" >Inactive</option>
                                    </select>
                                </div>
                            </div>
                            
                        </div>
                    </div>

                </form>
                <hr/>

                <!-- content goes here -->
            </div>
            <div class="modal-footer">
                <div class="btn-group btn-group-justified" role="group" aria-label="group button">
                    <div class="btn-group" role="group">
                        <button type="submit" class="btn btn-success btn-block btn-lg" role="button" id="HFT_btnUpdateConfirm">Update</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="reset"  class="btn btn-default btn-block btn-lg" data-dismiss="modal" role="button">Cancel</button>
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

    $('#healthFacilityTable').off('click', '#THE_healthFacilityTable #HFT_btnUpdate').on('click', '#THE_healthFacilityTable #HFT_btnUpdate', function (e) {
        e.preventDefault();
        
        //get the row value
        var row = $(this).closest("tr");
        var rowData = row.find("#HFT_hidden").val();
        var arrayData = rowData.split("|");
        //assign into seprated val
        var hfc_cd = arrayData[0], hfc_type = arrayData[1], hfc_name = arrayData[2], address1 = arrayData[3], address2 = arrayData[4], address3 = arrayData[5], state_cd = arrayData[6], district_cd = arrayData[7], town_cd = arrayData[8], country_cd = arrayData[9], postcode = arrayData[10], telephone_no = arrayData[11], fax_no = arrayData[12], email = arrayData[13], hfc_server = arrayData[14], hfc_report = arrayData[15], established_date = arrayData[16], director_name = arrayData[17], hfc_category_cd = arrayData[18], hfc_sub_type = arrayData[19], contact_person = arrayData[20], hfc_status = arrayData[21], hfc_ip = arrayData[22];
        //set value in input on the top
        $('#HFT_hfcCode').val(hfc_cd);
        $('#HFT_hfcName').val(hfc_name);
        $('#HFT_address1').val(address1);
        $('#HFT_address2').val(address2);
        $('#HFT_address3').val(address3);
        $('#HFT_state').val(state_cd);
        $('#HFT_postcode').val(postcode);
        $('#HFT_telNo').val(telephone_no);
        $('#HFT_faxNo').val(fax_no);
        $('#HFT_email').val(email);
        $('#HFT_contactPerson').val(contact_person);
        $('#HFT_IP').val(hfc_ip);
        $('#HFT_server').val(hfc_server);
        $('#HFT_category').val(hfc_category_cd);
        $('#HFT_reportTo').val(hfc_report);
        $('#HFT_type').val(hfc_type);
        $('#HFT_subtype').val(hfc_sub_type);
        $('#HFT_director').val(director_name);
        $('#HFT_status').val(hfc_status);
        $('#HFT_establishedDate').val(established_date);
        createDistrictList(state_cd, district_cd);
        createTownList(district_cd, town_cd);
       



        console.log(arrayData);
    });


    $('#HFT_btnUpdateConfirm').on('click', function () {

        var systemCode = $('#HFT_systemCode').val();
        var moduleCode = $('#HFT_moduleCode').val();
        var pageCode = $('#HFT_pageCode').val();
        var pageName = $('#HFT_pageName').val();
        var status = $('#HFT_status').val();

        if (pageName === "" || pageName === null) {
            alert("Please fill in the page name");
            $('#HFT_pageName').focus();

        } else if (status !== '1' && status !== '0') {
            alert("Please choose the status");
            $('#HFT_status').focus();

        } else {

            var data = {
                systemCode : systemCode,
                moduleCode : moduleCode,
                pageCode : pageCode,
                pageName : pageName,
                status : status
            };

            $.ajax({
                url: "page_update.jsp",
                type: "post",
                data: data,
                timeout: 10000,
                success: function (datas) {
                    console.log(datas.trim());
                    if (datas.trim() === 'Success') {
                        $('#healthFacilityTable').load('page_table.jsp');
                        $(".modal-backdrop").hide();
                        //alert("Update Success");
                        
                        bootbox.alert({
                                    message: "Page information is updated",
                                    title: "Process Result",
                                    backdrop: true
                                });
                        
                    } else if (datas.trim() === 'Failed') {
                        bootbox.alert("Update failed!");

                    }
                },
                error: function (err) {
                    alert("Error update!");
                }

            });
        }



    });

    $('#healthFacilityTable').off('click', '#THE_healthFacilityTable #HFT_btnDelete').on('click', '#THE_healthFacilityTable #HFT_btnDelete', function (e) {
        e.preventDefault();

        var row = $(this).closest("tr");
        var rowData = row.find("#HFT_hidden").val();
        var arrayData = rowData.split("|");
        //assign into seprated val
        var systemCode = arrayData[0], moduleCode = arrayData[2], pageCode = arrayData[4];
        console.log(arrayData);
        
        bootbox.confirm({
            message: "Are you sure want to delete this item? " + systemCode + "-" + moduleCode + "-" + pageCode,
            title: "Delete Item?",
            buttons: {
                confirm: {
                    label: 'Yes',
                    className: 'btn-success'
                },
                cancel: {
                    label: 'No',
                    className: 'btn-danger'
                }
            },
            callback: function (result) {

                if (result === true) {
                    
                    var data = {
                        moduleCode : moduleCode,
                        systemCode : systemCode,
                        pageCode : pageCode
                    };

                    $.ajax({
                        url: "page_delete.jsp",
                        type: "post",
                        data: data,
                        timeout: 10000, // 10 seconds
                        success: function (datas) {

                            if (datas.trim() === 'Success') {
                                $('#healthFacilityTable').load('page_table.jsp');
                                //alert("Delete Success");
                                 bootbox.alert({
                                    message: "A page information is deleted",
                                    title: "Process Result",
                                    backdrop: true
                                });
                                
                            } else if (datas.trim() === 'Failed') {
                                alert("Delete failed!");
                            }

                        },
                        error: function (err) {
                            alert("Error! Deletion failed!!");
                        }

                    });
                    
                } else {
                    console.log("Process Is Canceled");
                }

            }
        });

       

    });
        
    
    function createDistrictList(state, district){
       
            if(state !== '0'){
                
                var dataFields = {code: state, process : "district"};
                
                $.ajax({
                    type: "POST",
                    url: "HFM_result.jsp",
                    data: dataFields,
                    timeout: 5000,
                    success: function (data) {
                        $('#HFT_district').html(data);
                        $('#HFT_district').val(district);
                    },
                    error: function (err) {
                        console.log("Ajax error");
                    }
                });
            }else{
                $('#HFT_district').html( '<option  value="0" >-- Select the district --</option>');
            }
        
    }
    
    function createTownList(district, town){
        
        if(district !== '0'){
                
                var dataFields = {code: district, process : "town"};
                
                $.ajax({
                    type: "POST",
                    url: "HFM_result.jsp",
                    data: dataFields,
                    timeout: 5000,
                    success: function (data) {
                        $('#HFT_town').html(data);
                        $('#HFT_town').val(town);
                    },
                    error: function (err) {
                        console.log("Ajax error");
                    }
                });
            }else{
                $('#HFT_town').html( '<option  value="0" >-- Select the district --</option>');
            }
    }



</script>  


<!-- Delete Part Start -->




<script type="text/javascript" charset="utf-8">
    $(document).ready(function () {
        $('#THE_healthFacilityTable').DataTable();
        
        $('#HFT_establishedDate').datepicker({
            changeYear: true,
            changeMonth: true,
            dateFormat: 'dd/mm/yy'
        });

        
    });
</script>




