<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@taglib prefix="s" uri="/struts-tags"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>电表修改</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/add.css" />
</head>
  
<body>
<div id="div_form">
      <fieldset>
         <legend>&nbsp;<a href="<%=path %>/estate/baseinfor/ammeter_list.jsp">电表列表</a>&nbsp;>>>&nbsp;电表修改</legend>
         <form action="ammeter_save" method="post">
         	<table>
          
           			<td><input type="hidden"  name="ammeter.ammeterId" value="<s:property value="ammeter.ammeterId"/>"/></td>
         		<tr>
         			<td>电表编号：</td>
         			<td><input type="text" name="ammeter.ammeterNumber" value="<s:property value="ammeter.ammeterNumber"/>" /></td>
         		</tr>
         	
         	</table>
         	
         	
         	<input type="button" value="取消" class="btn"/>
            <input type="submit" value="保存" class="btn"/>
         
           
         </form>
      
      </fieldset>
  </div>
</body>
</html>
