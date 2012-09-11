<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>中国竹木工艺网(www.bamboo-crafts.cn)</title>
<link href="${ctx}/css/master.css" rel="stylesheet" type="text/css" />
<script src="${ctx}/js/jquery.js" type="text/javascript"></script> 
<script type="text/javascript" src="${ctx }/js/DatePicker/WdatePicker.js" ></script>
</head>
<body>
	<div id="wrapper"> 
		<%@include file="/common/header.jsp" %>
		<%@include file="/common/adminnav.jsp" %>
		<!-- 正文内容 start -->
		<div id="content"> 
		    <!-- 左侧菜单 总shell start -->
		    <%@include file="/common/adminleft.jsp" %>
		    <!-- 左侧菜单 总shell end --> 
		    
			<!-- 右侧内容 start -->
    		<div class="right_shell"> 
				<table cellSpacing=0 cellPadding=0 width="90%" align=center border=0>
			<tr height=100>
				<td align="center" width=100>
					<img height="100" src="${ctx}/css/image/admin_p.gif" width="90"/></td>
				<td width=60>&nbsp;</td>
				<td>
				<table height=100 cellSpacing=0 cellPadding=0 width="100%" border=0>
					<tr>
						<td><h2 class="stitle" align="center">欢迎进入网站后台！</h2></td>
					</tr>
				</table>
				</td>
			</tr>
			<tr>
				<td colSpan=3 height=10></td>
			</tr>
		</table>
    		</div>
    <!-- 右侧内容 end --> 
			<p class=" del_float"></p>
		</div>
		<!-- 正文内容 end --> 
	      <%@include file="/common/footer.jsp" %>
	</div>
</body>
</html>

