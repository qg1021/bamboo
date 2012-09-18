<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<div title="品牌招商" class="index_news">  
	<ul>
		<s:iterator value="businessList">
			<li title="${title}">
             	<s:if test="linkurl!=null && linkurl!=''">
                 		<a href="${linkurl}" target="_blank" >
                           		<common:cut len="50" string="${title}"/> 
                           	</a>
                 	</s:if>
                 	<s:else>
                        <a href="indexbusiness!input.action?id=${id}" target="_blank">
                        	<common:cut len="50" string="${title}"/> 
                        </a>
                    </s:else>
              </li>
		</s:iterator>
	</ul> 
</div>

