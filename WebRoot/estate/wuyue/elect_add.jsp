<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>电表表录入</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/add.css" />
<!-- 选择日期插件-->
<script language="javascript" type="text/javascript" src="<%=path %>/js/My97DatePicker/WdatePicker.js"></script>
</head>

<body>
  <div id="div_form">
      <fieldset>
         <legend>电表录入</legend>
         
	         <form action="" method="">
	           <table>   
		       
		       <tr>
		          <td>住宅编号：</td>
		          <td>
		          	<select name="">
		          		<option></option>
		          	</select>
		          </td>
		      </tr>
		      
		      <tr>
		         <td>上个月电表表读数：</td>
		         <td><input type="text" name=""/></td>
		      </tr>
		      
		       <tr>
		          <td> 这个月电表表读数：</td>
		          <td><input type="text" name=""/></td>
		      </tr>
		      
		      
		      <tr>
		          <td> 收费标准：</td>
		          <td>
		          	<select name="">
		          	 <option></option>
		          	</select>
		          </td>
		      </tr>
		      
		      
		      
		      <tr>
		          <td> 录入时间：</td>
		          <td><input type="text" name="" onClick="WdatePicker()"/></td>
		      </tr>
		      
      </table>
      
            <input type="button" value="取消" class="btn"/>
	        <input type="submit" value="保存" class="btn"/>
      
      
	
	         </form>
      
      </fieldset>
  </div>
</body>
</html>
