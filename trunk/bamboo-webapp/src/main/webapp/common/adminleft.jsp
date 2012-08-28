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
          <li class="submenu"><span class="cut" style="cursor: pointer;">教学点管理</span>
            <ul>
              <li><a id="site" href="teachsite.action">教学点列表</a></li>
              <li><a id="addsite" href="teachsite!input.action">新增教学点 </a></li>            
            </ul>
          </li>
          
          <li class="submenu"><span class="cut" style="cursor: pointer;">教职人员管理</span>
            <ul>
              <li><a id="teacher" href="teachsiteadmin.action">教职人员列表</a></li>
              <li><a id="addteacher" href="teachsiteadmin!input.action">新增教职人员 </a></li> 
            </ul>
          </li>
          <li class="submenu"><span class="cut" style="cursor: pointer;">学员管理</span>
            <ul>
              <li><a id="student"  href="student.action">学员列表</a></li>
              <li><a id=student_batchinput href="student!batchinput.action">批量新增学员 </a></li>             
            </ul>
          </li>
          <li class="submenu"><span class="cut" style="cursor: pointer;">学科管理</span>
            <ul>
              <li><a id="profession" href="profession.action">专业管理 </a></li>
              <li><a id="course" href="course.action">课程管理 </a></li>            
            </ul>
          </li>
          
          <li class="submenu"><span class="cut" style="cursor: pointer;">面授课程管理</span>
            <ul>
              <li><a id="courseschedule" href="courseschedule.action">面授课表查询 </a></li>            
              <li><a id="courseschedule_input" href="courseschedule!input.action">导入面授课程表</a></li>
            </ul>
          </li>
          
          <li class="submenu"><span class="cut" style="cursor: pointer;">课程报考管理</span>
            <ul>
              <li><a id="registerexam" href="registerexam.action">课程报考查询 </a></li>            
              <li><a id="registerexam_input" href="registerexam!input.action">导入报考信息</a></li>
            </ul>
          </li>
          
          <li class="submenu"><span class="cut" style="cursor: pointer;">考试安排管理</span>
            <ul>
              <li><a id="examarrange" href="examarrange.action">考试安排查询 </a></li>            
              <li><a id="examarrange_input" href="examarrange!input.action">导入考试安排</a></li>
            </ul>
          </li>
          
          <li class="submenu"><span class="cut" style="cursor: pointer;">学员成绩管理</span>
            <ul>
              <li><a id="studentcourse" href="studentcourse.action">学员成绩查询 </a></li>            
              <li><a id="studentcourse_input" href="studentcourse!input.action">导入学员成绩</a></li>
            </ul>
          </li>
          
          <li class="submenu"><span class="cut" style="cursor: pointer;">毕业管理</span>
            <ul>
              <li><a id="graduate" href="graduate.action">毕业验审</a></li>
              <li><a id="graduatesearch" href="graduate!search.action">毕业证号查询</a></li>            
              <li><a id="graduateupload" href="graduate!upload.action">导入毕业证号</a></li>            
            </ul>
          </li>
       
          <li class="submenu"><span class="cut" style="cursor: pointer;">资讯管理</span>
            <ul>
              <li><a id="article" href="article.action">资讯发布列表</a></li>
              <li><a id="addarticle" href="article!input.action">新增资讯 </a></li>            
            </ul>
          </li> 
          
           <li class="submenu"><span class="cut" style="cursor: pointer;">焦点图片管理</span>
            <ul>
              <li><a id="focusimage" href="focusimage.action">焦点图片列表</a></li>
              <li><a id="addfocusimage" href="focusimage!input.action">新增焦点图片 </a></li>            
            </ul>
          </li>  
            <li class="submenu"><span class="cut" style="cursor: pointer;">数据统计</span>
            <ul>
              <li><a id="stat" href="stat.action">概况统计</a></li>
              <li><a id="viewstat" href="stat!view.action">网站浏览量统计 </a></li>            
              <li><a id="articlestat" href="articlestat.action">资讯浏览量统计 </a></li>            
              <li><a id="coursestat" href="coursestat.action">课程学习统计 </a></li>    
              <li><a id="userstat" href="userstat.action">学员行为统计 </a></li>         
              <li><a id="teacherstat" href="teacherstat.action">教师行为统计 </a></li>            
                         
            </ul>
          </li>  
                 
        </ul>
      </div>
    </div>
    <!-- 左侧菜单 总shell end --> 


 


