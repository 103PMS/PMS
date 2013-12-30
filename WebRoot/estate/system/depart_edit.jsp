<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>部门编辑</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/add.css" />
</head>

<body onload="initSelct()">
  <div id="div_form">
      <fieldset>
         <legend>&nbsp;<a href="depart_list.action">部门列表</a>&nbsp;>>>&nbsp;部门资料修改</legend>
        <form action="departEditSave.action" method="post">
        <input type="hidden" name="department.depart_id" value="<s:property value="department.depart_id"/>"/>
           &nbsp;&nbsp;部门名称：<input type="text" name="department.depart_name"  value="<s:property value="department.depart_name"/>"/></br>
           <input type="hidden" id="departop" value="<s:property value="department.user.user_id"/>"/>
                             部门负责人：<select name="department.user.user_id"  style="width:156px;height:25px;margin-left:10px;" >
           <option></option>
           <s:iterator value="userList">
           <option value="<s:property value="user_id"/>"><s:property value="user_name"/></option>
           </s:iterator>
           </select>
            </br>
           &nbsp;&nbsp;部门电话：<input type="text" name="department.depart_phone" value="<s:property value="department.depart_phone"/>" /></br>
            &nbsp;&nbsp; 部门描述：<textarea rows="2" cols="30" name="department.depart_information"><s:property value="department.depart_information"/></textarea></br>
           
           <input type="button" value="取消" class="btn" onclick="window.history.go(-1);"/>
           <input type="submit" value="保存" class="btn"/>
           
         </form>
      
      </fieldset>
  </div>
</body>

<script type="text/javascript">
  function initSelct(){
    var aOptions = document.getElementsByTagName("option");
    var odepart_id = document.getElementById("departop").value;
    for(var i = 0 ; i < aOptions.length; i++){
         if(aOptions[i].value==odepart_id){
            aOptions[i].selected="selected";
         }
    }
  }

</script>
</html>
