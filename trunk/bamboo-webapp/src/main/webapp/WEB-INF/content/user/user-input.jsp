<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<%@page import="com.gm.bamboo.util.CommonUtils"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<%@ include file="/common/meta.jsp" %>
	<title>中国竹木工艺网(www.crafts-bamboo.com)-用户管理</title>
	<meta content="user" name="activemenu" />
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
				nick: {
					required: true,
					maxlength:8
				},
				name: {
					required: true,
					maxlength:8
				},
				sex: {
					required: true
				},
				linktel: {
					required: true
				},
				pwdquestion: {
					required: true,
					maxlength:20
				},
				pwdanswer: {
					required: true,
					maxlength:20
				},
				province: {
					required: true
				},				
				city: {
					required: true
				},
				area: {
					required: true
				},
				address: {
					required: true
				},
				email:{
					email:true
				}
			},
			messages: {
				nick: {
					required: "输入昵称",
					maxlength:"长度不大于10位"
				},
				name: {
					required: "输入姓名",
					maxlength:"长度不大于10位"
				},
				sex: {
					required: "输入性别"
				},
				linktel: {
					required: "输入联系方式",
					maxlength:"长度不大于10位"
				},
				pwdquestion: {
					required: "输入密码问题",
					maxlength:"长度不大于20位"
				},
				pwdanswer: {
					required: "输入密码答案",
					maxlength:"长度不大于20位"
				},
				email:{
					email:"邮箱不合法"
				},
				province: {
					required: "选择省"
				},
				city: {
					required: "选择市"
				},
				area: {
					required: "选择区"
				},
				address: {
					required: "输入详细地址"
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
				<h2 class="mb10 box_solid_bottom">修改个人信息</h2>
				<p>
					<s:actionmessage theme="custom" cssClass="success_box"/>
				</p>
				<form id="inputForm" name="inputForm" action="user!save.action" method="post">
	    		<input id="id" name="id" type="hidden" value="${id}" size="30"/>
			        <ul class="form_list">
			        	<li> 
			            	<span class="colorred">以下有*的内容为必填项：</span>
			            </li>
			            <li> 
			            	<label>用户名<b>*</b></label>
			            	${loginName}
			            </li>
			            <li>
			             	<label>昵称<b>*</b></label>
			             	<input id="nick" name="nick" value="${nick}" type="text" size="30"/><span id="error_nick" class="rr"></span>
			            </li>
			            <li>
			             	<label>姓名<b>*</b></label>
			             	<input id="name" name="name" value="${name}" maxlength="15" type="text" size="30"/><span id="error_name" class="rr"></span>
			            </li>
			            <li>
			             	<label>性别<b>*</b></label>
			             	<s:select list="#{'男':'男','女':'女'}"  id="sex" name="sex" value="sex" headerKey="" headerValue="--选择--"   theme="simple"/><span id="error_sex" class="rr"></span>
			            </li>
			            <li>
			             	<label>联系方式<b>*</b></label>
			             	<input id="linktel" name="linktel" value="${linktel}" maxlength="15" type="text" size="30"/><span id="error_linktel" class="rr"></span>
			            </li>
			            <li>
			            	<label>通信地址</label>
			            	<select id="province" name="province"></select><span id="error_province" ></span>
							<select id="city" name="city"></select><span id="error_city" ></span>
							<select id="area" name="area"></select><span id="error_area"></span>
							<script type="text/javascript">
								new PCAS("province","city","area","${province}","${city}","${area}");
							</script>
							<p>&nbsp;</p>
							<p class="ml_100">
								<input id="address" name="address" value="${address}" maxlength="50" type="text" size="30"/><span id="error_address" class="rr"></span>
							</p>
			            </li>
			            <li>
	            			<label>密码问题<b>*</b></label>
	            			<input type="text" id="pwdquestion" name="pwdquestion" value="${pwdquestion}" maxlength="50" size="30"/><span id="error_pwdquestion" class="rr"></span>
	          			</li>
	          			<li>
	            			<label>密码答案<b>*</b></label>
	            			<input type="text" id="pwdanswer" name="pwdanswer" value="${pwdanswer}" maxlength="50" size="30"/><span id="error_pwdanswer" class="rr"></span>
	          			</li>
	          			<li>
	            			<label>电子邮箱</label>
	            			<input type="text" size="30" id="email" name="email" value="${email}"/><span id="error_email" class="rr"></span>
	          			</li>
	          			<li>
	            			<label>教育经历</label>
	            			<s:select  list="educationList" listKey="label" listValue="value" id="edudegree" name="edudegree"  value="edudegree"  theme="simple" cssStyle="width:150px"  headerKey="" headerValue="--选择--"/>
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