<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@taglib prefix="s"  uri="/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>部门查看</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/add.css" />
</head>

<body>
  <div id="div_form">
      <fieldset>
         <legend>&nbsp;<a href="depart_list.action">部门列表</a>&nbsp;>>>&nbsp;部门资料查看</legend>
           &nbsp;&nbsp;部门名称：<input type="text" name="depart_name"  value="<s:property value="department.depart_name"/>"  readonly="readonly"/></br>
                                部门负责人：<input type="text" value="<s:property value="department.user.user_name"/>" readonly="readonly"/></br>
           &nbsp;&nbsp;部门电话：<input type="text" name="depart_phone" value="<s:property value="department.depart_phone"/>" readonly="readonly"/></br>
           &nbsp;&nbsp;部门描述：<textarea rows="2" cols="30"><s:property value="department.depart_information"/></textarea>

      </fieldset>
  </div>
</body>
</html>
