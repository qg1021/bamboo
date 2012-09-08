<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<link href="${ctx}/css/easyui.css" rel="stylesheet" type="text/css" />
<script src="${ctx}/js/jquery.easyui.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	var index = 0;
	var t = $('#tt');
	var tabs = t.tabs('tabs');
	setInterval(function(){
		t.tabs('select', tabs[index].panel('options').title);
		index++;
		if (index >= tabs.length){
			index = 0;
		}
	}, 3000);
}); 
</script>
<div class="top_head">
	<div class="ll"><a href="${ctx}"><img border="0"  alt="中国竹木工艺网" src="${ctx}/css/image/top.jpg"/></a></div>
	<div class="search rr">
		<dl>
			<dt id="webSelect">
				<span class="">供应</span>
				<span class="">求购</span>
				<span class="">招商</span>
				<span class="">品牌</span>
				<span class="selected">资讯</span>
			</dt>
			<dd>
				<input class="easyui-searchbox" data-options="prompt:'输入关键字',menu:'#mm',searcher:function(value,name){alert(value+':'+name)}" style="width:350px"></input>
			</dd>
		</dl>
	</div>
</div>