<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <!-- topMenu_projectManage.css-->
    <link rel="stylesheet" type="text/css" href="resources/css/topMenu/topMenu_projectManage.css">
    
    <!-- web font -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    
    <!-- jQuery -->
    <script src="resources/js/jquery-3.3.1.min.js"></script>

    <!-- topMenu_projectMenu.js -->    
    <script src="resources/js/topMenu/topMenu_projectManage.js"></script>
       
    <body>
        <div class="manageWrapper">
                   <div class="title">
                       <div class="name">
                           <a>ABC</a>
                       </div>
                       <div class="close">
                           <a><i class="fas fa-times"></i></a>
                       </div>
                       <div class="trash">
                           <a><i class="fas fa-trash-alt"></i></a>
                       </div>
                   </div>

                   <div class="menu">
                       <div class="overviewBtn"><a>Overview</a></div>
                       <div class="checklistBtn"><a>Checklist</a></div>
                       <div class="preferenceBtn"><a>Preference</a></div>
                   </div>
                    
                   <!-- Overview 메뉴-->
                   <div class="content overview">
                       <div class="pj">
                           <div class="pjName">
                               Project name
                           </div>
                           <div class="pjInput">
                               <form>
                                   <input type="text" style="width:300px; height:50px;" placeholder="ABC">
                               </form>
                           </div>
                       </div>

                       <div class="dpt">
                           <div class="dptName">
                               Project Discription
                           </div>
                           <div class="dptdpt">
                              <input type="text" style="width:300px; height:200px;" placeholder="DB에서 가져올 내용">
                           </div>
                       </div>
                   </div>
                   
                   <!-- Checklist 메뉴 -->
                   <div class="content checklist">
                       <div class="pj"> 
                           <div class="pjName">
                               checklist
                           </div>
                           <div class="pjInput">
                               <form>
                                   <input type="text" style="width:300px; height:50px;" placeholder="ABC">
                               </form>
                           </div>
                       </div>

                       <div class="dpt">
                           <div class="dptName">
                               Project Discription
                           </div>
                           <div class="dptdpt">
                              <input type="text" style="width:300px; height:200px;" placeholder="DB에서 가져올 내용">
                           </div>
                       </div>
                   </div>
                   
                   <!-- Preference 메뉴 -->
                   <div class="content preference">
                       <div class="pj"> 
                           <div class="pjName">
                               preference!!!
                           </div>
                           <div class="pjInput">
                               <form>
                                   <input type="text" style="width:300px; height:50px;" placeholder="ABC">
                               </form>
                           </div>
                       </div>

                       <div class="dpt">
                           <div class="dptName">
                               Project Discription
                           </div>
                           <div class="dptdpt">
                              <input type="text" style="width:300px; height:200px;" placeholder="DB에서 가져올 내용">
                           </div>
                       </div>
                   </div>

                   <div class="photo">
                       <div class="image">
                           <i class="far fa-grimace"></i>
                       </div>
                       <div class="record">
                           abcdefghijklmnopqrstuvwxyz
                       </div>
                   </div>

                   <div class="footer">
                       <div>
                           <div class="done">
                               <a>done</a>
                           </div>
                       </div>
                   </div>
                </div>
    </body>
</html>