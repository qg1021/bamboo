<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="org.springside.modules.security.springsecurity.SpringSecurityUtils"%>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>  
	<%@ include file="/common/meta.jsp" %>
	<meta content="index" name="headmenu" />
	<link href="${ctx}/css/front.css" rel="stylesheet" type="text/css" /> 
	<script src="${ctx}/js/jquery.js" type="text/javascript"></script>
</head>
<body>
<c:import url="${appurl}/advert!indexfloat.action"/>	
<%@ include file="/common/nav.jsp" %>
<div id="wrapper">
	<div id="header">
		<%@ include file="/common/headersearch.jsp" %>
		<%@ include file="/common/menu.jsp" %>
	</div>
	<div id="content">
		<div class="shell01">
			<c:import url="${appurl}/category.action"/>
			<!-- focus  start -->
			<div class="index_focus_box">
				<c:import url="${appurl}/advert!indextab.action"/>
				<div id="tt" class="easyui-tabs" style="width:465px;margin-top:5px;"> 
					<c:import url="${appurl}/indexcompany!part.action"/> 
					<c:import url="${appurl}/indexbusiness!part.action"/>	
					<c:import url="${appurl}/indexsupply!part.action"/>	
					<c:import url="${appurl}/indexbuy!part.action"/>		
				</div>
			</div>
			<!-- focus  end -->
			<!-- 公告新闻  start -->
			<div class="index_announce rr">
				<%@ include file="/common/leftlogin.jsp" %>
				<p class="clearb"></p>
				<c:import url="${appurl}/advert!indexright.action"/>
			</div>
			<p class="clearb"></p>
			<c:import url="${appurl}/advert!indexcenter.action"/>
			<div style="margin-right:9px;" class="index_news_2box ll">
				<c:import url="${appurl}/indexnews!part.action?mtype=0&psize=8"/>
			</div>
			<div style="margin-right:9px;" class="index_news_2box">
				<c:import url="${appurl}/indexnews!part.action?mtype=1&psize=8"/>
			</div>
			<div  class="index_news_2box">
				<c:import url="${appurl}/indexnews!part.action?mtype=2&psize=8"/>
			</div>
			<c:import url="${appurl}/advert!indexnews.action"/>
			<p class="clearb"></p>
			<div style="margin-right:9px;" class="index_news_2box ll">
				<c:import url="${appurl}/indexnews!part.action?mtype=3&psize=8"/>
			</div>
			<div style="margin-right:9px;" class="index_news_2box">
				<c:import url="${appurl}/indexnews!part.action?mtype=4&psize=8"/>
			</div>
			<div  class="index_news_2box">
				<c:import url="${appurl}/indexnews!part.action?mtype=5&psize=8"/>
			</div>
		</div>
		<p class="clearb" ></p>
		<div class="ta_c" ><img src="demo/vip.gif" width="960"/></div>
		<c:import url="${appurl}/links.action"/>
		<%@include file="/common/footer.jsp" %>
	</div>
</div>
</body>
</html>
