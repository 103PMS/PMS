<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link rel="stylesheet" href="<%=path %>/css/reset.css" />
<link rel="stylesheet" href="<%=path %>/css/top.css" />
</head>
<body>
<div id="top">
  <img src="../images/logo.png" />
  
  <div>
       <ul>
    
          <li>你好,欢迎使用XXX小区物业管理系统</li>
          <li>[<a href="#">首页</a>]</li>
          <li>[<a href="#">修改密码</a>]</li>
          <li>[<a href="#">注销退出</a>]</li>
          
       </ul>
  </div>
</div>
</body>
</html>
