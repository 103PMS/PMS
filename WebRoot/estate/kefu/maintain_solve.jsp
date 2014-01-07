<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>住户报修处理</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/add.css" />
<!-- 选择日期插件-->
<script language="javascript" type="text/javascript" src="<%=path %>/js/My97DatePicker/WdatePicker.js"></script>
</head>

<body>
  <div id="div_form">
      <fieldset>
         <legend>&nbsp;<a href="<%=path %>/estate/kefu/maintain_list.jsp">住户报修列表</a>&nbsp;>>>&nbsp;住户报修处理</legend>
	         <form action="" method="">
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
		          <td> 报修主题：</td>
		          <td><input type="text" name="" readonly="readonly"/></td>
		      </tr>
		      
		      <tr>
		         <td valign="top" align="center"> 报修内容：</td>
		         <td> <textarea readonly="readonly"></textarea></td>
		      </tr>
		      
		       <tr>
		          <td> 报修日期：</td>
		          <td><input type="text" name="" readonly="readonly"/></td>
		      </tr>
		      
		       <tr>
			          <td>处理状态：</td>
			          <td>
			          	<select name="">
			          		<option>未处理</option>
			          		<option>处理中</option>
			          		<option>已处理</option>
			          	</select>
			          </td>
			      </tr>
			      
			      <tr>
			          <td>维修人员：</td>
			          <td>
			          	<select name="">
			          		<option></option>
			          	</select>
			          </td>
			     </tr>
		      
		       
		      
		       <tr>
		         <td valign="top" align="center"> 处理方法：</td>
		         <td> <textarea name=""></textarea></td>
		      </tr>
		      
		      <tr>
		          <td> 维修费用：</td>
		          <td><input type="text" name="" /></td>
		      </tr>
		      
		      <tr>
		          <td> 服务费用：</td>
		          <td><input type="text" name="" /></td>
		      </tr>
		      
		      <tr>
		          <td> 总费用：</td>
		          <td><input type="text" name="" /></td>
		      </tr>
		      
		      
		       <tr>
		          <td> 处理日期：</td>
		          <td><input type="text"  name="" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"/></td>
		      </tr>
		      

      </table>
      
            <input type="button" value="取消" class="btn"/>
	        <input type="submit" value="保存" class="btn"/>
      
      
	
	         </form>
      
      </fieldset>
  </div>
</body>
</html>
