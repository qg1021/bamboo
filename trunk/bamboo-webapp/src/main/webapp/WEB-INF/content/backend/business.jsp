<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<%@page import="com.gm.bamboo.contant.Global"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<%@ include file="/common/meta.jsp" %>
	<title>中国竹木工艺网(www.bamboo-crafts.cn)-招商信息</title>
	<meta content="business" name="activemenu" />
	<link href="${ctx}/css/master.css" type="text/css" rel="stylesheet"/> 
	<script src="${ctx}/js/jquery.js" type="text/javascript"></script>
	<script src="${ctx}/js/jcommon.js" type="text/javascript"></script>
	<script  type="text/javascript">
	$(document).ready(function() {
		$("#checkall").click(function(){
 			$("input[name='ids']").attr("checked",$(this).attr("checked"));
 		});
	});
	function onBatchDelete(){
		var  isChecked=false;
		$("input[name='ids']:checked").each(function(){
			isChecked = true;
		});
		if(!isChecked){
			alert("选择删除的记录");
			return false;
		}

		if(confirm("确认删除？")){
			$("#mainForm").attr("action","business!batchDelete.action").submit();
		}
	}
	function onPublish(){
		var  isChecked=false;
		$("input[name='ids']:checked").each(function(){
			isChecked = true;
		});
		if(!isChecked){
			alert("选择发布的记录");
			return false;
		}

		if(confirm("确认发布？")){
			$("#mainForm").attr("action","business!publish.action").submit();
		}
	}
	function onCancel(){
		var  isChecked=false;
		$("input[name='ids']:checked").each(function(){
			isChecked = true;
		});
		if(!isChecked){
			alert("选择取消发布的记录");
			return false;
		}

		if(confirm("确认取消发布？")){
			$("#mainForm").attr("action","business!cancelPublish.action").submit();
		}
	}
	
	</script>
</head>
<body> 
	<div id="wrapper"> 
		<%@include file="/common/header.jsp" %>
		<%@include file="/common/adminnav.jsp" %>
		<!-- 正文内容 start -->
		<div id="content"> 
		    <!-- 左侧菜单 总shell start -->
		    <%@include file="/common/adminleft.jsp" %>
		    <!-- 左侧菜单 总shell end --> 
		    
			<!-- 右侧内容 start -->
    		<div class="right_shell"> 
			<h2 class="mb10 box_solid_bottom">招商信息</h2>
				<div id="message" style="line-height: 35px;">
					<s:actionmessage theme="custom" cssClass="tipbox"/>
				</div>
    			<form id="mainForm" action="business.action" method="post">
					<div class="box_search">
						<ul>
							<li>
								<input type="submit" value="查询" class="rr" />							
								<span>
									<label class="ml20">标题</label>
									<input type="text" id="title" name="filter_LIKES_title" size="30" value="${param['filter_LIKES_title']}"/>
								</span>
								<span>
									<label class="ml20">状态</label>
		                     	 	<s:select list="#{'true':'已发布','false':'未发布'}"  id="ispublic" name="filter_EQB_ispublic"  value="#parameters.filter_EQB_ispublic" cssStyle="width:85px;" headerKey="" headerValue="--全 部--"/> 
		                     	 </span>
							</li>
						</ul>
					</div> 
					<p class="ll mt15">
	    				<button id="btnCreate" type="button" onclick="window.location.href='business!input.action'">新增</button>
	    				<button id="btnDelete" type="button" onclick="onBatchDelete();">删除</button>
	    				<button id="btnPublish" type="button" onclick="onPublish();">发布</button>
	    				<button id="btnCancel" type="button" onclick="onCancel();">取消发布</button>
    				</p>
					<table class="tablebox">
					    <tr>
					    	<th width="5%"><input type="checkbox" id="checkall" name="checkall"/></th>
					        <th width="20%">标题</th>
					        <th width="50%">链接</th>
					        <th width="10%">是否发布</th>
					        <th width="15%">操作</th>
					    </tr>
	    				<s:iterator value="page.result" status="st">
						   <tr>
						   		<td title=""><input type="checkbox" id="ids" name="ids" value="${id}"/></td>
						        <td title="${title}"><common:cut string="${title}" len="30"/></td>
						        <td>${linkurl}</td>
						        <td>${statusName}</td>
						        <td>
						        	<a href="business!input.action?id=${id}">修改</a>&nbsp;&nbsp;
						        	<a href="javaScript:delRecord('business!delete.action?id=${id}');">删除</a>
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