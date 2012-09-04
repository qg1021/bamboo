<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<%@ include file="/common/meta.jsp" %>
	<title>中国竹木工艺网(www.bamboo-crafts.cn)-产品分类管理</title>
	<meta content="category" name="activemenu" />
	<link href="${ctx}/css/master.css" type="text/css" rel="stylesheet"/> 
	<script src="${ctx}/js/jquery.js" type="text/javascript"></script>
	<script src="${ctx}/js/jcommon.js" type="text/javascript"></script>
	<script  type="text/javascript">
	$(document).ready(function() {
		$("#checkall").click(function(){
 			$("input[id='ids']").attr("checked",$(this).attr("checked"));
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
			$("#mainForm").attr("action","category!delete.action").submit();
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
			<h2 class="mb10 box_solid_bottom">产品分类管理</h2>
				<div id="message" style="line-height: 35px;">
					<s:actionmessage theme="custom" cssClass="tipbox"/>
				</div>
    			<form id="mainForm" action="category.action" method="post">
					<input type="hidden" name="parentId" id="parentId" value="${parentId}"/>
					<s:if test="parentId != null">
						<div style="height: 25px;"><a href="category.action">返回上级栏目</a>(${category.name})</div>
						<button id="btnDelete" type="button" onclick="onBatchDelete();">删除</button>	
					</s:if>
					<button id="btnCreate" type="button" onclick="location.href='category!input.action?parentId=${parentId}'">新增</button>
	    			 
					<table class="tablebox mt10">
						<tr>
		       	 			<th width="5%"><input type="checkbox" id="checkall" name="checkall"/></th>
		          			<th width="5%" >No</th>
				  			<s:if test="parentId != null">
				  				<th width="35%">栏目名称</th>
				  				<th width="15%">上级栏目名称</th>
				  			</s:if>
				  			<s:else>
				  				<th width="55%">栏目名称</th>
				  			</s:else> 
		          			<th width="40%">操作</th>
		        		</tr>
 	  	 				<s:iterator value="page.result" status="st">
                    		<tr>
                        		<td>
                           			<input type="checkbox" id="ids" name="ids" value="${id}"/>
                        		</td>  
                        		<td  title="${page.first + st.index}">
                            		&nbsp;${page.first + st.index}
                        		</td>
                        		<s:if test="parentId != null">
                        			<td title="${name}"><common:cut len="20" string="${name}" />&nbsp;</td>
                        			<td title="${parent.name}"><common:cut len="20" string="${parent.name}" />&nbsp;</td>
                        		</s:if>
                        		<s:else>
                        			<td title="${name}"><common:cut len="20" string="${name}" />&nbsp;</td>
                        		</s:else> 
                        		<td>
                        			<a href="category!input.action?id=${id}&parentId=${parentId}">修改</a>
	                        		<s:if test="parentId!=null">
										<a href="#" onclick="delRecord('category!delete.action?id=${id}&parentId=${parentId}');">删除</a>
						  			</s:if>	 
									<s:else>
						 				<a href="category.action?parentId=${id}">进入下级栏目</a>
						 			</s:else>
                       			</td> 
                    		</tr>
                		</s:iterator> 
					    <s:if test="page.result.size ==0">
							<tr> 
								<s:if test="parentId != null">
					  				<td height="30" align="center" colspan="5"><font color="gray">没有符合条件的记录</font></td>
				  				</s:if>
				  				<s:else>
				  					<td height="30" align="center" colspan="4"><font color="gray">没有符合条件的记录</font></td>
				  				</s:else>
								
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