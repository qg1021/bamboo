<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<%@page import="com.gm.bamboo.contant.Global"%>
<link href="${ctx}/css/cycle.css" rel="stylesheet" type="text/css" />
<script src="${ctx}/js/jquery.cycle.js" type="text/javascript"></script>
<div class="index_focus">
	<div class=js_imgs_block>
		<div id="slideshow_wrapper">
			<div id="slideshow_photo">
				<s:iterator value="tabAdList" status="st">
					<a style="z-index: 1" href="${linkurl}" title="${title}" target="_blank" index="${st.count}">
						<img src="<%=Global.picpath%>/${picurl}" width="465" height="300" border="0"/>
					</a> 
				</s:iterator>
			  </div>
			<div id=slideshow_footbar></div>
	     </div>
	</div>
</div>
