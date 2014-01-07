<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>收费列表</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/list.css" />
<script type="text/javascript"  src="<%=path %>/js/util.js"></script>
</head>

<body onload="SelectCBox()">
    <div id="div_table">
       <fieldset>
         <legend>收费列表</legend>
         
          <div>
           <a href="<%=path %>/estate/wuyue/charge_manage.jsp" class="add_btn" target="main">返回</a>
         </div>
       
       
           <table>
              <tr>
                <th>序号</th>
                <th>房产编号</th>
                <th>收费名称</th>
                <th>收费总额(元)</th> 
                <th>费用时间</th>
                <th>已经缴纳的费用(元)</th>
                <th>剩余的费用(元)</th>
                <th>是否已缴费</th>
                <th>操作</th>
               </tr>
                
                <tr>
                <td>1</td>
                <td>1101</td>
                <td>水费</td>
                <td>555</td>
                <td>2013-12-31</td>
                <td>0</td>
                <td>555</td>
                <td>否</td>
                <td><a href="<%=path %>/estate/wuyue/charge_edit.jsp" class="like_btn">缴费</a></td>
             
                
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
