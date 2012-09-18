<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<script type="text/javascript">
	//加入收藏
	function addFavor(url,title){
		if (document.all) {  
		  		window.external.AddFavorite(url, title); 
		  } else if (window.sidebar) { 
		  		window.sidebar.addPanel(title, url,""); 
		  } else if ( window.opera && window.print ) { 
				var mbm = document.createElement('a'); 
				  mbm.setAttribute('rel','sidebar'); 
				  mbm.setAttribute('href',url); 
				  mbm.setAttribute('title',title); 
				  mbm.click(); 
		  } else { 
		  		alert("收藏失败！请使用Ctrl+D进行收藏"); 
		  }
		}

	//设为首页
	function setHomepage(pageURL) {
		if (document.all) {
			document.body.style.behavior='url(#default#homepage)';
			document.body.setHomePage(pageURL);
		}
		else if (window.sidebar) {
			if(window.netscape) {
				try {
					netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
				}
				catch (e) {
					alert( "该操作被浏览器拒绝，如果想启用该功能，请在地址栏内输入 about:config,然后将项signed.applets.codebase_principal_support 值该为true" );
				}
			}
			var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components. interfaces.nsIPrefBranch);
			prefs.setCharPref('browser.startup.homepage',pageURL);
		}
	}
	</script> 
	<div id="footer">
		<ul class="footerline"></ul>
		<div class="footer_menu mb5">
			<span><a target="_blank" href="${ctx}/links!detail.action?mtype=1">关于我们</a></span>
			|
			<span><a target="_blank" href="${ctx}/links!detail.action?mtype=2">联系我们</a></span>
			|<span><a target="_blank" href="${ctx}/links!detail.action?mtype=3">广告服务</a></span>
		</div>
		<div class="ta_c">
			<p class="mb5">版权 ©2012  中国竹木工艺网  （<a target="_blank" href="http://www.crafts-bamboo.com">crafts-bamboo.com</a>）所有,  保留所有权利</p>
			<p class="mb5">
				<a target="_blank" href="http://net.china.com.cn/index.htm"><img src="${ctx}/css/image/report.gif"></a>&nbsp;&nbsp;
				<a target="_blank" href="http://www.pingpinganan.gov.cn/web/index.aspx"><img src="${ctx}/css/image/110.gif"></a>&nbsp;&nbsp;
				<a target="_blank" href="http://www.pingpinganan.gov.cn/web/index.aspx"><img src="${ctx}/css/image/ppaa.gif"></a>&nbsp;&nbsp;
			</p>
			<!--<p class="icp mb5"><img src="${ctx}/css/image/icp.gif"><a target="_blank" href="http://www.miibeian.gov.cn/">浙ICP备09018754号</a></p>-->
		</div>
	</div>
