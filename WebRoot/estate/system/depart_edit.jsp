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
        <input type="hidden" name="department.departId" value="<s:property value="department.departId"/>"/>
           &nbsp;&nbsp;部门名称：<input type="text" name="department.departName"  value="<s:property value="department.departName"/>"/></br>
           <input type="hidden" id="departop" value="<s:property value="department.user.userId"/>"/>
                             部门负责人：<select name="department.user.userId"  style="width:156px;height:25px;margin-left:10px;" >
           <option></option>
           <s:iterator value="userList">
           <option value="<s:property value="userId"/>"><s:property value="userName"/></option>
           </s:iterator>
           </select>
            </br>
           &nbsp;&nbsp;部门电话：<input type="text" name="department.departPhone" value="<s:property value="department.departPhone"/>" /></br>
            &nbsp;&nbsp; 部门描述：<textarea rows="2" cols="30" name="department.departInformation"><s:property value="department.departInformation"/></textarea></br>
           
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
