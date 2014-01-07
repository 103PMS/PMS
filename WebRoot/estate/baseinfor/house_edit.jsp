<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>房产信息修改</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/add.css" />
</head>
  
<body>
<div id="div_form">
      <fieldset>
         <legend>&nbsp;<a href="<%=path %>/estate/baseinfor/house_list.jsp">房产列表</a>&nbsp;>>>&nbsp;房产修改</legend>
         <form action="" method="">
         	<table>
         		<tr>
         			<td>房产编号：</td>
         			<td><input type="text" name="" /></td>
         		</tr>
         		
         		<tr>
         			<td>房产名：</td>
         			<td><input type="text" name="" /></td>
         		</tr>
         		
         		<tr>
         			<td>占地面积：</td>
         			<td><input type="password" name="" /></td>
         		</tr>
         		
         		<tr>
         			<td>建筑面积：</td>
         			<td><input type="password" name="" /></td>
         		</tr>
         		
         		<tr>
         			<td>绿化面积：</td>
         			<td><input type="text" name="" /></td>
         		</tr>
         		
         		<tr>
         			<td>电表编号：</td>
         			<td>
         			 <select>
         			 	<option></option>
         			 </select>
         			</td>
         		</tr>
         		
         		<tr>
         			<td>水表编号：</td>
         			<td>
         			 <select>
         			 	<option></option>
         			 </select>
         			</td>
         		</tr>
         		
         		
         		<tr>
         			<td>是否卖出：</td>
         			<td>
         			<select name="">
         				<option>是</option>
         				<option>否</option>
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
