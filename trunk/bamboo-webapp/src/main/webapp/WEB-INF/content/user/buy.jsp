<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<%@ include file="/common/meta.jsp" %>
	<title>中国竹木工艺网(www.crafts-bamboo.com)-求购</title>
	<meta content="buy" name="activemenu" />
	<link href="${ctx}/css/master.css" type="text/css" rel="stylesheet"/> 
	<script src="${ctx}/js/jquery.js" type="text/javascript"></script>
	<script src="${ctx}/js/jcommon.js" type="text/javascript"></script>
	<script  type="text/javascript">
	$(document).ready(function() {
		$("#checkall").click(function(){
 			$("input[name='ids']").attr("checked",$(this).attr("checked"));
 		});
	});

	
	</script>
</head>
<body> 
	<div id="wrapper"> 
		<%@include file="/common/header.jsp" %>
		<%@include file="/common/menu.jsp" %>
		<!-- 正文内容 start -->
		<div id="content"> 
		    <!-- 左侧菜单 总shell start -->
		    <%@ include file="/common/userleft.jsp" %>
		    <!-- 左侧菜单 总shell end --> 
		    
			<!-- 右侧内容 start -->
    		<div class="right_shell"> 
			<h2 class="mb10 box_solid_bottom">求购信息</h2>
				<p>
					<s:actionmessage theme="custom" cssClass="success_box"/>
				</p>
    			<form id="mainForm" action="buy.action" method="post">
					<div class="box_search">
						<ul>
							<li>
								<input type="submit" value="查询" class="rr" />							
								<span>
									<label class="ml20">标题</label>
									<input type="text" id="title" name="filter_LIKES_title" size="30" value="${param['filter_LIKES_title']}"/>
								</span>
		                     	<span>
									<label class="ml20">一级分类</label>
		                     	 	<s:select list="oneCatList" onclick="showTwoCat();"  id="oneCatid" name="oneCatid"  listKey="id" listValue="name"  value="oneCatid" cssStyle="width:120px;" headerKey="" headerValue="--全 部--"/> 
		                     	</span>
		                     	<span>
									<label class="ml20">二级分类</label>
		                     	 	<s:select list="twoCatList"  id="twoCatid" name="twoCatid"  listKey="id" listValue="name"  value="twoCatid" cssStyle="width:120px;" headerKey="" headerValue="--全 部--"/> 
		                     	</span>
							</li>
							<li>
								<span>
									<label class="ml20">状态</label>
		                     	 	<s:select list="#{'true':'已发布','false':'未发布'}"  id="ispublish" name="filter_EQB_ispublish"  value="#parameters.filter_EQB_ispublish" cssStyle="width:85px;" headerKey="" headerValue="--全 部--"/> 
		                     	</span>
							</li>
						</ul>
					</div> 
					<p class="ll mt15">
	    				<button id="btnCreate" type="button" onclick="window.location.href='buy!input.action'">新增</button>
    				</p>
					<table class="tablebox">
					    <tr>
					    	<th width="5%"><input type="checkbox" id="checkall" name="checkall"/></th>
					        <th width="20%">标题</th>
					        <th width="15%">产品名称</th>
					        <th width="20%">所属分类</th>
					        <th width="15%">创建时间</th>
					        <th width="10%">是否发布</th>
					        <th width="15%">操作</th>
					    </tr>
	    				<s:iterator value="page.result" status="st">
						   <tr>
						   		<td title=""><input type="checkbox" id="ids" name="ids" value="${id}"/></td>
						        <td title="${title}"><common:cut string="${title}" len="30"/></td>
						        <td title="${name}"><common:cut string="${name}" len="20"/></td>
						        <td>
						        	${categoryName}
						        </td>
						        <td><s:date name="createdate" format="yyyy-MM-dd HH:mm"/></td>
						        <td>${statusName}</td>
						        <td>
						        	<s:if test="ispublish">
						        		<a href="buy!input.action?id=${id}&isedit=true">查看</a>
						        	</s:if>
						        	<s:else>
						        		<a href="buy!input.action?id=${id}">修改</a>&nbsp;&nbsp;
						        		<a href="javaScript:delRecord('buy!delete.action?id=${id}');">删除</a>
						        	</s:else>
						        </td>
						    </tr>
					    </s:iterator>
					    <s:if test="page.result.size ==0">
							<tr> 
								<td height="30" align="center" colspan="7"><font color="gray">没有符合条件的记录</font></td>
							</tr>  
						</s:if>      
	    			</table>
	    			<%@ include file="/common/page.jsp"%>
				</form>   
    		</div>
    <!-- 右侧内容 end --> 
			<p class=" del_float"></p>
		</div>
		<!-- 正文内容 end --> 
	      <%@include file="/common/footer.jsp" %>
	</div>
</body>
</html>