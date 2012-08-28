<%@ page contentType="text/html;charset=UTF-8" %>
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
			<span><a target="_blank" href="http://www.bamboo.cn/about/index_1.html">关于我们</a></span>
			|
			<span><a target="_blank" href="http://www.bamboo.cn/about/index_1.html">法律声明</a></span>
			|
			<span><a target="_blank" href="http://www.bamboo.cn/about/index_10.html">友情链接</a></span>
			|
			<span><a target="_blank" href="http://www.bamboo.cn/about/index_6.html">联系我们</a></span>
			|<span><a target="_blank" href="/sitemap.html">广告服务</a></span>
			|<span><a target="_blank" href="/sitemap.html">网站地图</a></span>
		</div>
		<div class="ta_c">
			<p class="mb5">版权 © 2002-2012  中国竹木工艺网  （<a target="_blank" href="http://www.bamboo-crafts.cn"> bamboo-crafts.cn</a>）所有,  保留所有权利</p>
			<p class="mb5">
				<a target="_blank" href="http://net.china.com.cn/index.htm"><img src="${ctx}/image/report.gif"></a>&nbsp;&nbsp;
				<a target="_blank" href="http://www.pingpinganan.gov.cn/web/index.aspx"><img src="${ctx}/image/110.gif"></a>&nbsp;&nbsp;
				<a target="_blank" href="http://www.pingpinganan.gov.cn/web/index.aspx"><img src="${ctx}/image/ppaa.gif"></a>&nbsp;&nbsp;
			</p>
			<p class="icp mb5"><img src="${ctx}/image/icp.gif"><a target="_blank" href="http://www.miibeian.gov.cn/">浙ICP备09018754号</a></p>
		</div>
	</div>
