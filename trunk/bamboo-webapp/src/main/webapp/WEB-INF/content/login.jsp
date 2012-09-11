<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<%@ page import="org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter" %>
<%@ page import="org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter" %>
<%@ page import="org.springframework.security.core.AuthenticationException" %>
<%@page import="org.springside.modules.security.springsecurity.SpringSecurityUtils"%>
<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>登录中国竹木工艺网</title>
<%@ include file="/common/meta.jsp" %>
<link href="${ctx}/css/front.css" rel="stylesheet" type="text/css" /> 
<link href="${ctx}/css/login.css" rel="stylesheet" type="text/css" /> 
<link href="${ctx}/js/validate/jquery.validate.css" type="text/css" rel="stylesheet" />
<script src="${ctx}/js/jquery.js" type="text/javascript"></script>
<script src="${ctx}/js/jquery.cookie.js" type="text/javascript"></script>
<script src="${ctx}/js/validate/jquery.validate.js" type="text/javascript"></script>
<script src="${ctx}/js/validate/messages_cn.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	//聚焦第一个输入框
	$("#j_username").focus();
	initLogin();//记住用户名
	$("#inputForm").validate({
		rules: {
			j_username: "required", 
			j_password: "required" 
		},
		messages: {
			j_username: {
				required: "请输入用户名"
			},
			j_password: {
				required: "请输入密码"
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
function onSubmit() {
	 if($("#inputForm").valid()){
		 doLogin();
	 	$("#inputForm").submit();
	 }	
}
document.onkeydown = function(e){    
	e = e || window.event;   
	if(e.keyCode === 13){        
	 onSubmit();   
	}
};
function doLogin()  
{  
	/** 实现记住密码功能 */    
    var n = $('#j_username').val();
    if($('#remeberme').attr('checked')){  
        $.cookie('username', n, {expires:7});  
    }else{  
        $.cookie('username', null);  
    }     
}
function initLogin(){
	var n = $.cookie('username');
    if(n!=null) {
        $('#j_username').val(n);
        $('#remeberme').attr('checked',"true");
    }
}
</script>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<%@ include file="/common/header.jsp" %>
		<%@ include file="/common/menu.jsp" %>
	</div>
	<div id="content">
			<div class="supertitle">
      			<h2 class="stitle">登录中国竹木工艺网</h2>
    		</div>
    		<div class="frontform">
      			<div class="errormsg">   
					<%
						if (session.getAttribute(AbstractAuthenticationProcessingFilter.SPRING_SECURITY_LAST_EXCEPTION_KEY) != null) {
					%>
						<font color="red">登录失败，用户名或密码错误.</font>
					<%
						session.removeAttribute(AbstractAuthenticationProcessingFilter.SPRING_SECURITY_LAST_EXCEPTION_KEY);
						}
					%>
	  			</div>
      			<div class="login_box">
        			<p class="font333 font_s16 mb10 lh400"> <b>- 已经注册了，请登录...</b> </p>
        			<form id="inputForm" name="inputForm" action="${ctx}/j_spring_security_check"  method="post">
	        			<ul>
	          				<li class="items "> 
	          					<span class="label02"> 用户名 </span>
	           					<input class="input" type="text" id="j_username"  name="j_username"><span id="error_j_username"></span>
				           <!-- <div class="prompt ll ">
				              <p class="prompt_err  ml10 ll "> 您提供的凭证有误 </p>
				            </div>-->
	          				</li>
	         				<li class="items clearit"> 
	         					<span class="label02"> 密码 </span>
	            				<input class="input" type="password" id="j_password" name="j_password"><span id="error_j_password"></span>
	          				</li>
	          				<li class="rememberme clearit">
            					<label style="width:20px;">
              						<input type="checkbox" name="remeberme" id="remeberme" onclick="doLogin();"/>
            					</label>
            					记住我的登录名 
            				</li>
	        			</ul>
	        			<div id="buttonbox" class="btnbox m20 button01 clearl">
	          				<input type="submit" value="登 录"/>
	        			</div>
        			</form>
        			<div class="loign_f font_s14 ll">
          				<p class=" ll"> <a  href="findpwd.action">忘记密码？</a> </p>
          				<p class=" rr"> - 还没有注册？<a  href="register.action"> 请注册&gt;&gt;</a></p>
        			</div>
      			</div>
      			<div class="toreg rr"></div>
    		</div>
    	</div>
    	<%@ include file="/common/footer.jsp" %>
	</div>
</body>
</html>

