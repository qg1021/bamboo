<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<!-- 产品分类  start -->
<div class="index_category">
	<p><img src="css/image/category_head.png"/></p>
	<div class="category_bk">
		<s:iterator value="catList">
			<p class="category_title">
			<a class="rr mt5" href="indexsupply!search.action?onecat=${category.id}"><img src="css/image/more.png"/></a>${category.name}</p>
			<ul>
				<s:iterator value="categoryList">
				<li><a href="indexsupply!search.action?twocat=${id}">${name}</a></li>
				</s:iterator>
			</ul>
			<p class="clearb"></p>
		</s:iterator>
	</div>
</div>
<!-- 产品分类  end -->

