<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户添加</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/add.css" />

<!-- 选择日期插件-->
<script language="javascript" type="text/javascript" src="<%=path %>/js/My97DatePicker/WdatePicker.js"></script>

</head>
  
<body>
<div id="div_form">
      <fieldset>
         <legend>&nbsp;<a href="<%=path %>/estate/system/user_list.jsp">用户列表</a>&nbsp;>>>&nbsp;用户添加</legend>
         <form action="" method="">
         	<table>
         	
         		<tr>
         			<td>用户名：</td>
         			<td><input type="text" name="" /></td>
         		</tr>
         		
         		<tr>
         			<td>性别：</td>
         			<td>
	         			<input type="radio" value="男" name="" />男
	                    <input type="radio" value="女" name="" />女
                    </td>
         		</tr>
         		
         		<tr>
         			<td>密码：</td>
         			<td><input type="password" name="" /></td>
         		</tr>
         		
         		<tr>
         			<td>重复密码：</td>
         			<td><input type="password" name="" /></td>
         		</tr>
         		
         		<tr>
         			<td>出生日期：</td>
         			<td><input type="text" name=""  onClick="WdatePicker()"/>
         			</td>
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
         			<td>
         				<select name="">
         					<option></option>
         				</select>
         			</td>
         		</tr>
         		
         		<tr>
         			<td>职位：</td>
         			<td>
         				<select name="">
         					<option></option>
         				</select>
         			</td>
         		</tr>
         	
         		
         	</table>
         
        
           <input type="button" value="取消" class="btn"/>
           <input type="submit" value="保存" class="btn"/>
           
         </form>
      
      </fieldset>
  </div>
</body>
</html>
