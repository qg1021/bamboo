<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="org.springside.modules.security.springsecurity.SpringSecurityUtils"%>
<%@ include file="/common/taglibs.jsp" %>
<%@page import="com.gm.bamboo.contant.Global"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>  
	<%@ include file="/common/meta.jsp" %>
	<meta content="indexnews" name="headmenu" />
	<meta content="news" name="menu" />
	<link href="${ctx}/css/front.css" rel="stylesheet" type="text/css" /> 
	<link href="${ctx}/css/page.css" rel="stylesheet" type="text/css" /> 
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
		        <li class="ll"><a href="indexnews.action">行情资讯</a></li>
		        <li class="title_mo">这是箭头</li>
		        <li class="ll">列表</li>
		        <li class="rr">共${page.totalCount}条</li>
      		</ul>
    	</div>
    	<div class="l_col">
    		<form id="mainForm" name="mainForm" action="indexnews!search.action">
    			<input type="hidden" id="keyword" name="keyword" value="${param['keyword']}"/>
    			<input type="hidden" id="type" name="type" value="${param['type']}"/>
	      	<div class="newslist">
	        	<ul>
	        		<s:iterator value="page.result">
		            	<li title="${title}">
		                	<span class="rr">
		                    	<s:date name="publishdate" format="yyyy-MM-dd"/>
		                    </span>
		                    <span class="ntitle">
		                    	<s:if test="link!=null && link!=''">
		                    		<a href="${link}" target="_blank" class="ellipsis">
                                		<common:cut len="50" string="${title}"/> 
                                	</a>
		                    	</s:if>
		                    	<s:else>
	                                <a href="indexnews!input.action?id=${id}" target="_blank" class="ellipsis">
	                                	<common:cut len="50" string="${title}"/> 
	                                </a>
                                </s:else>
                            </span>
		                 </li>
	                 </s:iterator>
	           	</ul>
	        </div>
	        <%@ include file="/common/page.jsp"%>
	        </form>
  		</div>
  		<!--左边内容结束-->
  		<!--右边内容开始-->
  		<div class="r_col">
   			<%@ include file="/common/leftlogin.jsp" %>
   			<div class="rr" style="margin-top:3px;">
					<img border="0" width="242"  alt="" src="http://pigimg.zhongso.com/space/gallery/infoimgs/zm/zmgyp/20100126/2010012609395812592.gif"/>
			</div>
			<div class="rr" style="margin-top:3px;">
					<img border="0" width="242"  alt="" src="http://pigimg.zhongso.com/space/gallery/infoimgs/zm/zmgyp/20100126/2010012609395812592.gif"/>
			</div>
  		</div>
  <!--右边内容结束-->  

		
	</div>
	<%@include file="/common/footer.jsp" %>
</div>
</body>
</html>
