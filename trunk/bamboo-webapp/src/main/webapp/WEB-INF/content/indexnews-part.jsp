<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<div  class="rightmenu">
	<p class="category_header mb5">
		<a class="rr mt5" href="indexnews!search.action?type=${mtype}"><img src="css/image/more.png"/></a>${newsName}
	</p>
	<ul>
		<s:iterator value="partNewList">
			<li title="${title}">
             	<span class="rr">
                 	<s:date name="publishdate" format="yyyy-MM-dd"/>
                 </span>
                 <span class="ntitle">
                 	<s:if test="link!=null && link!=''">
                 		<a href="${link}" target="_blank" class="ellipsis">
                           		<common:cut len="20" string="${title}"/> 
                           	</a>
                 	</s:if>
                 	<s:else>
                            <a href="indexnews!input.action?id=${id}" target="_blank" class="ellipsis">
                            	<common:cut len="20" string="${title}"/> 
                            </a>
                           </s:else>
                       </span>
              </li>
		</s:iterator>
	</ul> 
</div>

