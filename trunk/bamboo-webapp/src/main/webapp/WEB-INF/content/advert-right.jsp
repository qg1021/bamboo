<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<%@page import="com.gm.bamboo.contant.Global"%>
<div  class="easyui-tabs rr" style="width:245px;margin-top:5px;"> 
	<div title="产品展示" class="index_left">  
		<s:iterator value="rightAdList" status="st">
	        <p>
	        	<a target="_blank" href="${linkurl}"><img src="${ctx}<%=Global.picpath%>${picurl}" width="109" height="88" border="0"/><br>${title}</a>
	        </p>
        </s:iterator>
	</div>
</div>					
					
