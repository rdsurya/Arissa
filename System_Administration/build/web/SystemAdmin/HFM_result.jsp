<%-- 
    Document   : HFM_result
    Created on : Feb 9, 2017, 1:14:52 PM
    Author     : user
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dBConn.Conn"%>
<%@page import="main.RMIConnector"%>

<%
    String code = request.getParameter("code");
    String process = request.getParameter("process");
    
    Conn conn = new Conn();
    
    if(process.equalsIgnoreCase("district")){
    
        int intCode = Integer.parseInt(code);
        
        code = Integer.toString(intCode);
        
        String sql = "Select detail_reference_code, description from adm_lookup_detail where master_reference_code = '0078' AND detail_reference_code like '"+code+"__' order by description";
        
        ArrayList<ArrayList<String>> listDistrict = conn.getData(sql);
        
        if(listDistrict.size() <= 0){
        
            %>
            <option  value="0" >-- Select the district --</option>
            <option value="00"> No District </option>>
            <%
            
        }else{

            %><option  value="0" >-- Select the district --</option><%

             for(int i =0; i < listDistrict.size(); i++){
        
            %><option value="<%=listDistrict.get(i).get(0)%>"><%=listDistrict.get(i).get(1)%></option>><%
        
            }
        
        }
        
    }else if(process.equalsIgnoreCase("town")){

        String sql = "Select detail_reference_code, description from adm_lookup_detail where master_reference_code = '0003' AND detail_reference_code like '"+code+"%' order by description";

         ArrayList<ArrayList<String>> listDistrict = conn.getData(sql);
        
        if(listDistrict.size() <= 0){
        
            %><option value="-"> - </option>><%
            
        }else{
        
            %><option  value="0" >-- Select the town --</option><%
            
             for(int i =0; i < listDistrict.size(); i++){
        
            %><option value="<%=listDistrict.get(i).get(0)%>"><%=listDistrict.get(i).get(1)%></option>><%
        
            }
        
        }
    }



%>
