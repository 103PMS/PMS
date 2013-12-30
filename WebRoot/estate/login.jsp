<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>新建网页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="小区物业管理" />
<link rel="stylesheet" href="<%=path %>/css/reset.css" />
<link rel="stylesheet" href="<%=path %>/css/login.css" />
</head>
    <body>
    	<div  id="div1">
    	<div id="div2">
        
          <fieldset>
           <legend>XXX小区物业管理系统</legend>
        
    		<form action="" method="" >

                用户名：<input type="text"  name="username"/></br>
                密&nbsp;&nbsp;码：<input type="text" name="password"/></br>
                验证码：<input type="text"  name="code" id="code"/>
                <img src="../images/checkcode.png"  alt="验证码" title="验证码"/>
                <a href="#" >换一张</a>
                </br>
    
                <input type="submit" class='button' value="登陆"/>
                <input type="reset"  class='button' value="重置"/>
    	    </form>
            </fieldset>
    	</div>
    	</div>
    </body>
</html>
