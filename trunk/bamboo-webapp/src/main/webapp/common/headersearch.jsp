<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<link href="${ctx}/css/easyui.css" rel="stylesheet" type="text/css" />
<script src="${ctx}/js/jquery.easyui.min.js" type="text/javascript"></script>
<script type="text/javascript">
function tabSearch(indexmenu){
	$("#span_supply").removeClass("selected");
	$("#span_buy").removeClass("selected");
	$("#span_business").removeClass("selected");
	$("#span_news").removeClass("selected");
	$("#span_company").removeClass("selected");
	if(indexmenu!=''){
		$("#span_"+indexmenu).addClass("selected");
		$("#key_search").attr("action","${ctx}/index"+indexmenu+"!search.action");
	}else{
		$("#span_supply").addClass("selected");
		$("#key_search").attr("action","${ctx}/indexsupply!search.action");
	}
}
$(document).ready(function() { 
	var activemenu = $('meta[name="menu"]').attr("content");

	if(activemenu){
		var tag = $('#' + activemenu);
		tag.removeClass("fff");
		tag.addClass("fffs");
		tabSearch(activemenu);
	}else{
		tabSearch("");
	}
});
function onSearch(value){
	if(value!=''){
		$('#keyword').val(value);
		$('#key_search').submit();
	}
}
</script>
<div class="top_head">
	<div class="ll"><a href="${ctx}/"><img border="0"  alt="中国竹木工艺网" src="${ctx}/css/image/top.jpg"/></a></div>
	<div class="search rr">
		<dl>
			<dt id="webSelect">
				<span id="span_supply" style="cursor:pointer;" onclick="tabSearch('supply');">供应</span>
				<span id="span_buy" style="cursor:pointer;" onclick="tabSearch('buy');">求购</span>
				<span id="span_business" style="cursor:pointer;" onclick="tabSearch('business');">招商</span>
				<span id="span_news" style="cursor:pointer;" onclick="tabSearch('news');">资讯</span>
				<span id="span_company" style="cursor:pointer;" onclick="tabSearch('company');">企业</span>
				
			</dt>
			<dd>
				<input class="easyui-searchbox" value="${param['keyword']}" data-options="prompt:'输入关键字',menu:'#mm',searcher:function(value,name){onSearch(value);}" style="width:350px"></input>
			</dd>
		</dl>
		<form id="key_search" name="key_search" method="post" action="indexsupply.action">
			<input type="hidden" id="keyword" name="keyword" value="${param['keyword']}"/>
		</form>
	</div>
</div>