<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>角色添加</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/add.css" />
</head>
  
<body>
<div id="div_form">
      <fieldset>
         <legend>&nbsp;<a href="<%=path %>/estate/system/profession_list.jsp">角色列表</a>&nbsp;>>>&nbsp;角色添加</legend>
         <form action="" method="">
         	<table>
         		<tr>
         			<td>角色名：</td>
         			<td><input type="text" name="" /></td>
         		</tr>
         		
         		<tr>
         			<td>角色权限：</td>
         			<td><input type="text" name="" /></td>
         		</tr>
         	
         	</table>
         	
           <input type="button" value="取消" class="btn"/>
           <input type="submit" value="保存" class="btn"/>
           
         </form>
      
      </fieldset>
  </div>
</body>
</html>
