<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<%@page import="com.gm.bamboo.contant.Global"%>
<div  class="easyui-tabs rr" style="width:245px;margin-top:5px;"> 
	<div title="产品展示" class="index_left">  
		<s:iterator value="tabAdList" status="st">
	        <p>
	        	<a target="_blank" href="${linkurl}"><img src="<%=Global.picpath%>/${picurl}" width="109" height="88" border="0"/><br>桂竹刚竹淡竹红竹</a>
	        </p>
        </s:iterator>
	</div>
</div>					
					
