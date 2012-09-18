<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<%@page import="com.gm.bamboo.contant.Global"%>
<div title="中间广告位显示">
	<s:iterator value="centerAdList" status="st">
		<div class="middle_ad ll" style="margin-right:2px;">
			<a target="_blank" href="${linkurl}" title="${title}">
				<img src="${ctx}<%=Global.picpath%>${picurl}" width="235" height="84" border="0"/>
			</a>
		</div>			
	</s:iterator>
</div>