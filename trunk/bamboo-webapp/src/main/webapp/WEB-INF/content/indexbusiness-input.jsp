<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="org.springside.modules.security.springsecurity.SpringSecurityUtils"%>
<%@ include file="/common/taglibs.jsp" %>
<%@page import="com.gm.bamboo.contant.Global"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>  
	<%@ include file="/common/meta.jsp" %>
	<meta content="indexbusiness" name="headmenu" />
	<meta content="business" name="menu" />
	<link href="${ctx}/css/front.css" rel="stylesheet" type="text/css" /> 
	<script src="${ctx}/js/jquery.js" type="text/javascript"></script>

</head>
<body>
<%@ include file="/common/nav.jsp" %>
<div id="wrapper">
	<div id="header">
		<%@ include file="/common/headersearch.jsp" %>
		<%@ include file="/common/menu.jsp" %>
	</div>
	<div id="content">
		<div class="title">
      		<span class="title_icon">&nbsp;</span>
      		<ul>
		        <li class="ll"><a href="indexbusiness!search.action">品牌招商</a></li>
		        <li class="title_mo">这是箭头</li>
		        <li class="ll">${title}</li>
      		</ul>
    	</div>
    	<div class="l_col">
	      	<div class="detailbox">
        	<div class="newstitle">
          		<p class="news_fonttitle style_newstitle_color">${title}</p>
        	</div>
        	<s:if test="picurl!=null && picurl!=''">
	        	<p class="clearb"></p>
	        	<div class="ll">
	        		<img border="0" src="${ctx}/<%=Global.picpath%>/${picurl}" width="320" height="150"/>
	        	</div>
	        	<p class="clearb"></p>
        	</s:if>
        	<span class="news_details_con"> 
        		${remark}
        	</span>
      </div>
  		</div>
  		<!--左边内容结束-->
  		<!--右边内容开始-->
  		<div class="r_col">
   			<%@ include file="/common/leftlogin.jsp" %>
   			<div class="rr" style="margin-top:3px;">
					<a href="${ctx}/links!detail.action?mtype=3" target="_blank"><img border="0" width="242"  alt="" src="http://pigimg.zhongso.com/space/gallery/infoimgs/zm/zmgyp/20100126/2010012609395812592.gif"/></a>
			</div>
			<c:import url="${appurl}/advert!indexright.action"/>
  		</div>
  <!--右边内容结束-->  

		
	</div>
	<%@include file="/common/footer.jsp" %>
</div>
</body>
</html>
