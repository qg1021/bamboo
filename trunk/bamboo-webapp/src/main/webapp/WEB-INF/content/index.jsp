<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="org.springside.modules.security.springsecurity.SpringSecurityUtils"%>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>  
	<%@ include file="/common/meta.jsp" %>
	<meta content="index" name="headmenu" />
	<link href="${ctx}/css/front.css" rel="stylesheet" type="text/css" /> 
	<link href="${ctx}/css/cycle.css" rel="stylesheet" type="text/css" />
	<script src="${ctx}/js/jquery.js" type="text/javascript"></script>
	<script src="${ctx}/js/jquery.cycle.js" type="text/javascript"></script>

</head>
<body>
<%@ include file="/common/lr_ad.jsp" %>
<%@ include file="/common/nav.jsp" %>
<div id="wrapper">
	<div id="header">
		<%@ include file="/common/headersearch.jsp" %>
		<%@ include file="/common/menu.jsp" %>
	</div>
	<div id="content">
		<div class="shell01">
			<c:import url="${appurl}/category.action"/>
			<!-- focus  start -->
			<div class="index_focus_box">
				<div class="index_focus">
					<div class=js_imgs_block>
						<div id="slideshow_wrapper">
							<div id="slideshow_photo">
								<a style="z-index: 1" href="#" target="_blank" index="1">
									<img src="demo/index_focus.png" width="465" height="300"/>
								</a> 
								<a style="z-index: 1" href="#" alt="12211221122" target="_blank" index="2">
									<img src="demo/f1.jpg" width="465" height="300"/>
								</a> 
								<a style="z-index: 1" href="#" target="_blank" index="3">
									<img src="demo/f2.jpg" width="465" height="300"/>
								</a> 
								<a style="z-index: 1" href="#" target="_blank" index="4">
									<img src="demo/f3.jpg" width="456" height="300"/>
								</a> 
								<a style="z-index: 1" href="#" target="_blank" index="5">
									<img src="demo/f4.jpg" width="465" height="300"/>
								</a> 
								<a style="z-index: 1" href="#" target="_blank" index="6">
									<img src="demo/f5.jpg" width="465" height="300"/>
								</a> 
							</div>
							<div id=slideshow_footbar></div>
					   </div>
					</div>
				</div>

				<div id="tt" class="easyui-tabs" style="width:465px;margin-top:5px;">  
					<div title="供应" class="index_news">  
						<ul>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1</a></li>
					</ul> 
					</div>  
					<div title="求购" class="index_news ">  
						<ul>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游2”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游2”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游2”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游2</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游2”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游2”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游2</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游2”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1</a></li>
					</ul> 
					</div>  
					<div title="招商" class="index_news ">  
						<ul>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游3”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游3”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游3”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游3</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游3”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游3”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游3</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游3”</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1</a></li>
						<li><span class="rr">2012.06.30</span><a href="#">大做竹文化文章 开展竹文化旅游1</a></li>
					</ul> 
					</div>					
				</div>
			</div>
			<!-- focus  end -->
			<!-- 公告新闻  start -->
			<div class="index_announce rr">
				<%@ include file="/common/leftlogin.jsp" %>
				<p class="clearb"></p>
				<div  class="easyui-tabs rr" style="width:242px;margin-top:5px;">  
					<div title="产品展示" class="index_left">  
                        	<p><a target="_blank" href="http://product.bamboo.cn/pro_795.html"><img src="demo/201045204048608.jpg"/><br>桂竹刚竹淡竹红竹</a></p>
							<p><a target="_blank" href="http://product.bamboo.cn/pro_796.html"><img src="demo/201045203955638.jpg"/><br>淡竹雷竹红竹斑竹</a></p>
							<p><a target="_blank" href="http://product.bamboo.cn/pro_133.html"><img src="demo/2007103022569458.jpg"/><br>竹家具</a></p>
							<p><a target="_blank" href="http://product.bamboo.cn/pro_841.html"><img src="demo/2010223195643147.jpg"/><br>出口木蒸笼20.3cm</a></p>
							<p><a target="_blank" href="http://product.bamboo.cn/pro_133.html"><img src="demo/2007103022569458.jpg"/><br>竹家具</a></p>
							<p><a target="_blank" href="http://product.bamboo.cn/pro_841.html"><img src="demo/2010223195643147.jpg"/><br>出口木蒸笼20.3cm</a></p>
							<p><a target="_blank" href="http://product.bamboo.cn/pro_133.html"><img src="demo/2007103022569458.jpg"/><br>竹家具</a></p>
							<p><a target="_blank" href="http://product.bamboo.cn/pro_841.html"><img src="demo/2010223195643147.jpg"/><br>出口木蒸笼20.3cm</a></p>
					</div>  
					<div title="热门品牌" class="index_left">  
						<p><a target="_blank" href="http://product.bamboo.cn/pro_21144.html"><img src="demo/2011111165752597.jpg"/><br>供应竹木餐具</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_21142.html"><img src="demo/20111031164617703.jpg"/><br>供应竹帘1</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_21141.html"><img src="demo/20111031164548289.jpg"/><br>供应竹帘2</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_21140.html"><img src="demo/20111031164510561.jpg"/><br>供应竹帘3</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_133.html"><img src="demo/2007103022569458.jpg"><br>竹家具</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_841.html"><img src="demo/2010223195643147.jpg"><br>出口木蒸笼20.3cm</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_133.html"><img src="demo/2007103022569458.jpg"><br>竹家具</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_841.html"><img src="demo/2010223195643147.jpg"><br>出口木蒸笼20.3cm</a></p>
					</div> 
					<div title="广告位" class="index_left">  
						<p><a target="_blank" href="http://product.bamboo.cn/pro_21144.html"><img src="demo/2011111165752597.jpg"><br>供应竹木餐具</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_21142.html"><img src="demo/20111031164617703.jpg"><br>供应竹帘1</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_21141.html"><img src="demo/20111031164548289.jpg"><br>供应竹帘2</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_21140.html"><img src="demo/20111031164510561.jpg"><br>供应竹帘3</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_133.html"><img src="demo/2007103022569458.jpg"><br>竹家具</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_841.html"><img src="demo/2010223195643147.jpg"><br>出口木蒸笼20.3cm</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_133.html"><img src="demo/2007103022569458.jpg"><br>竹家具</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_841.html"><img src="demo/2010223195643147.jpg"><br>出口木蒸笼20.3cm</a></p>
					</div> 
			</div>
			<!-- 公告新闻  end -->
		</div>
		<p class="clearb"></p>
		<div title="广告位显示">
			<div class="middle_ad ll" style="margin-right:2px;">
				<a  target="_blank" href="member/offer.jsp">
					<img src="image/a-3.gif" width="235px" height="84"/>
				</a>
			</div>
			<div class="middle_ad ll" style="margin-right:2px;">
				<a  target="_blank" href="member/offer.jsp">
					<img src="image/a-3.gif" width="235px" height="84px"/>
				</a>
			</div>
			<div class="middle_ad ll" style="margin-right:2px;">
				<a  target="_blank" href="member/offer.jsp">
					<img src="image/a-3.gif" width="235px" height="84px"/>
				</a>
			</div>
			<div class="middle_ad ll">
				<a  target="_blank" href="member/offer.jsp">
					<img src="image/a-3.gif" width="235px" height="84px"/>
				</a>
			</div>
		<div>
		<p class="clearb"></p>
	
			<div style="margin-right:9px;" class="index_news_2box ll">
				<c:import url="${appurl}/indexnews!part.action?mtype=0&psize=8"/>
			</div>
			<div style="margin-right:9px;" class="index_news_2box">
				<c:import url="${appurl}/indexnews!part.action?mtype=1&psize=8"/>
			</div>
			<div  class="index_news_2box">
				<c:import url="${appurl}/indexnews!part.action?mtype=2&psize=8"/>
			</div>
			<div  class="easyui-tabs rr" style="width:960px;margin-top:-8px;">  
					<div title="产品展示" class="index_left">  
                        	<p><a target="_blank" href="http://product.bamboo.cn/pro_795.html"><img src="demo/201045204048608.jpg"><br>桂竹刚竹淡竹红竹</a></p>
							<p><a target="_blank" href="http://product.bamboo.cn/pro_796.html"><img src="demo/201045203955638.jpg"><br>淡竹雷竹红竹斑竹</a></p>
							<p><a target="_blank" href="http://product.bamboo.cn/pro_133.html"><img src="demo/2007103022569458.jpg"><br>竹家具</a></p>
							<p><a target="_blank" href="http://product.bamboo.cn/pro_841.html"><img src="demo/2010223195643147.jpg"><br>出口木蒸笼20.3cm</a></p>
							<p><a target="_blank" href="http://product.bamboo.cn/pro_133.html"><img src="demo/2007103022569458.jpg"><br>竹家具</a></p>
							<p><a target="_blank" href="http://product.bamboo.cn/pro_841.html"><img src="demo/2010223195643147.jpg"><br>出口木蒸笼20.3cm</a></p>
							<p><a target="_blank" href="http://product.bamboo.cn/pro_133.html"><img src="demo/2007103022569458.jpg"><br>竹家具</a></p>
							<p><a target="_blank" href="http://product.bamboo.cn/pro_841.html"><img src="demo/2010223195643147.jpg"><br>出口木蒸笼20.3cm</a></p>
					</div>  
					<div title="热门品牌" class="index_left">  
						<p><a target="_blank" href="http://product.bamboo.cn/pro_21144.html"><img src="demo/2011111165752597.jpg"><br>供应竹木餐具</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_21142.html"><img src="demo/20111031164617703.jpg"><br>供应竹帘1</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_21141.html"><img src="demo/20111031164548289.jpg"><br>供应竹帘2</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_21140.html"><img src="demo/20111031164510561.jpg"><br>供应竹帘3</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_133.html"><img src="demo/2007103022569458.jpg"><br>竹家具</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_841.html"><img src="demo/2010223195643147.jpg"><br>出口木蒸笼20.3cm</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_133.html"><img src="demo/2007103022569458.jpg"><br>竹家具</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_841.html"><img src="demo/2010223195643147.jpg"><br>出口木蒸笼20.3cm</a></p>
					</div> 
					<div title="广告位" class="index_left">  
						<p><a target="_blank" href="http://product.bamboo.cn/pro_21144.html"><img src="demo/2011111165752597.jpg"><br>供应竹木餐具</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_21142.html"><img src="demo/20111031164617703.jpg"><br>供应竹帘1</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_21141.html"><img src="demo/20111031164548289.jpg"><br>供应竹帘2</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_21140.html"><img src="demo/20111031164510561.jpg"><br>供应竹帘3</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_133.html"><img src="demo/2007103022569458.jpg"><br>竹家具</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_841.html"><img src="demo/2010223195643147.jpg"><br>出口木蒸笼20.3cm</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_133.html"><img src="demo/2007103022569458.jpg"><br>竹家具</a></p>
						<p><a target="_blank" href="http://product.bamboo.cn/pro_841.html"><img src="demo/2010223195643147.jpg"><br>出口木蒸笼20.3cm</a></p>
					</div> 
			</div>
			<div style="margin-right:9px;" class="index_news_2box ll">
				<c:import url="${appurl}/indexnews!part.action?mtype=3&psize=8"/>
			</div>
			<div style="margin-right:9px;" class="index_news_2box">
				<c:import url="${appurl}/indexnews!part.action?mtype=4&psize=8"/>
			</div>
			<div  class="index_news_2box">
				<c:import url="${appurl}/indexnews!part.action?mtype=5&psize=8"/>
			</div>
	</div>
	<p class="clearb" ></p>
	<div class="ta_c" ><img style="margin-top:-8px;" src="demo/vip.gif" width="960"/></div>
	<c:import url="${appurl}/links.action"/>
	<%@include file="/common/footer.jsp" %>
	</div>
</div>
</body>
</html>
