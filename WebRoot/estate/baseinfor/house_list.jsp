<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>房产信息列表</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/list.css" />
<script type="text/javascript"  src="<%=path %>/js/util.js"></script>
</head>

<body onload="SelectCBox()">
    <div id="div_table">
       <fieldset>
         <legend>房产信息列表</legend>
         
         
         <div class="search">
           <from action="" method="">
           	   按房产编号搜索：<input type="text" name="">
           	 <input type="submit" value="搜索"/>
           </from>
         </div>
         
         
          <div class="search">
           <from action="" method="">
           	      按是否卖出搜索：<input type="radio" name="house_sell">是
           	 <input type="radio" name="house_sell">否
           	  <input type="submit" value="搜索"/>
           </from>
         </div>
         
         <div>
           <a href="<%=path %>/estate/baseinfor/house_add.jsp" class="add_btn" target="main">添加房产信息</a>
         </div>
       
       
           <table>
              <tr>
                <th></th>
                <th>序号</th>
                <th>房产编号</th>
                <th>房产名</th>
                <th>占地面积(m<sup>3</sup>)</th> 
                <th>建筑面积(m<sup>3</sup>)</th>
                <th>绿化面积(m<sup>3</sup>)</th>
                <th>是否卖出</th>
                <th>操作</th>
               </tr>
                
                <tr>
                <td><input type="checkbox" class="checkbox" /></td>
                <td>1</td>
                <td>101</td>
                <td>第一幛101号</td>
                <td>120</td>
                <td>100</td>
                <td>20</td>
                <td>否</td>
                <td><a href="<%=path %>/estate/baseinfor/house_edit.jsp" class="like_btn">编辑</a></td>
             
                
                
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
