<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>收费标准编辑</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/add.css" />
</head>

<body>
  <div id="div_form">
      <fieldset>
         <legend>&nbsp;<a href="<%=path %>/estate/system/charstandard_list.jsp">收费标准列表</a>&nbsp;>>>&nbsp;收费标准修改</legend>
         <form action="" method="">
             收费名称：<input type="text" name="charstandard.charstand_name" /></br>
           收费价格：<input type="text"  name="charstandard.charstand_price"  /></br>
   &nbsp;&nbsp;&nbsp;&nbsp;单位：<input type="text"  name="charstandard.charstand_piece" /></br>
           收费方式：
           <select name="charstandard.charstand_ways">
           <option>按住户</option>
           <option>按使用面积</option>
           <option>按使用量</option>
           <option>自定义</option>
           </select>

           ,每隔<input type="text" name="charstandard.charstand_cycle"  style="width:40px;"/>个月收取一个</br>
            </br>
           
           <input type="button" value="取消" class="btn"/>
           <input type="submit" value="保存" class="btn"/>
           
         </form>
      
      </fieldset>
  </div>
</body>
</html>
