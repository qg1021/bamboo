<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="coursestat" name="activemenu" />
<title>后台管理（数字电大）</title>
<link href="${ctx}/css/master.css" rel="stylesheet" type="text/css" />
<script src="${ctx}/js/jquery.js" type="text/javascript"></script> 
<script type="text/javascript" src="${ctx }/js/DatePicker/WdatePicker.js" ></script>
</head>
<body>
	<div id="wrapper"> 
	<%@include file="/common/header.jsp" %>
		<!-- 正文内容 start -->
		<div id="content"> 
		    <!-- 左侧菜单 总shell start -->
		    <%@include file="/common/adminleft.jsp" %>
		    <!-- 左侧菜单 总shell end --> 
		    
			<!-- 右侧内容 start -->
    <div class="right_shell"> 
	<h2 class="mb10 box_solid_bottom"> 课程学习统计</h2>
<form name="form" action="${ctx}/admin/coursestat.action" method="post">
<div class="box_search">
<ul>
<li>
<input type="submit" value="查询" class="rr" />

<span>时间周期 <input type="text" readonly="readonly" id="beginDate" value="${statVO.beginDate}" name="statVO.beginDate" onclick="WdatePicker();" size="10" /> 至
<input type="text" readonly="readonly" id="endDate" value="${statVO.endDate}" name="statVO.endDate" onclick="WdatePicker();" size="10" /></span>
<span>课程代码 <input type="text" size="20" value="${statVO.code}" name="statVO.code"/></span>
<span>课程名称 <input type="text" size="20" value="${statVO.name}" name="statVO.name"/></span>
</li>
</ul>
</div> 

<table class="tablebox">
   <tr>
   <th>课程名称</th>
   <th>课程代码</th>
   <th>选课人数</th>
   <th>学习时间（分钟）</th>
   </tr>
   <tr>
   	<td colspan="2">汇总</td>
   	<td>${count.num}</td>
   	<td>${count.min}</td>
   </tr>
   <s:iterator value="page.result" status="st">
   <tr>
   <td><a href="coursestat!course.action?id=${id}">${name}</a></td>
   <td>${code}</td>
   <td>${num}</td>
   <td>${min}</td>
   </tr>
   </s:iterator>
   
   </table>

</form>   
 
    
    </div>
    <!-- 右侧内容 end --> 
			<p class=" del_float"></p>
		</div>
		<!-- 正文内容 end --> 
	      <%@include file="/common/footer.jsp" %>
	</div>
</body>
</html>

