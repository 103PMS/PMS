<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>部门添加</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/add.css" />
</head>
  
<body>
<div id="div_form">
      <fieldset>
         <legend>&nbsp;<a href="depart_list.action">部门列表</a>&nbsp;>>>&nbsp;部门添加</legend>
         <form action="depart_add.action" method="post">
           &nbsp;&nbsp;部门名称：<input type="text" name="department.departName" /></br>
                                 部门负责人：
            <select name="department.user.userId"  style="width:156px;height:25px;margin-left:5px;" >
            <option></option>
            <s:iterator value="userList">
           <option value="<s:property value="userId"/>"><s:property value="userName"/></option>
           </s:iterator>
           </select>
            </br>
           &nbsp;&nbsp;部门电话：<input type="text" name="department.departPhone" /></br>
           &nbsp;&nbsp; 部门描述：<textarea rows="2" cols="30" name="department.departInformation"></textarea></br>
           
           <input type="button" value="取消" class="btn" onclick="window.history.go(-1);"/>
           <input type="submit" value="保存" class="btn"/>
           
         </form>
      
      </fieldset>
  </div>
</body>
</html>
