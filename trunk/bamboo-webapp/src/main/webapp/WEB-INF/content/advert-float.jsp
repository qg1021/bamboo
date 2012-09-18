<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<%@page import="com.gm.bamboo.contant.Global"%>
<!-- 左侧广告  start -->
<div id="ad_left" class="ad_left">
	<span onclick="javaScipt:$('#ad_left').hide();">关闭</span>
	<s:iterator value="floatLeftAdList" >
		<a href="${linkurl}" title="${title}" target="_blank"><img src="${ctx}<%=Global.picpath%>${picurl}" width="83" height="168" border="0"/></a>
	</s:iterator>
</div>
<!-- 左侧广告  end -->

<!-- 右侧广告  start -->
<div id="ad_right" class="ad_right">
	<span onclick="javaScipt:$('#ad_right').hide();">关闭</span>
	<s:iterator value="floatRightAdList">
		<a href="${linkurl}" title="${title}" target="_blank"><img src="${ctx}<%=Global.picpath%>${picurl}" width="83" height="168" border="0"/></a>
	</s:iterator>
</div>