<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>kanban-col</title>
    </head>
    <!-- css 참조 -->
    <link rel="stylesheet" type="text/css" href="resources/css/board//kanban_col_css.css">

<body>
        <!-- kanban-col section start -->
        <div class="kanban-col round-border">
           <!-- 이름 start -->
            <div class="kanban-head">
                <p>TODO
                    <img class="body-up-img" src="resources/img/board/sort-up.png">
                    <img class="body-down-img" src="resources/img/board/sort-down.png">
                </p>
            </div>
            <!-- 이름 end -->

            <!-- 내용 start -->
            <div class="kanban-body">
                <!-- task start -->
				<jsp:include page="/WEB-INF/views/kanban_task.jsp"/>
                <!-- task end -->
                <div class="add-task-box">
                    <a href="#"><i class="fas fa-plus-circle add"></i></a>
                </div>
            </div>
            <!-- 내용 end -->
        </div>
        <!-- kanban-col end -->

</body>
</html>