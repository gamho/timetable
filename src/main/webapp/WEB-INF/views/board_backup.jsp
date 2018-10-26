<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
    </head>
    <!-- font icon -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    
    <!-- css 참조 -->
    <link rel="stylesheet" type="text/css" href="resources/css/board/boardcss.css">
    
    <!-- Bootstrap -->
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <!-- script 참조 -->
    <script src="resources/js/jquery-3.3.1.min.js"></script>
    <script src="resources/js/board/boardjs.js"></script>
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    
    <body>
        <div class="kanban-container">
           <!-- kanban 시작 -->
            <div class="kanban-board">
               <!-- kanban-col section start -->
				<jsp:include page="/WEB-INF/views/kanban_col.jsp"/>
                <!-- kanban-col end -->
                
                <div class="add-col-box">
                    <a href="#"><i class="fas fa-plus-circle add"></i></a>
                </div>
            </div>
            <!-- kanban 끝 -->
        </div>
    </body>
</html>