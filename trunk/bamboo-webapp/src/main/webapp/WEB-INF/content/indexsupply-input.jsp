<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="org.springside.modules.security.springsecurity.SpringSecurityUtils"%>
<%@ include file="/common/taglibs.jsp" %>
<%@page import="com.gm.bamboo.contant.Global"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>  
	<%@ include file="/common/meta.jsp" %>
	<meta content="indexsupply" name="headmenu" />
	<meta content="supply" name="menu" />
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
		        <li class="ll"><a href="indexsupply.action">供应中心</a></li>
		        <li class="title_mo">这是箭头</li>
		        <li class="ll">${title}</li>
      		</ul>
    	</div>
    	<div class="l_col">
	      	<div class="detailbox">
        	<div class="newstitle">
          		<p class="news_fonttitle style_newstitle_color">${title}</p>
        	</div>
        	<p class="clearb"></p>
        	<div class="ll">
        		<img border="0" src="${ctx}/<%=Global.picpath%>/${picurl}" width="320" height="150"/>
        	</div>
        	<div class="rr" style="margin-right:60px;">
        		<ul class="detailform">
        			<li>
        				<label>发布时间:</label>
        				<s:date name="publishdate" format="yyyy-MM-dd"/>
        			</li>
        			<li>
        				<label>有效时间:</label>
        				<s:date name="indate" format="yyyy-MM-dd"/>
        			</li>
        			<li>
        				<label>产品名称:</label>
        				${name}
        			</li>
        			<li>
        				<label>所属分类:</label>
        				${categoryName}
        			</li>
        			<li>
        				<label>经营模式:</label>
        				${bmodel}
        			</li>
        			<%if(SpringSecurityUtils.getCurrentUserName().equals("anonymousUser")){ %>
					<li>
						<b>查看联系方式;</b>请<a href="${ctx}/user/index.action"><span class="red_rectangle">[登录]</span></a> 或
						 <a href="${ctx}/register.action"><span class="green_rectangle">[注册]</span></a>！
					</li>
					<%}else{%>
						<li>
							<label>联系人:</label>
							${linkman}
						</li>
						<li>
							<label>联系方式:</label>
							电话：${linktel} 手机：${mobile}
						</li>
						<li>
							<label>联系地址:</label>
							${province}${city}${area}${address}
						</li>
						<li>
							<label>邮编:</label>
							${postcode}
						</li>
					<%}%>
        		</ul>
        	</div>
        	<p class="clearb"></p>
        	<span class="news_fonttitle">描述：</span><span class="news_details_con"> 
        		${desciption}
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
