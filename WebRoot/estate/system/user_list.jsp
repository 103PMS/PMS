<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>用户列表</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/list.css" />
<script type="text/javascript"  src="<%=path %>/js/util.js"></script>
</head>

<body onload="SelectCBox()">
    <div id="div_table">
       <fieldset>
         <legend>用户列表</legend>
         
          <div class="search">
           <from action="" method="">
           	   按用户姓名搜索：<input type="text" name="">
           	 <input type="submit" value="搜索"/>
           </from>
         </div>
         
         <div>
           <a href="<%=path %>/estate/system/user_add.jsp" class="add_btn" target="main">添加用户</a>
         </div>
       
       
           <table>
              <tr>
                <th></th>
                <th>序号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>出生日期</th>
                <th>电话号码</th>
                <th>邮箱</th>
                <th>所属部门</th>
                <th>职位</th>
                <th>操作</th>
               </tr>
                
                <tr>
                <td><input type="checkbox" class="checkbox" /></td>
                <td>1</td>
                <td>张三</td>
                <td>男</td>
                <td>1988-09-25</td>
                <td>12342</td>
                <td>1902392@163.com</td>
                <td>维修部</td>
                <td>电工</td>
                <td><a href="<%=path %>/estate/system/user_check.jsp" class="like_btn">查看</a>&nbsp;|&nbsp;<a href="<%=path %>/estate/system/user_edit.jsp" class="like_btn">编辑</a></td>
             
                <tr>
                <td><input type="checkbox" class="checkbox"/></td>
                <td>2</td>
                <td>张三</td>
                <td>男</td>
                <td>1988-09-25</td>
                <td>12342</td>
                <td>1902392@163.com</td>
                <td>维修部</td>
                <td>电工</td>
                <td><a href="" class="like_btn">查看</a>&nbsp;|&nbsp;<a href="" class="like_btn">编辑</a></td>
                </tr>
                
                
                <tr>
                  <td colspan="10" id="t_foot">
                  <a href="#" class="like_btn"  id="selectAll">全选</a>
                  <a href="#" class="like_btn" id="selectOthers">反选</a>
                  <a href="#" class="like_btn" id="selectNone">取消</a>
                  <a href="#" class="like_btn">删除</a>
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
