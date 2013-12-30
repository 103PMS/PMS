<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>电表表列表</title>
<link  rel="stylesheet" href="<%=path %>/css/reset.css" />
<link  rel="stylesheet" href="<%=path %>/css/list.css" />
<script type="text/javascript"  src="<%=path %>/js/util.js"></script>
<!-- 选择日期插件-->
<script language="javascript" type="text/javascript" src="<%=path %>/js/My97DatePicker/WdatePicker.js"></script>
</head>

<body onload="SelectCBox()">
    <div id="div_table">
       <fieldset>
         <legend>水表列表</legend>
         
          <div class="search">
           <from action="" method="">
           	  按房产编号搜索：<input type="text" name="">
           	 &nbsp;按日期搜索：<input type="text" name="" onClick="WdatePicker()">
           	&nbsp;<input type="submit" value="搜索"/>
           </from>
         </div>
       
       
           <table>
              <tr>
                <th></th>
                <th>序号</th>
                <th>房产编号</th>
                <th>上个月电表读数数(<sup>。</sup>)</th>
                <th>这个月电表读数(<sup>。</sup>)</th> 
                <th>总用电数</th>
                <th>录入时间</th>
                <th>操作</th>
               </tr>
                
                <tr>
                <td><input type="checkbox" class="checkbox" /></td>
                <td>1</td>
                <td>1101</td>
                <td>444</td>
                <td>555</td>
                <td>111</td>
                <td>2013-12-31</td>
                <td><a href="<%=path %>/estate/wuyue/elect_edit.jsp" class="like_btn">修改</a></td>
             
                
                
                <tr>
                  <td colspan="10" id="t_foot">
                  <a href="#" class="like_btn"  id="selectAll">全选</a>
                  <a href="#" class="like_btn" id="selectOthers">反选</a>
                  <a href="#" class="like_btn" id="selectNone">取消</a>
                  <a href="#" class="like_btn">计费</a>
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
