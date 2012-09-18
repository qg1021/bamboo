<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>忘记密码-中国竹木工艺网(www.crafts-bamboo.com)</title>
	<%@ include file="/common/meta.jsp" %>
	<meta content="无锡学习在线、教育动态、教育新闻、学习动态" name="keyword"/>
    <meta content="无锡学习在线教育动态频道" name="description"/>
	<link href="${ctx}/css/master.css" rel="stylesheet" type="text/css" />	
	<link href="${ctx}/js/validate/jquery.validate.css" type="text/css" rel="stylesheet"/>
	<script src="${ctx}/js/jquery.js" type="text/javascript"></script>
	<script src="${ctx}/js/validate/jquery.validate.js" type="text/javascript"></script>
	<script src="${ctx}/js/validate/messages_cn.js" type="text/javascript"></script>
	<script src="${ctx}/js/findpwd.js" type="text/javascript"></script>
</head>

<body>
<div id="wrapper"> 
  <!-- 正文内容 start -->
  <div id="content">
  	<div id="header">
		<%@ include file="/common/frontheader.jsp" %>
		<%@ include file="/common/menu.jsp" %>
	</div>
  	<div class="supertitle">
   		<div class="tologin">
        	<a href="${ctx}">返回首页&gt;&gt;</a>
       </div>
      <h2 class="stitle">忘记密码</h2>
  	</div>
    <!-- 内容 start -->
    <div class="reg_box"> 
		<!--忘记密码 start -->
        <div class="getpw" id="first_div" >
        	<p class="name">输入你的用户名 </p>
        	<ul>
        		<li>
        			<label>用户名</label>
        			<input  class="input" type="text" id="userName" name="userName" value="" maxlength="20"/>
        		</li>
        	</ul>
        	<p class="icon_cross" id="first_span" style="display:none">用户名不存在</p>
        	<p class="button_box"><button class="course_btn_common" type="button" onclick="onVaild();">确定</button></p>
       		<p class="font_s12">若忘记用户名，请将注册时的姓名email到 <a href="mailto:craftsbamboo@126.com">craftsbamboo@126.com</a> 找回用户名。</p>
        </div>
        <div id="second_div" style="display:none" class="getpw">
        	<p class="name">回答你注册时设定的密码问题 </p>
        	<ul>
        		<li>
        			<label>密码问题</label>
        			<span id="answer_span"></span>
        		</li>
        		<li>
        			<label>密码答案</label>
        			<input  class="input" type="text" id="answer" name="answer"/><p class="icon_cross rr" id="second_span" style="display:none">答案错误</p>
        		</li>
        	</ul>
        	
        	<p class="button_box"><button class="course_btn_common" type="button" value="确定" onclick="onAnswer();">确定</button></p>
        </div>
        <div id="third_div" style="display:none" class="getpw">
        	<p class="name">欢迎你，<span id="nick_span">anne!</span> 你的身份已被验证，请重新设置登录密码。 </p>
        	<ul>
        		<li>
        			<label>新密码</label>
        			<input  class="input"  type="password" id="pwd" name="pwd" value="" maxlength="18"/>
        		</li>
        		<li>
        			<label>重复新密码</label>
        			<input  class="input" type="password" id="repwd" name="repwd" value="" maxlength="18"/>
        		</li>
        	</ul>
        	<p class="icon_cross" id="third_span" style="display:none">两次输入的密码不一致</p>
        	<p class="button_box">
        		<button class="course_btn_common" type="button"  onclick="onSetPassword();">确定</button>
        	</p>
        </div>
        <div id="fourth_div" style="display:none" class="getpw">
        	<p class="name">新密码已生效，下次登录请使用新密码！ </p>
        	<p class="mt20"><a href="${ctx}" class="colororange">返回首页&gt;&gt;</a></p>
        </div>
      <!--忘记密码 end --> 
    </div>
    <!-- 内容 end --> 
  </div>
  <!-- 正文内容 end -->
  <%@ include file="/common/footer.jsp" %> 

</div>
    
</body>
</html>