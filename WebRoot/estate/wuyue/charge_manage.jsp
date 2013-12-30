<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>缴费管理</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/add.css" />
<script type="text/javascript"  src="<%=path %>/js/util.js"></script>
<!-- 选择日期插件-->
<script language="javascript" type="text/javascript" src="<%=path %>/js/My97DatePicker/WdatePicker.js"></script>
</head>

<body onload="SelectCBox()">
    <div id="div_form">
       <fieldset>
         <legend>缴费管理</legend>
           <form action="" method="">
	           <table>   
		       
		       <tr>
		          <td>缴费类型：</td>
		          <td>
		          	<select name="">
		          		<option></option>
		          	</select>
		          </td>
		      </tr>
		      
		      <tr>
		         <td>房产编号：</td>
		         <td>
		            <select name="">
		          		<option></option>
		          	</select>
		         
		         </td>
		      </tr>
		      
		       <tr>
		          <td>日期：</td>
		          <td><input type="text" name=""  onClick="WdatePicker()"/></td>
		      </tr>
		      
		      
		       <tr>
		          <td> 是否已缴费：</td>
		          <td><input type="radio" name="name" value="是">是
		          <input type="radio" name="name" value="否">否
		          </td>
		      </tr>
		      
      </table>
      
            <input type="button" value="取消" class="btn"/>
	        <input type="submit" value="搜索" class="btn"/>
      
      
	
	         </form>
	         
         </div>
       
       
       </fieldset>

       
    </div>
 
</body>
</html>
