<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<div title="供应信息" class="index_news">  
	<ul>
		<s:iterator value="supplyList">
			<li title="${title}">
             	<span class="rr">
                 	<s:date name="publishdate" format="yyyy-MM-dd"/>
                 </span>
  					<a href="indexsupply!input.action?id=${id}" target="_blank"><common:cut len="50" string="${title}"/></a>
              </li>
		</s:iterator>
	</ul> 
</div>

