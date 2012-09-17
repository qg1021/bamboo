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
			<!-- 产品分类  start -->
			<div class="index_category">
				<p><img src="css/image/category_head.png"/></p>
				<div class="category_bk">
					<p class="category_title"><a class="rr mt5" href="#">
					<img src="css/image/more.png"/></a> 竹工艺品 </p>
					<ul>
						<li><a href="#">编织工艺</a></li>
						<li><a href="#">雕刻工艺</a></li>
						<li><a href="#">竹根工艺</a></li>
						<li><a href="#">其他竹工艺</a></li>
						<li><a href="#">竹筒日品类</a></li>
						<li><a href="#">根雕</a></li>
					</ul>
					<p class="clearb"></p>
					<p class="category_title"><a class="rr mt5" href="#"><img src="css/image/more.png"/></a> 竹家具 </p>
					<ul>
						<li><a href="#">原竹家具</a></li>
						<li><a href="#">板式家具</a></li>
						<li><a href="#">竹藤家具</a></li>
						<li><a href="#">餐厅家具</a></li>
						<li><a href="#">客厅家具</a></li>
						<li><a href="#">书房家具</a></li>
					</ul>
					<p class="clearb"></p>
					<p class="category_title">
					<a class="rr mt5" href="#"><img src="css/image/more.png"/></a> 竹地板</p>
					<ul>
						<li><a href="#">本色地板</a></li>
						<li><a href="#">碳化地板</a></li>
						<li><a href="#">竹丝板</a></li>
						<li><a href="#">拼化地板</a></li>
						<li><a href="#">贴面地板</a></li>
					</ul>
					<p class="clearb"></p>
					<p class="category_title">
					<a class="rr mt5" href="#"><img src="css/image/more.png"/></a>竹纤维</p>
					<ul>
						<li><a href="#">卫浴系列</a></li>
						<li><a href="#">服饰系列</a></li>
						<li><a href="#">日用品</a></li>
						<li><a href="#">婴童系列</a></li>
						<li><a href="#">家纺系列</a></li>
						<li><a href="#">竹纤维礼品</a></li>
					</ul>
					<p class="clearb"></p>  
					  
					<p class="category_title"><a class="rr mt5" href="#">
					<img src="css/image/more.png"/></a>竹窗帘</p>
					<ul>
						<li><a href="#">竹编织窗帘</a></li>
						<li><a href="#">百叶窗</a></li>
						<li><a href="#">门帘</a></li>
						<li><a href="#">落地帘</a></li>
						<li><a href="#">彩色窗帘</a></li>
						<li><a href="#">印花窗帘</a></li>
					</ul>
					<p class="clearb"></p>  
					<p class="category_title"><a class="rr mt5" href="#">
					<img src="css/image/more.png"/></a>竹板材</p>
					<ul>
						<li><a href="#">家具板</a></li>
						<li><a href="#">楼梯板</a></li>
						<li><a href="#">门面板</a></li>
						<li><a href="#">包装板</a></li>
						<li><a href="#">贴面板</a></li>
						<li><a href="#">竹刨切板</a></li>
					</ul>
					<p class="clearb"></p>  
					<p class="category_title"><a class="rr mt5" href="#">
					<img src="image/more.png"/></a>竹垫</p>
					<ul>
						<li><a href="#">沙发坐垫</a></li>
						<li><a href="#">汽车坐垫</a></li>
						<li><a href="#">竹地毯</a></li>
						<li><a href="#">门垫</a></li>
						<li><a href="#">保健枕</a></li>
						<li><a href="#">麻将坐垫</a></li>
					</ul>
					<p class="clearb"></p>  
					<p class="category_title"><a class="rr mt5" href="#">
					<img src="css/image/more.png"/></a>竹炭</p>
					<ul>
						<li><a href="#">原炭</a></li>
						<li><a href="#">竹炭包</a></li>
						<li><a href="#">空气净化炭</a></li>
						<li><a href="#">竹醋液</a></li>
						<li><a href="#">床上用品</a></li>
						<li><a href="#">保健用品</a></li>
					</ul>
				</div>
			</div>
			<!-- 产品分类  end -->
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
				<div  class="rightmenu">
					<p class="category_header mb5"><a class="rr mt5" href="#"><img src="css/image/more.png"/></a> 政策法规</p>
					<ul>
						<li><a title="竹产业发展背后的巨大力量" href="http://www.zgzymh.net/news/12821479.html" target="_blank"> 竹产业发展背后的巨大力量 </a></li>
						<li><a href="#">大做竹文化文章 开展竹文化旅游</a></li>
						<li><a href="#">赤水市大兴竹文化旅游</a></li>
						<li><a title="竹产业发展背后的巨大力量" href="http://www.zgzymh.net/news/12821479.html" target="_blank"> 竹产业发展背后的巨大力量 </a></li>
						<li><a href="#">大做竹文化文章 开展竹文化旅游</a></li>
						<li><a href="#">赤水市大兴竹文化旅游</a></li>
					</ul> 
				</div>
			</div>
			<div style="margin-right:9px;" class="index_news_2box">
				<div  class="rightmenu">
					<p class="category_header mb5"><a class="rr mt5" href="#"><img src="css/image/more.png"/></a>热点资讯</p>
					<ul>
						<li><a title="竹产业发展背后的巨大力量" href="http://www.zgzymh.net/news/12821479.html" target="_blank"> 竹产业发展背后的巨大力量 </a></li>
						<li><a href="#">大做竹文化文章 开展竹文化旅游</a></li>
						<li><a href="#">赤水市大兴竹文化旅游</a></li>
						<li><a title="竹产业发展背后的巨大力量" href="http://www.zgzymh.net/news/12821479.html" target="_blank"> 竹产业发展背后的巨大力量 </a></li>
						<li><a href="#">大做竹文化文章 开展竹文化旅游</a></li>
						<li><a href="#">赤水市大兴竹文化旅游</a></li>
					</ul> 
				</div>
			</div>
			<div  class="index_news_2box">
				<div  class="rightmenu">
					<p class="category_header mb5"><a class="rr mt5" href="#"><img src="css/image/more.png"/></a>行业新闻</p>
					<ul>
						<li><a title="竹产业发展背后的巨大力量" href="http://www.zgzymh.net/news/12821479.html" target="_blank"> 竹产业发展背后的巨大力量 </a></li>
						<li><a href="#">大做竹文化文章 开展竹文化旅游</a></li>
						<li><a href="#">赤水市大兴竹文化旅游</a></li>
						<li><a title="竹产业发展背后的巨大力量" href="http://www.zgzymh.net/news/12821479.html" target="_blank"> 竹产业发展背后的巨大力量 </a></li>
						<li><a href="#">大做竹文化文章 开展竹文化旅游</a></li>
						<li><a href="#">赤水市大兴竹文化旅游</a></li>
					</ul> 
				</div>
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
				<div  class="rightmenu">
					<p class="category_header mb5"><a class="rr mt5" href="#"><img src="css/image/more.png"/></a> 展会报道</p>
					<ul>
						<li><a title="竹产业发展背后的巨大力量" href="http://www.zgzymh.net/news/12821479.html" target="_blank"> 竹产业发展背后的巨大力量 </a></li>
						<li><a href="#">大做竹文化文章 开展竹文化旅游</a></li>
						<li><a href="#">赤水市大兴竹文化旅游</a></li>
						<li><a title="竹产业发展背后的巨大力量" href="http://www.zgzymh.net/news/12821479.html" target="_blank"> 竹产业发展背后的巨大力量 </a></li>
						<li><a href="#">大做竹文化文章 开展竹文化旅游</a></li>
						<li><a href="#">赤水市大兴竹文化旅游</a></li>
					</ul> 
				</div>
			</div>
			<div style="margin-right:9px;" class="index_news_2box">
				<div  class="rightmenu">
					<p class="category_header mb5"><a class="rr mt5" href="#"><img src="css/image/more.png"/></a>技术动态</p>
					<ul>
						<li><a title="竹产业发展背后的巨大力量" href="http://www.zgzymh.net/news/12821479.html" target="_blank"> 竹产业发展背后的巨大力量 </a></li>
						<li><a href="#">大做竹文化文章 开展竹文化旅游</a></li>
						<li><a href="#">赤水市大兴竹文化旅游</a></li>
						<li><a title="竹产业发展背后的巨大力量" href="http://www.zgzymh.net/news/12821479.html" target="_blank"> 竹产业发展背后的巨大力量 </a></li>
						<li><a href="#">大做竹文化文章 开展竹文化旅游</a></li>
						<li><a href="#">赤水市大兴竹文化旅游</a></li>
					</ul> 
				</div>
			</div>
			<div  class="index_news_2box">
				<div  class="rightmenu">
					<p class="category_header mb5"><a class="rr mt5" href="#"><img src="css/image/more.png"/></a>竹库资源</p>
					<ul>
						<li><a title="竹产业发展背后的巨大力量" href="http://www.zgzymh.net/news/12821479.html" target="_blank"> 竹产业发展背后的巨大力量 </a></li>
						<li><a href="#">大做竹文化文章 开展竹文化旅游</a></li>
						<li><a href="#">赤水市大兴竹文化旅游</a></li>
						<li><a title="竹产业发展背后的巨大力量" href="http://www.zgzymh.net/news/12821479.html" target="_blank"> 竹产业发展背后的巨大力量 </a></li>
						<li><a href="#">大做竹文化文章 开展竹文化旅游</a></li>
						<li><a href="#">赤水市大兴竹文化旅游</a></li>
					</ul> 
				</div>
			</div>
	</div>
	<p class="clearb" ></p>
	<div class="ta_c" ><img style="margin-top:-8px;" src="demo/vip.gif" width="960"/></div>

	<div  class="easyui-tabs" style="width:960px;margin-top:5px;">  
		<div title="友情链接" class="friendlink ">  
			-<span><a target="_blank" href="http://www.bambooall.com">傲竹尚品</a></span>-<span><a target="_blank" href="http://www.icbr.ac.cn">国际竹藤网</a></span>-<span><a target="_blank" href="http://www.forestry.gov.cn">国家林业局政府网</a></span>-<span><a target="_blank" href="http://www.forestrysci.gov.cn">中国林业科技网</a></span>-<span><a target="_blank" href="http://www.lknet.ac.cn">中国林业信息网</a></span>-<span><a target="_blank" href="http://www.chinabamboonet.com">中国竹网</a></span>-<span><a target="_blank" href="http://www.chinagreen.net.cn">中国绿化网</a></span>-<span><a target="_blank" href="http://www.china-flower.com/">中国花卉网</a></span>-<span><a target="_blank" href="http://www.21food.cn/">中国食品商务网</a></span>-<span><a target="_blank" href="http://china.machine365.com/">中华机械网</a></span>-<span><a target="_blank" href="http://china.chemnet.com/">中国化工网</a></span>-<span><a target="_blank" href="http://www.charcoal.org.cn/">中国竹炭信息网</a></span>-<span><a target="_blank" href="http://www.cncraftinfo.com/">中国工艺品网</a></span>-<span><a target="_blank" href="http://www.ajol.cn">中国竹乡安吉在线</a></span>-<span><a target="_blank" href="http://www.fgr.cn/">中国森林植物种质资源</a></span>-<span><a target="_blank" href="http://sxzy.home.bj001.net/">沙县竹业网</a></span>-<span><a target="_blank" href="http://www.gnbamboo.com/qiye.htm">广宁竹子网</a></span>-<span><a target="_blank" href="http://www.chinesebamboo.net">中国竹子网</a></span>-<span><a target="_blank" href="http://www.gzbamboo.net">广东园林观赏竹子网</a></span>-<span><a target="_blank" href="http://www.wickerchina.cn/">中国编织工艺品门户</a></span>-<span><a target="_blank" href="http://www.dragon-guide.net">外贸网址之家</a></span>-<span><a target="_blank" href="http://www.bamboosea.net/">蜀南竹海</a></span>-<span><a target="_blank" href="http://www.ytjj360.com">亚太家具网</a></span>-<span><a target="_blank" href="http://www.cnbamboohome.com">竹家具</a></span>-<span><a target="_blank" href="http://www.shoppingju.com">装修材料</a></span>
		</div> 
	</div>
	<%@include file="/common/footer.jsp" %>
	</div>
</div>
</body>
</html>
