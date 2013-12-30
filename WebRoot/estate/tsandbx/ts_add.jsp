<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>住户投诉</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/add.css" />
<!-- 选择日期插件-->
<script language="javascript" type="text/javascript" src="<%=path %>/js/My97DatePicker/WdatePicker.js"></script>

</head>

<body>
  <div id="div_form">
      <fieldset>
         <legend>投诉</legend>
         
         <div>
           <a href="<%=path %>/estate/tsandbx/ts_list.jsp" class="add_btn" target="main">我的投诉记录</a>
         </div>
	         <form action="" method="">
	           <table>   
		       
		       <tr>
		          <td> 投诉主题：</td>
		          <td><input type="text" name="" /></td>
		      </tr>
		      
		      <tr>
		         <td valign="top" align="center">投诉内容：</td>
		         <td> <textarea></textarea></td>
		      </tr>
		      
		       <tr>
		          <td> 投诉日期：</td>
		          <td><input type="text" name="" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"/></td>
		      </tr>
		      
		      
		      <tr>
		          <td>房产名：</td>
		          <td>
		          	<select>
		          		<option></option>
		          	</select>
		          </td>
		      </tr>
		     
		      

      </table>
      
            <input type="button" value="取消" class="btn"/>
	        <input type="submit" value="提交" class="btn"/>
      
      
	
	         </form>
      
      </fieldset>
  </div>
</body>
</html>
