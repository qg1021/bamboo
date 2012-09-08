<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<%@page import="com.gm.bamboo.util.CommonUtils"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<%@ include file="/common/meta.jsp" %>
	<title>中国竹木工艺网(www.crafts-bamboo.com)-更改密码</title>
	<meta content="pass" name="activemenu" />
	<link href="${ctx}/css/master.css" type="text/css" rel="stylesheet"/> 
	<link href="${ctx}/js/validate/jquery.validate.css" type="text/css" rel="stylesheet"/>
	<script src="${ctx}/js/jquery.js" type="text/javascript"></script>
	<script src="${ctx}/js/validate/jquery.validate.js" type="text/javascript"></script>
	<script src="${ctx}/js/validate/messages_cn.js" type="text/javascript"></script>
	<script src="${ctx}/js/PCASClass.js" type="text/javascript"></script>
	<script type="text/javascript" >
		$(document).ready(function() { 
		//聚焦第一个输入框
		$("#nick").focus();
		$("#inputForm").validate({
			rules: {
				oldpass: {
					required: true,
					minlength:6,
					maxlength:18
				},
				password: {
					required: true,
					minlength:6,
					maxlength:18
				},
				qpassword: {
					required: true,
					equalTo: "#password"
				}
			},
			messages: {
				oldpass: {
					required: "输入当前密码",
					minlength:"长度不小于6位",
					maxlength:"长度不大于20位"
				},
				password: {
					required: "输入新密码",
					minlength:"长度不小于6位",
					maxlength:"长度不大于20位"
				},
				qpassword: {
					required: "输入确认密码",
					equalTo: "两次密码不相同"
				}
			},errorPlacement: function(error, element) {   
 		        if (document.getElementById("error_"+element.attr("name")))  {
 		            error.appendTo("#error_"+element.attr("name"));  
 		        }else       
 		            error.insertAfter(element);   
 		        }
			});	
	});
		</script>
</head>
<body>
<div id="wrapper"> 
		<div id="header">
			<%@ include file="/common/header.jsp" %>
			<%@ include file="/common/menu.jsp" %>
		</div>
		<!-- 正文内容 start -->
		<div id="content"> 
		    <!-- 左侧菜单 总shell start -->
		    <%@ include file="/common/userleft.jsp" %>
		    <!-- 左侧菜单 总shell end --> 
		    
			<!-- 右侧内容 start -->
    		<div class="right_shell"> 
				<h2 class="mb10 box_solid_bottom">更改密码</h2>
				<p>
					<s:actionmessage theme="custom" cssClass="success_box"/>
				</p>
				<form id="inputForm" name="inputForm" action="user!savePass.action" method="post">
	    			<input id="id" name="id" type="hidden" value="${id}" size="30"/>
			        <ul class="form_list">
			        	<li> 
			            	<span class="colorred">以下有<b>*</b>的内容为必填项：</span>
			            </li>
			            <li> 
			            	<label>用户名<b>*</b></label>
			            	${loginName}
			            </li>
			            <li>
			             	<label>当前密码<b>*</b></label>
			             	<input id="oldpass" name="oldpass"  type="password" size="30"/><span id="error_oldpass" class="rr"></span>
			            </li>
			            <li>
			             	<label>确认密码<b>*</b></label>
			             	<input id="password" name="password" type="password" size="30"/><span id="error_password" class="rr"></span>
			            </li>
			            <li>
				             <label>确认密码<b>*</b></label>
				             <input id="qpassword" name="qpassword"  type="password" size="30"/><span id="error_qpassword" class="rr"></span>
				        </li>
	        		</ul>
	 				<p class="button_box">
	 					<button class="course_btn_orange" type="submit">保存</button> 
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