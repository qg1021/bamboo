<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<div  class="easyui-tabs" style="width:960px;margin-top:5px;">  
	<div title="友情链接" class="friendlink "> 
		<s:iterator value="linksList"> 
			-<span><a target="_blank" href="${linkurl}">${title}</a></span>
		</s:iterator>
	</div>
</div>

