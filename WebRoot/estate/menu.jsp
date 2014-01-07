<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统菜单</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/menu.css" />
<script>
window.onload = function(){
	var aSupMenus = document.getElementsByClassName("sup_menu");
	var aSubMenus = document.getElementsByClassName("sub_menu");
	
	for(var i = 0; i < aSupMenus.length; i++){
		
		aSupMenus[i].onclick = function(){
			
			for(var i = 0; i < aSupMenus.length; i++){
				aSupMenus[i].index = i;
				aSubMenus[i].style.display="none";
				}
				
				aSubMenus[this.index].style.display="block";
			}
	
	}
	
	
}
</script>
</head>
<body>
  <ul id="menu">
  
    <li>
      <h1 class="sup_menu"><a href="#">系统管理</a></h1>
      <ul class="sub_menu">
          <li><a href="<%=path %>/estate/system/user_list.jsp" target="main">用户管理</a></li>
          <li><a href="depart_list.action" target="main">部门管理</a></li>
          <li><a href="<%=path %>/estate/system/profession_list.jsp" target="main">权限管理</a></li>
          <li><a href="<%=path %>/estate/system/charstandard_list.jsp" target="main">收费标准管理</a></li>
      </ul>
    </li>
    
       <li>
          <h1 class="sup_menu"><a href="#">基本信息管理</a></h1>
          <ul class="sub_menu">
             <li><a href="ammeter_list.action" target="main">电表管理</a></li>
              <li><a href="watermeter_list.action" target="main">水表管理</a></li>
              <li><a href="<%=path%>/estate/baseinfor/house_list.jsp" target="main">楼宇信息管理</a></li>
              <li><a href="<%=path%>/estate/baseinfor/resident_list.jsp" target="main">住户信息管理</a></li>
          </ul>
    </li>
    
    
       <li>
          <h1 class="sup_menu"><a href="#">客服管理</a></h1>
          <ul class="sub_menu">
              <li><a href="<%=path%>/estate/kefu/comp_list.jsp" target="main">住户投诉管理</a></li>
              <li><a href="<%=path%>/estate/kefu/maintain_list.jsp" target="main">住户报修管理</a></li>
          </ul>
       </li>
       
       <li>
          <h1 class="sup_menu"><a href="#">物业管理</a></h1>
          <ul class="sub_menu">
              <li><a href="<%=path%>/estate/wuyue/water_add.jsp" target="main">水表录入</a></li>
               <li><a href="<%=path%>/estate/wuyue/water_list.jsp" target="main">水表查询</a></li>
              <li><a href="<%=path%>/estate/wuyue/elect_add.jsp" target="main">电表录入</a></li>
              <li><a href="<%=path%>/estate/wuyue/elect_list.jsp" target="main">电表查询</a></li>
             <li><a href="<%=path%>/estate/wuyue/charge_manage.jsp" target="main">缴费管理</a></li>
          </ul>
       </li>
       
       
       
        <li>
          <h1 class="sup_menu"><a href="#">报修/投诉/缴费</a></h1>
          <ul class="sub_menu">
              <li><a href="<%=path%>/estate/tsandbx/bx_add.jsp" target="main">报修</a></li>
              <li><a href="<%=path%>/estate/tsandbx/ts_add.jsp" target="main">投诉</a></li>
              <li><a href="<%=path%>/estate/tsandbx/jf_manage.jsp" target="main">缴费</a></li>
              
          </ul>
       </li>
       
       
    
    
    
  </ul>
</body>
</html>
