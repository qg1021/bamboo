<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="org.springside.modules.security.springsecurity.SpringSecurityUtils"%>
<%@ include file="/common/taglibs.jsp" %>
<script type="text/javascript">
	$(document).ready(function() {
		$('#usercenter').bind({
			mouseover:function() {
				$('#usercenter').show();
			},
			mouseout:function() {
				$('#usercenter').hide();
			}
		});
	});
</script>
<div class="site_login">
<div class="shell976">
<span class="right_nav_bar" >
	中国竹木工艺网，欢迎您！
	<%if(SpringSecurityUtils.getCurrentUserName().equals("anonymousUser")){ %>
		<a href="${ctx}/user/index.action"><span class="red_rectangle">[登录]</span></a> | <a href="${ctx}/register.action"><span class="green_rectangle">[注册]</span></a>
		
	<%}else{%>
		<span><%=SpringSecurityUtils.getCurrentUserName()%></span>;您好!<span class="learn_center"  onmouseover="$('#usercenter').show();" onmouseout="$('#usercenter').hide();">我的会员中心>></span> 
		<a onclick="if (confirm('确定要退出吗？')) return true; else return false;" href="${ctx}/j_spring_security_logout" >[退出]</a> 
		<ul class="learn_center_popup" id="usercenter" style="display:none">
			<li><a href="${ctx}/user/user.action">进入中心</a></li>
			<li><a href="${ctx}/user!input.action">个人信息</a></li>
			<li><a href="${ctx}/user/user!view.action"">修改密码</a></li>
		</ul>
	<%}%>
</span>
<a style="outline:none;blr:expression(this.onFocus=this.blur())" onclick="javascript:setHomepage('http://www.crafts-bamboo.com/');">设为首页</a> | <a href="javascript:void(0);" onclick="addFavor('http://www.crafts-bamboo.com/', '中国竹木工艺网')" style="outline:none;blr:expression(this.onFocus=this.blur())">加入收藏</a> | <a href="${ctx}/links!detail.action?mtype=3">广告推广</a>
</div>
</div>