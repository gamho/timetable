<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    
    <!-- topMenu.css -->
    <link rel="stylesheet" type="text/css" href="resources/css/topMenu/topMenu.css?ver=1">
    
    <script>
	    $.ajax({
			url : "boardProjectList.do",
			type : "post",
	
			success : function(data) {
				
				for(i=0; i<data.length; i++) {
					/* console.log(data[i]); */
					var tag1= '<div id="list"><p style="width:50px;"><i class="fas fa-bolt"></i>'+
                    '<div id="projectName" style="font-size:25px;">';
                    var tag2 = '</div></p></div>'
				
                    var tag = tag1+ data[i] + tag2;
                    
                    $(tag).hide().appendTo('#wrapper').show();
				}
				
			}
		})
    </script>
    
    </head>
    
    <body>   
       <table border="1px" style="width:100%; height:50px;">
            <tr>
                <td style="width:13%">
                    <i class="far fa-calendar-alt"></i>
                    tatab
                </td>
                <td style="width:7%" id="projectsBtn">
                   
                    <i class="fas fa-bolt"></i>
                    &nbsp; 
                    ABC
                    &nbsp; 
                    <i class="fas fa-angle-down"></i>
                </td>
                <td style=width:5%  id="infoBtn">
                   <i class="fas fa-info"></i> 
                </td>
                <td style=width:50%>
                </td>
                <td style=width:5% >
                    <table class="activeBtn">
                        <tr>
                            <td align="center">
                                9
                            </td>
                            <td rowspan="2">
                                <i class="fas fa-angle-down"></i>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Active
                            </td>
                        </tr>
                    </table>
                </td>
                <td style=width:5%>
                    <i class="far fa-clock"></i>
                </td>
                <td style=width:5% class="activityBtn">
                <i class="fas fa-at"></i>
                    <div onclick="history.back();" class="page_cover">   </div>
                    <div id="menu"> 
                    <div onclick="history.back();" class="activityClose"></div>
                    <!-- activity.jsp-->
                  	  <jsp:include page="/WEB-INF/views/topMenu/topMenu_activity.jsp"/>
                    </div>
                    
                </td>
                <td style=width:5%>
                    <i class="fas fa-cog"></i>
                </td>
                <td style=width:5%>
                    <i class="fas fa-user-circle"></i>
                </td>
            </tr>
        </table>
        
        <!-- projects Modal -->
        <div id="projectsModal" class="projectsmodal">
          <div class="projects-modal-content">
          	<jsp:include page="/WEB-INF/views/topMenu/topMenu_projects.jsp"></jsp:include>
          </div>
        </div>
        <!-- projects Modal -->
    
        <!-- projectManage Modal -->
        <div id="manageModal" class="manageModal">
            <!-- Modal content -->
            <div class="manage-modal-content">
            	<jsp:include page="/WEB-INF/views/topMenu/topMenu_projectManage.jsp"></jsp:include>
            </div>
        </div>
        <!-- projectManage Modal -->

    </body>
</html>