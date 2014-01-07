<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<%@taglib prefix="s" uri="/struts-tags"  %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>电表列表</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/list.css" />
<script type="text/javascript"  src="<%=path %>/js/util.js"></script>
</head>

<body onload="SelectCBox()">
    <div id="div_table">
       <fieldset>
         <legend>电表列表</legend>
         
         <div>
           <a href="<%=path %>/estate/baseinfor/ammeter_add.jsp" class="add_btn" target="main">添加电表</a>
         </div>
       
       
           <table>
              <tr>
                <th></th>
                <th>序号</th>
                <th>电表编号</th>
                <th>操作</th>
               </tr>
                
                <%int i = 0; %>
                <s:iterator value="ammeterList">
                <tr>
                <td><input type="checkbox" class="checkbox" name="id" value="<s:property value="ammeterId"/>"/></td>
                <td><%=++i %></td>
                <td><s:property value="ammeterNumber"/></td>
                <td><a href="ammeter_edit.action?id=${ammeterId}" class="like_btn">编辑</a></td>
                </tr>
                </s:iterator>
                
                <tr>
                  <td colspan="10" id="t_foot">
                  <a href="#" class="like_btn"  id="selectAll">全选</a>
                  <a href="#" class="like_btn" id="selectOthers">反选</a>
                  <a href="#" class="like_btn" id="selectNone">取消</a>
                  <a href="#" class="like_btn" onclick="deleteChecked('id','ammeterDelete.action')">删除</a>
                 <td>
                </tr>
                
                <tr>
                  <td colspan="10" id="t_last">
                    <a href="#" class="like_btn">首页</a>
                    <a href="#" class="like_btn">上一页</a>
                    <a href="#" class="like_btn">下一页</a>
                    <a href="#" class="like_btn">尾页</a>
                    共1条记录，当前第1/1页，每页1条记录。
                  </td>
                </tr>
    
    
        </table>
  
       </fieldset>

       
    </div>
 
</body>
</html>
