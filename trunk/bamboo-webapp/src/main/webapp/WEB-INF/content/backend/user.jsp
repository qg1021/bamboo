<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<%@ include file="/common/meta.jsp" %>
	<title>中国竹木工艺网(www.bamboo-crafts.cn)-用户管理</title>
	<meta content="user" name="activemenu" />
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
			$("#mainForm").attr("action","user!batchDelete.action?mtype=${mtype}").submit();
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
			$("#mainForm").attr("action","user!publish.action?mtype=${mtype}").submit();
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
			$("#mainForm").attr("action","user!cancelPublish.action?mtype=${mtype}").submit();
		}
	}
	</script>
</head>
<body> 
	<div id="wrapper"> 
		<%@include file="/common/header.jsp" %>
		<!-- 正文内容 start -->
		<div id="content"> 
		    <!-- 左侧菜单 总shell start -->
		    <%@include file="/common/adminleft.jsp" %>
		    <!-- 左侧菜单 总shell end --> 
		    
			<!-- 右侧内容 start -->
    		<div class="right_shell"> 
			<h2 class="mb10 box_solid_bottom">${typeName.label}</h2>
				<div id="message" style="line-height: 35px;">
					<s:actionmessage theme="custom" cssClass="tipbox"/>
				</div>
    			<form id="mainForm" action="user.action?mtype=${mtype}" method="post">
					<div class="box_search">
						<ul>
							<li>
								<input type="submit" value="查询" class="rr" />							
								<span>
									<label class="ml20">用户名</label>
									<input type="text" id="loginName" name="filter_LIKES_loginName" size="20" value="${param['filter_LIKES_loginName']}"/>
								</span>
								<span>
									<label class="ml20">姓名</label>
									<input type="text" id="name" name="filter_LIKES_name" size="20" value="${param['filter_LIKES_name']}"/>
								</span>
								<span>
									<label class="ml20">昵称</label>
									<input type="text" id="nick" name="filter_LIKES_nick" size="20" value="${param['filter_LIKES_nick']}"/>
								</span>

							</li>
						</ul>
					</div> 
					<p class="ll mt15">
	    				<button id="btnCreate" type="button" onclick="window.location.href='user!input.action'">新增</button>
	    				<button id="btnDelete" type="button" onclick="onBatchDelete();">删除</button>
    				</p>
					<table class="tablebox">
					    <tr>
					    	<th width="5%"><input type="checkbox" id="checkall" name="checkall"/></th>
					        <th width="10%">用户名</th>
					        <th width="10%">姓名</th>
					        <th width="10%">昵称</th>
					        <th width="10%">性别</th>
					        <th width="10%">学历</th>
					        <th width="15%">创建时间</th>
					        <th width="30%">操作</th>
					    </tr>
	    				<s:iterator value="page.result" status="st">
						   <tr>
						   		<td title=""><input type="checkbox" id="ids" name="ids" value="${id}"/></td>
						   		<td >${loginName}</td>
						        <td >${name}</td>
						        <td >${nick}</td>
						        <td >${sex}</td>
						        <td >${edudegree}</td>
						        <td><s:date name="createDate" format="yyyy-MM-dd HH:mm"/></td>
						        <td>
						        	<a href="user!input.action?id=${id}">修改</a>&nbsp;&nbsp;
						        	<a href="javaScript:delRecord('user!delete.action?id=${id}');">删除</a>
						        	<a href="user!deaultUserPassword.action?id=${id}">重置密码</a>
						        </td>
						    </tr>
					    </s:iterator>
					    <s:if test="page.result.size ==0">
							<tr> 
								<td height="30" align="center" colspan="8"><font color="gray">没有符合条件的记录</font></td>
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