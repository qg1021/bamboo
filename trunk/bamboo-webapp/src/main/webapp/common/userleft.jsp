<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<script type="text/javascript">
      	$(document).ready(function() {
	        $('.tree ul').hide();
	    	var activemenu = $('meta[name="activemenu"]').attr("content");
	    	if(!activemenu)
	    		activemenu = $('#activemenu').val();
	    	if(activemenu){
	    		var tag = $('#' + activemenu);
	    		tag.addClass('selected');
	    	}
      	});
        </script>
<!-- 左侧菜单 start -->
	<div class="title">
		<span class="title_icon"> </span>
		<ul>
			<li class="ll">位置</li>
			<li class="title_mo">这是箭头</li>
			<li class="ll"><a>会员中心</a></li>
		</ul>
	</div>
    <div class="leftmenu_shell">
      <ul class="lh180 mb10">
      	<li>欢迎${loginuser.nick}!</li>
        <li>注册时间：<s:date name="#session.loginuser.createDate" format="yyyy.MM.dd HH:mm"/></li>
        <li>登录次数：${loginuser.loginTimes}</li>
        <li>最后登录：<s:date name="#session.loginuser.lastLoginDate" format="yyyy.MM.dd HH:mm"/></li>
      </ul>
      <ul class="leftmenu_tab">
      	<li><a href="${ctx}/j_spring_security_logout">退出</a></li>
        <li id="user"><a href="user!input.action">修改个人信息</a></li>
        <li id="pass"><a href="user!view.action">更改密码</a></li>
		<li id="buy"><a href="buy.action">发布求购信息</a></li>
		<li id="supply"><a href="supply.action">发布求购信息</a></li>
		<li id="business"><a href="business.action">发布招商信息</a></li>
		<li id="company"><a href="company.action">发布企业信息</a></li>
      </ul>
    </div>
    <!-- 左侧菜单 end --> 