<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %> 
<script type="text/javascript">
	$(document).ready(function() { 
		var activemenu = $('meta[name="headmenu"]').attr("content");
 
		if(activemenu){
    		var tag = $('#' + activemenu);
			tag.removeClass("fff");
			tag.addClass("fffs");
		}
	});
</script>
<div class="headermenu">
	<ul>
	<li id="index" class="fff">
		<a href="${ctx}/index.action">首页</a>
	</li>
	<li id="indexsupply" class="fff">
	<a  href="indexsupply.action">供应中心</a>
	</li>
	<li id="indexbuy" class="fff">
	<a  href="indexbuy.action">求购中心</a>
	</li>
	<li id="indexbusiness" class="fff">
	<a  href="indexbusiness.action">品牌招商</a>
	</li>
	<li id="indexnews" class="fff">
	<a  href="indexnews.action">行情资讯</a>
	</li>
	<li id="indexcompany" class="fff">
		<a href="indexcompany.action">企业信息</a>
	</li>
	</ul>
</div>
