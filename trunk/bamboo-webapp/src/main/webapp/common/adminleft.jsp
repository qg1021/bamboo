<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<script type="text/javascript">
      	$(document).ready(function() {
	        $('.tree ul').hide();
	    	var activemenu = $('meta[name="activemenu"]').attr("content");
	    	if(!activemenu)
	    		activemenu = $('#activemenu').val();
	    	if(activemenu){
	    		var tag = $('#' + activemenu);
	    		$('#' + activemenu).css("background-color","#0D9C04"); 
	    		$('#' + activemenu).css("color","#FFFFFF");
	    		tag.addClass('folder_tree_active');
	    		$('.tree ul').hide();
	    		tag.parent().parent().parent().children().first().removeClass('cut');
	    		tag.parent().parent().parent().children().first().addClass('plus');
	    		tag.parent().parent().toggle();
	    	}
	    	
	    	$(".submenu").bind("click", function(){
	    		var temp= $(this).find("ul").is(":hidden");//是否隐藏
				if(temp){
					$(".submenu").each(function(){
		     			$(this).find("ul").hide();

		     			$(this).children().first().addClass('cut');
		        	 });
					$(this).find("ul").show();
		    		$(this).children().first().removeClass('cut');
		    		$(this).children().first().addClass('plus');
				}else{ 
					$(this).find("ul").hide();
		    		$(this).children().first().removeClass('plus');
		    		$(this).children().first().addClass('cut');
				}
	    	})

	    	//var now = $('meta[name="menu"]').attr("content");
	    	$("#teach").attr("src","../css/image/nav05-act.png");
  		
      	});
        </script>
   <!-- 左侧菜单 总shell start -->
    <div class="left_box_shell">
      <div class="leftmenu" style="min-height: 370px;margin-bottom: 10px;">
        <p class="leftmenu_title"> 管理后台菜单 </p>
        <ul class="tree">
          <li class="submenu"><span class="cut" style="cursor: pointer;">资讯行情</span>
            <ul>
              <li><a id="zcfg" href="news.action?mtype=0">政策法规</a></li>
              <li><a id="rdzx" href="news.action?mtype=1">热点资讯 </a></li>
              <li><a id="hyxw" href="news.action?mtype=2">行业新闻 </a></li>
              <li><a id="zhbd" href="news.action?mtype=3">展会报道 </a></li>
              <li><a id="zsdt" href="news.action?mtype=4">技术动态 </a></li> 
              <li><a id="zkzy" href="news.action?mtype=5">竹库资源 </a></li>             
            </ul>
          </li>
          <li class="submenu"><span class="cut" style="cursor: pointer;">会员管理</span>
            <ul>
              <li><a id="user" href="user.action">会员管理</a></li>            
            </ul>
          </li>
          <li class="submenu"><span class="cut" style="cursor: pointer;">业务数据</span>
            <ul>
              <li><a id="category" href="category.action">产品分类</a></li>
              <li><a id="buy" href="buy.action">求购信息 </a></li>
              <li><a id="supply" href="supply.action">供应信息 </a></li>
              <li><a id="company" href="company.action">企业信息 </a></li>	
              <li><a id="business" href="business.action">招商信息 </a></li>             
            </ul>
          </li>
          <li class="submenu"><span class="cut" style="cursor: pointer;">广告位</span>
            <ul>
              <li><a id="indexleft" href="advert.action?mtype=0">首页悬浮左边广告</a></li>
              <li><a id="indexright" href="advert.action?mtype=1">首页悬浮右边广告 </a></li>
              <li><a id="indexhead" href="advert.action?mtype=2">首页头部切换广告 </a></li>
              <li><a id="indexcenter" href="advert.action?mtype=3">首页中间广告</a></li>
              <li><a id="hangye" href="advert.action?mtype=4">行业资讯首页广告 </a></li> 
              <li><a id="rightpage" href="advert.action?mtype=5">右边随机广告位 </a></li>             
            </ul>
          </li>
          <li class="submenu"><span class="cut" style="cursor: pointer;">友情链接</span>
            <ul>
              <li><a id="indexlinks" href="links.action?mtype=0">首页底部链接</a></li>           
            </ul>
          </li>
                 
        </ul>
      </div>
    </div>
    <!-- 左侧菜单 总shell end --> 


 


