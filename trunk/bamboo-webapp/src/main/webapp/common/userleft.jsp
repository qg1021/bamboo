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
      	<li>欢迎${entity.nick}!</li>
        <li>注册时间：<s:date name="entity.createDate" format="yyyy.MM.dd HH:mm"/></li>
        <li>登录次数：${entity.loginTimes}</li>
        <li>最后登录：<s:date name="entity.lastLoginDate" format="yyyy.MM.dd HH:mm"/></li>
      </ul>
      <ul class="leftmenu_tab">
      	<li><a href="${ctx}/j_spring_security_logout">退出</a></li>
        <li id="user"><a href="user!input.action">修改个人信息</a></li>
        <li id="pass"><a href="user!view.action">更改密码</a></li>
		<li id="a_3"><a href="userlist.htm">发布供应信息</a></li>
		<li id="a_4"><a href="#">发布求购信息</a></li>
		<li id="a_5"><a href="#">发布招商信息</a></li>
      </ul>
    </div>
    <!-- 左侧菜单 end --> 