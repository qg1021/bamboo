<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<%@page import="com.gm.bamboo.util.CommonUtils"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<%@ include file="/common/meta.jsp" %>
	<title>中国竹木工艺网(www.bamboo-crafts.cn)-产品分类管理</title>
	<meta content="category" name="activemenu" />
	<link href="${ctx}/css/master.css" type="text/css" rel="stylesheet"/> 
	<link href="${ctx}/js/validate/jquery.validate.css" type="text/css" rel="stylesheet"/>
	<script src="${ctx}/js/jquery.js" type="text/javascript"></script>
	<script src="${ctx}/js/validate/jquery.validate.js" type="text/javascript"></script>
	<script src="${ctx}/js/validate/messages_cn.js" type="text/javascript"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		//聚焦第一个输入框
		$("#name").focus();
		$("#inputForm").validate({
 			rules: {
	 			name: {
					required: true,
					maxlength: 20
				}  
 			},
 			messages: {
 				name: {
 					required: "请输入栏目名称",
 					maxlength: "栏目名称最多为20个字符"
 				} 
 			},
 			errorPlacement: function(error, element) {   
		        if (document.getElementById("error_"+element.attr("name")))  {
		            error.appendTo("#error_"+element.attr("name"));  
		        }
		        else       
		            error.insertAfter(element);   
		        }
 		});
	});

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
				<form id="inputForm" action="category!save.action" method="post">
					<input type="hidden" name="id" id="id" value="${id}"/>
					<input type="hidden" name="parentId" id="parentId" value="${parentId}"/>　
					<input type="hidden" name="oldName" id="oldName" value="${name}"/>　
	    			<ul class="form">
						<li>以下有<b>*</b>的内容为必填项：</li>
						<li> 
            				<label>栏目名称<b>*</b></label>
            				<input type="text" value="${name}" id="name" name="name" style="width:180px;" maxlength="30"/>
          				</li>
         		 		<li>
            				<label>上级栏目名称</label>
            				<input type="text" value="<s:if test="id != null">${category.parent.name}</s:if><s:else>${category.name}</s:else>" name="parentName" disabled="disabled" style="width:180px;"/>  
          				</li>
					</ul>    
	 				<p class="button_box">
	 					<button class="course_btn_orange" type="submit">保存</button> &nbsp;
	 					<button class="course_btn_grey" type="button" onclick="location.href='category.action?parentId=${parentId }';">取消</button>&nbsp;
	 				</p> 
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