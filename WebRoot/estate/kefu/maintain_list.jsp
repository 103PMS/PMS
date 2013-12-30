<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>住户报修管理</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/list.css" />
<script type="text/javascript"  src="<%=path %>/js/util.js"></script>
</head>

<body onload="SelectCBox()">

    <div id="div_table">
       <fieldset>
         <legend>住户报修列表--未处理</legend>
         
         <div class="search">
           <from action="" method="">
           	  按房产编号搜索：<input type="text" name="">
           	 &nbsp;按报修主题搜索：<input type="text">
           	 &nbsp;<input type="submit" value="搜索"/>
           </from>
         </div>
       
       
           <table>
              <tr>
                <th></th>
                <th>序号</th>
                <th>业主姓名</th>
                <th>房产编号</th>
                <th>报修主题</th>
                <th>报修日期</th>
                <th>处理状态</th>
                <th>操作</th>
               </tr>
                
                <tr>
                <td><input type="checkbox" class="checkbox" /></td>
                <td>1</td>
                <td>张三</td>
                <td>1101</td>
                <td><a href="<%=path %>/estate/kefu/maintain_check.jsp">暖气坏了</a></td>
                <td>1988-09-25 17:45:04</td>
                <td>未处理</td>
                <td><a href="<%=path %>/estate/kefu/maintain_solve.jsp" class="like_btn">处理</a></td>
                
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
    
    
    
     <div id="div_table">
       <fieldset>
         <legend>住户投诉列表--处理中</legend>
         
         <div class="search">
           <from action="" method="">
           	  按房产编号搜索：<input type="text" name="">
           	 &nbsp;按报修主题搜索：<input type="text">
           	 &nbsp;<input type="submit" value="搜索"/>
           </from>
         </div>
       
       
           <table>
              <tr>
                <th></th>
                <th>序号</th>
                <th>业主姓名</th>
                <th>房产编号</th>
                <th>报修主题</th>
                <th>报修日期</th>
                <th>处理状态</th>
                <th>操作</th>
               </tr>
                
                <tr>
                <td><input type="checkbox" class="checkbox" /></td>
                <td>1</td>
                <td>张三</td>
                <td>1101</td>
                <td><a href="<%=path %>/estate/kefu/maintain_check.jsp">暖气坏了</a></td>
                <td>1988-09-25 17:45:04</td>
                <td>处理中</td>
                <td><a href="<%=path %>/estate/kefu/maintain_solve.jsp" class="like_btn">处理</a></td>
                
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
    
    
    
     <div id="div_table">
       <fieldset>
         <legend>住户投诉列表--已处理</legend>
         
         <div class="search">
           <from action="" method="">
           	  按房产编号搜索：<input type="text" name="">
           	 &nbsp;按报修主题搜索：<input type="text">
           	 &nbsp;<input type="submit" value="搜索"/>
           </from>
         </div>
       
       
           <table>
              <tr>
                <th></th>
                <th>序号</th>
                <th>业主姓名</th>
                 <th>房产编号</th>
                <th>报修主题</th>
                <th>报修日期</th>
                <th>处理状态</th>
               </tr>
                
                <tr>
                <td><input type="checkbox" class="checkbox" /></td>
                <td>1</td>
                <td>张三</td>
                <td>1101</td>
                <td><a href="<%=path %>/estate/kefu/maintain_check.jsp">暖气坏了</a></td>
                <td>1988-09-25 17:45:04</td>
                <td>已处理</td>
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
