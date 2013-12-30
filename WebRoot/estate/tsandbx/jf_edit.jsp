<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>缴费</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/add.css" />
<!-- 选择日期插件-->
<script language="javascript" type="text/javascript" src="<%=path %>/js/My97DatePicker/WdatePicker.js"></script>
</head>

<body>
  <div id="div_form">
      <fieldset>
         <legend>缴费</legend>
         
	         <form action="" method="">
	           <table>   
		       
		       <tr>
		          <td>缴费类型：</td>
		          <td><input type="text" readonly="readonly"/> </td>
		      </tr>
	      
		       <tr>
		          <td>费用总额：</td>
		          <td><input type="text" name="" readonly="readonly"/></td>
		      </tr>
		      
		       <tr>
		          <td>费用日期：</td>
		          <td><input type="text" name="" readonly="readonly"/></td>
		      </tr>
		      
		       <tr>
		          <td>已经缴纳的金额：</td>
		          <td><input type="text" name="" readonly="readonly"/></td>
		      </tr>
		      
		       <tr>
		          <td>未缴纳的金额：</td>
		          <td><input type="text" name="" readonly="readonly"/></td>
		      </tr>
		      
		      
		       <tr>
		          <td>缴纳的金额：</td>
		          <td><input type="text" name=""/></td>
		      </tr>
		      
		      
		       <tr>
		          <td>缴费日期：</td>
		          <td><input type="text" name="" onfocus="WdatePicker()"/></td>
		      </tr>
		      
		       <tr>
		          <td>缴费方式：</td>
		          <td><select name="">
		          		<option></option>
		          	</select></td>
		      </tr>
		      
		      
		      
      </table>
      
            <input type="button" value="取消" class="btn"/>
	        <input type="submit" value="保存" class="btn"/>
      
      
	
	         </form>
      
      </fieldset>
  </div>
</body>
</html>
