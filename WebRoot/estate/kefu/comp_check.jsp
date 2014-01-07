<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>投诉详情查看</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/add.css" />
</head>

<body>
    <div id="div_form">
      <fieldset>
      
    <legend>&nbsp;<a href="<%=path %>/estate/kefu/comp_list.jsp">住户投诉列表</a>&nbsp;>>>&nbsp;住户投诉详情查看</legend>
       <table>   
	       <tr> 
	           <td>住户名：</td>
	           <td><input type="text" name="" readonly="readonly"/></td>
	       </tr>
	       
	       <tr> 
	           <td>房产名：</td>
	           <td><input type="text" name="" readonly="readonly"/></td>
	       </tr>
	       
	       <tr>
	          <td> 投诉主题：</td>
	          <td><input type="text" name="" readonly="readonly"/></td>
	      </tr>
	      
	      <tr>
	         <td valign="top" align="center"> 投诉内容：</td>
	         <td> <textarea readonly="readonly"></textarea></td>
	      </tr>
	      
	       <tr>
	          <td> 投诉日期：</td>
	          <td><input type="text" name="" readonly="readonly"/></td>
	      </tr>
	      
	       <tr>
	          <td> 处理状态：</td>
	          <td><input type="text" name="" readonly="readonly"/></td>
	      </tr>
	      
	       <tr>
	          <td> 处理人员：</td>
	          <td><input type="text" name="" readonly="readonly"/></td>
	      </tr>
	      
	       <tr>
	         <td valign="top" align="center"> 处理方法：</td>
	         <td> <textarea name="" readonly="readonly"></textarea></td>
	      </tr>
	      
	      
	       <tr>
	          <td> 处理日期：</td>
	          <td><input type="text"  name="" readonly="readonly"/></td>
	      </tr>
	      
          
      </table>
      </fieldset>
  </div>
</body>
</html>
