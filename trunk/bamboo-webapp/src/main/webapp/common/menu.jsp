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
	<li class="fff">
	<a href="index_1.html">供应</a>
	</li>
	<li class="fff">
	<a href="index_8.html">求购</a>
	</li>
	<li class="fff">
	<a href="index_4.html">招商</a>
	</li>
	<li class="fff">
	<a href="index_7.html">资讯</a>
	</li>
	<li class="fff">
		<a href="index_10.html">行情</a>
	</li>
	<li class="fff">
	<a href="index_4.html">品牌</a>
	</li>
	</ul>
</div>
