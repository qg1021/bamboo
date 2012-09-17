<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<%@page import="com.gm.bamboo.util.CommonUtils"%>
<%@page import="com.gm.bamboo.contant.Global"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<%@ include file="/common/meta.jsp" %>
	<title>中国竹木工艺网(www.crafts-bamboo.com)-供应</title>
	<meta content="supply" name="activemenu" />
	<link href="${ctx}/js/validate/jquery.validate.css" type="text/css" rel="stylesheet"/>
	<link href="${ctx}/css/master.css" type="text/css" rel="stylesheet"/>
	<link href="${ctx}/css/layer.css" rel="stylesheet" type="text/css"/> 
	<link href="${ctx}/css/fancybox/jquery.fancybox-1.3.4.css" rel="stylesheet" type="text/css" media="screen" />
	<link rel="stylesheet" href="${ctx}/KindEditor/themes/default/default.css" />
	<link rel="stylesheet" href="${ctx}/KindEditor/plugins/code/prettify.css" />
	<script src="${ctx}/js/jquery.js" type="text/javascript"></script>
	<script src="${ctx}/js/ajaxfileupload.js" type="text/javascript"></script>
	<script src="${ctx}/js/layer.js" type="text/javascript"></script>
	<script src="${ctx}/js/jcommon.js" type="text/javascript"></script>
	<script type="text/javascript" src="${ctx}/js/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
	<script type="text/javascript" src="${ctx}/js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
	<script src="${ctx}/js/PCASClass.js" type="text/javascript"></script>
	<script src="${ctx}/js/validate/jquery.validate.js" type="text/javascript"></script>
	<script src="${ctx}/js/validate/messages_cn.js" type="text/javascript"></script>
	<script src="${ctx}/js/DatePicker/WdatePicker.js" type="text/javascript" ></script>
	<script type="text/javascript" src="${ctx}/KindEditor/kindeditor-min.js"></script>
	<script type="text/javascript" src="${ctx}/KindEditor/lang/zh_CN.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		//聚焦第一个输入框
		$("a#picexample").fancybox();
		$("#title").focus();
		setDefaultDate();
		$("#inputForm").validate({
			rules: {
				title: {
					required:true
				},
				name: {
					required:true
				},
				bmodel:{
					required:true
				},
				price:{
					required:true
				},
				oneCatid: {
					required:true
				},
				twoCatid: {
					required:true
				},
				linkman: {
					required:true
				},
				linktel: {
					required:true
				},
				mobile: {
					required:true
				},
				province: {
					required: true
				},				
				city: {
					required: true
				},
				area: {
					required: true
				},
				address: {
					required: true
				},
				email: {
					email: true
				},
				indate: {
					required: true
				}
			},
			messages: {
				title: {
					required: "请输入标题"
				},
				name: {
					required:"请输入产品名称"
				},
				bmodel:{
					required:"请输入经验模式"
				},
				price:{
					required:"请输入价格"
				},
				oneCatid: {
					required:"请选择一级分类"
				},
				twoCatid: {
					required:"请选择二级分类"
				},
				linkman: {
					required:"请输入联系人"
				},
				linktel: {
					required:"请输入联系电话"
				},
				mobile: {
					required:"请输入手机"
				},
				province: {
					required:"请输入省"
				},				
				city: {
					required:"请输入市"
				},
				area: {
					required:"请输入区"
				},
				address: {
					required:"请输入详细地址"
				},
				email: {
					email: "邮箱输入不合法"
				},
				indate: {
					required:"请选择有效期"
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
	var htmlEditor = null;
	KindEditor.ready(function(K) {
		htmlEditor = K.create('textarea[name=desciption]', {
			cssPath : '${ctx}/KindEditor/themes/default/default.css',
			uploadJson : '${ctx}/KindEditor/jsp/upload_json.jsp',
			fileManagerJson : '${ctx}/KindEditor/jsp/file_manager_json.jsp',
			allowFileManager : true	//允许查看文件
		});
	});
	function onSubmit() {
		 if($("#inputForm").valid()){
		 if(!htmlEditor.isEmpty()){
		 	$("#desciption").val(htmlEditor.html());
		 	$("#inputForm").submit();
		 }	else{
		 	alert("内容不能为空");
		 }
		}
	}
	document.onkeydown = function(e){    
		e = e || window.event;   
		if(e.keyCode === 13){        
		 onSubmit();   
		}
	};
	function setDefaultDate(){
		if(document.getElementById('id').value==''){
			$("#publishdate").val('<%=CommonUtils.getCurrentDate("yyyy-MM-dd")%>');
			$("#indate").val('<%=CommonUtils.getCurrentDate("yyyy-MM-dd")%>');
		}
	}

</script>
</head>
<body>
<div id="fullbg"></div> 
	<!-- end JS遮罩层 --> 
	<!-- 对话框 --> 
	<div id="dialog"> 
		<div id="dialog_content"></div> 
	</div>
<div id="wrapper"> 
		<%@include file="/common/header.jsp" %>
		<!-- 正文内容 start -->
		<div id="content"> 
		    <!-- 左侧菜单 总shell start -->
		    <%@include file="/common/adminleft.jsp" %>
		    <!-- 左侧菜单 总shell end --> 
		    
			<!-- 右侧内容 start -->
    		<div class="right_shell"> 
				<h2 class="mb10 box_solid_bottom">供应信息</h2>
				<form id="inputForm" name="inputForm" action="supply!save.action" method="post">
					<input type="hidden" id="id" name="id" value="${id}"/>
	    			<ul class="form">
						<li>以下有<b>*</b>的内容为必填项：</li>
						<li>
				  			<label>标题<b>*</b></label>
				  			<input id="title" name="title" value="${title}" type="text" maxlength="100" style="width:300px;" />
				  		</li>
				  		<li>
				  			<label>产品名称<b>*</b></label>
				  			<input id="name" name="name" value="${name}" type="text" maxlength="100" style="width:300px;" />
				  		</li>
				  		<li>
				  			<label>经营模式<b>*</b></label>
		                    <s:select list="#{'生产型':'生产型','加工型':'加工型','代理型':'代理型'}"  id="bmodel" name="bmodel"  value="bmodel" cssStyle="width:85px;" headerKey="" headerValue="--全 部--"/> 
				  		</li>
				  		<li>
				  			<label>价格<b>*</b></label>
				  			<input id="price" name="price" value="${price}" type="text" maxlength="100" style="width:300px;" />
				  		</li>
				  		<li>
				  			<label>配图</label>
				  			<input name="file" type="file" id="file" class="input" onchange="ajaxUploadPic('../upload.excsec');"/>
	        				<span id="picspan">
	        					<s:if test="picurl!=null">
	        						<a id="picexample" href="..<%=Global.picpath%>/${picurl}">预览</a>
	        					</s:if>
	        					<s:else>
	        						<a id="picexample" href="" style="display:none">查看</a>
	        					</s:else>
	        				</span>
	        				<input type="hidden" id="picurl" name="picurl" value="${picurl}"/>
	        				<input type="hidden" id="baseurl" name="baseurl" value="..<%=Global.picpath%>"/>
				  		</li>
				  		<li>
				  			<label>所属分类<b>*</b></label>
		                    <s:select list="oneCatList" onclick="showTwoCat();"  id="oneCatid" name="oneCatid"  listKey="id" listValue="name"  value="onecat" cssStyle="width:120px;" theme="simple" headerKey="" headerValue="--全 部--"/>
		                    <span id="error_oneCatid"></span> 
		                    <s:select list="twoCatList"  id="twoCatid" name="twoCatid"  listKey="id" listValue="name"  value="twocat" cssStyle="width:120px;" theme="simple" headerKey="" headerValue="--二 级--"/> 
				  			<span id="error_twoCatid"></span>
				  		</li>
				  		
				  		<li>
			            	<label>联系地址</label>
			            	<select id="province" name="province"></select><span id="error_province" ></span>
							<select id="city" name="city"></select><span id="error_city" ></span>
							<select id="area" name="area"></select><span id="error_area"></span>
							<script type="text/javascript">
								new PCAS("province","city","area","${province}","${city}","${area}");
							</script>
			            </li>
			            <li>
			            	<label>&nbsp;</label>
							<input id="address" name="address" value="${address}" maxlength="50" type="text" size="30"/><span id="error_address"></span>
			            </li>
				  		<li>
				  			<label>发布时间</label>
				  			<input id="publishdate" class="Wdate" name="publishdate" onclick="WdatePicker();" value="<s:date name="publishdate" format="yyyy-MM-dd"/>" readonly="readonly" type="text" maxlength="100" />
				  		</li>
				  		<li>
				  			<label>信息有效期<b>*</b></label>
				  			<input id="indate" class="Wdate" name="indate" onclick="WdatePicker();" value="<s:date name="indate" format="yyyy-MM-dd"/>" readonly="readonly" type="text" maxlength="100" />
				  		</li>
				  		<li>
				  			<label>联系单位</label>
				  			<input id="company" name="company"  value="${company}" type="text" maxlength="100" />
				  		</li>
				  		<li>
				  			<label>企业网址</label>
				  			<input id="website" name="website"  value="${website}" type="text" maxlength="100" />
				  		</li>
				  		<li>
				  			<label>联系人<b>*</b></label>
				  			<input id="linkman" name="linkman"  value="${linkman}" type="text" maxlength="100" />
				  		</li>
				  		<li>
				  			<label>联系电话<b>*</b></label>
				  			<input id="linktel" name="linktel"  value="${linktel}" type="text" maxlength="100" />
				  		</li>
				  		<li>
				  			<label>手机<b>*</b></label>
				  			<input id="mobile" name="mobile"  value="${mobile}" type="text" maxlength="100" />
				  		</li>
				  		<li>
				  			<label>邮箱</label>
				  			<input id="email" name="email"  value="${email}" type="text" maxlength="100" />
				  		</li>
				  		<li>
				  			<label>邮编</label>
				  			<input id="postcode" name="postcode"  value="${postcode}" type="text" maxlength="100" />
				  		</li>
				  		
				  		<li >
				  			<label style="vertical-align: top;">内容</label>
				  			<textarea id="desciption" name="desciption" cols="100" rows="8" style="width:750px;height:270px;visibility:hidden;">${desciption}</textarea>
		        			<span id="error_desciption"></span>
				  		</li>
					</ul>    
	 				<p class="button_box">
	 					<button class="course_btn_orange" type="button" onclick="onSubmit();">保存</button> &nbsp;
	 					<button class="course_btn_grey" type="button" onclick="location.href='supply.action'">取消</button>&nbsp;
	 				</p> 
	 			</form>
 			</div>
    		<!-- 右侧内容 end --> 
			<p class=" del_float"></p>
		</div>
		<!-- 正文内容 end --> 
		<%@include file="/common/footer.jsp" %>
	</div>
</body>
</html>