<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>XXX小区物业管理系统</title>
</head>

  <frameset rows="64,*" frameborder="no" border="0" framespacing="0">
        <frame src="top.jsp"/>
        <frameset cols="182,*">
            <frame src="menu.jsp" scrolling="yes"/>
            <frame src="main.html" name="main" />
        </frameset>
    </frameset>
    
</html>
