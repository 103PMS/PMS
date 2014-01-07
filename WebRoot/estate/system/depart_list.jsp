<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@taglib prefix="s" uri="/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>部门列表</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/list.css" />
<script type="text/javascript"  src="<%=path %>/js/util.js"></script>
</head>

<body onload="SelectCBox()">
    <div id="div_table">
       <fieldset>
         <legend>部门列表</legend>
         
         
          <div class="search">
           <from action="" method="">
           	   按部门名称搜索：<input type="text" name="">
           	   &nbsp;<input type="submit" value="搜索"/>
           </from>
         </div>
         
         <div>
           <a href="to_depart_add.action" class="add_btn" target="main">添加部门</a>
         </div>
       
       
           <table>
              <tr>
                <th></th>
                <th>序号</th>
                <th>部门名称</th>
                <th>部门负责人</th>
                <th>部门电话</th>
                <th>操作</th>
               </tr>
               
           <%int i = 0; %>
           <s:iterator value="departList">
                <tr>
                <td><input type="checkbox" class="checkbox" name="id" value="<s:property value="departId"/>"/></td>
                <td><%=++i %></td>
                <td><s:property value="departName"/></td>
                <td><s:property value="user.userName"/></td>
                <td><s:property value="departPhone"/></td>
                <td><a href="depart_check.action?id=${departId}" class="like_btn">查看</a>&nbsp;|&nbsp;<a href="depart_edit.action?id=${departId}" class="like_btn">编辑</a></td>
             </s:iterator>
                </tr>
                
                <tr>
                  <td colspan="6" id="t_foot">
                  <a href="#" class="like_btn"  id="selectAll">全选</a>
                  <a href="#" class="like_btn" id="selectOthers">反选</a>
                  <a href="#" class="like_btn" id="selectNone">取消</a>
                  <a href="#" class="like_btn" onclick="deleteChecked('id','departDelete.action')">删除</a>
                 <td>&nbsp;
                </tr>
                
                <tr>
                  <td colspan="6" id="t_last">
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
