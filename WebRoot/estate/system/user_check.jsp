<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户资料查看</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/add.css" />
</head>

<body>
    <div id="div_form">
      <fieldset>
         <legend>&nbsp;<a href="<%=path %>/estate/system/user_list.jsp">用户列表</a>&nbsp;>>>&nbsp;用户查看</legend>
       		 <table>
         	
         		<tr>
         			<td>用户名：</td>
         			<td><input type="text" name="" /></td>
         		</tr>
         		
         		<tr>
         			<td>性别：</td>
         			<td><input type="text" name="" /></td>
         		</tr>
         		
         		<tr>
         			<td>密码：</td>
         			<td><input type="text" name="" /></td>
         		</tr>
         		
         		
         		<tr>
         			<td>出生日期：</td>
         			<td><input type="text" name="" /></td>
         		</tr>
         		
         		
         		<tr>
         			<td>电话号码：</td>
         			<td><input type="text" name="" /></td>
         		</tr>
         		
         		<tr>
         			<td>邮箱：</td>
         			<td><input type="text" name="" /></td>
         		</tr>
         		
         		<tr>
         			<td>所属部门：</td>
         			<td><input type="text" name="" /></td>
         		
         		<tr>
         			<td>职位：</td>
         			<td><input type="text" name="" /></td>
         	
         		
         	</table>
      
      </fieldset>
  </div>
</body>
</html>
