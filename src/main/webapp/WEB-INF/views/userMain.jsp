<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Project? You better TATAB.</title>
    <link rel="shortcut icon" href="/resources/img/main/favicon.ico" >
    <link href="<c:url value="/resources/css/main/UserMain.css" />" rel="stylesheet">
    <!-- MyPage 관련 -->
    <link href="<c:url value="/resources/css/main/MyPageModal.css" />" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- MyPage 관련 끝 -->
    <!-- StickyNote 관련 -->
    <link href="<c:url value="/resources/css/main/StickyNoteModal.css" />" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Gloria+Hallelujah' rel='stylesheet' type='text/css'>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
    <script src="<c:url value="/resources/js/main/StickyNote.js" />"></script>
    <!-- StickyNote 관련 끝 -->
    <!-- Registration 관련 -->
    <link href="<c:url value="/resources/css/main/RegistrationModal.css" />" rel="stylesheet">
    <!-- Registration 관련 끝 -->
    <!-- MainComment 관련 -->
    <link href="<c:url value="/resources/css/main/MainCommentModal.css" />" rel="stylesheet">
    <!-- MainComment 관련 끝 -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Cedarville+Cursive|Gothic+A1" rel="stylesheet">
    <script src="<c:url value="/resources/js/main/UserMain.js" />"></script>
    
    <style>
.card.hovercard .cardheader {
	    background-image: url('resources/img/main/background2.jpeg') no-repeat;
	    background-size: cover;
	    height: 135px;
	}
    </style>
</head>
<body>
    <!-- 제일 상위 등급 div -->
    <div id="mainWrapper">
        <!-- 배경이미지 -->
        <div class="background">
            <img src="https://t1.daumcdn.net/cfile/tistory/195822124CECE3C32C">
        </div>
        <!-- 배경이미지 끝 -->
        <!-- 배경이미지 제외 맨 위 div -->
        <div class="subWrapper">
            <!-- 왼쪽 사이드바 -->
            <div class="sidebar">
                <!-- 사이드바 배경 -->
                <div class="sideBack"></div>
                <!--사이드바 배경 끝-->
                <!--사이드 내용물-->
                <div class="sideContent">
                    <!-- 로고 & 제목 -->
                    <div class="logoAndPhrase">
                        <!-- 로고 -->
                        <div class="titleLogo">
                            <a href="<c:url value="/board/userMain.do" />"><i class="fas fa-check-double"></i></a>
                        </div>
                        <!-- 로고 끝 -->
                        <!-- 제목 -->
                        <div class="titlePhrase">
                            <a href="<c:url value="/board/userMain.do" />"><h2>&nbsp;TATAB&nbsp;!</h2></a>
                        </div>
                        <!-- 제목 끝 -->
                        <!-- 플젝 표시 -->
                        <div class="projectSign">
                            <h4>&nbsp;&nbsp;프로젝트 목록</h4>
                        </div>
                        <!-- 플젝 표시 끝 -->
                    </div>
                    <!-- 로고 & 제목 끝 -->
                    <!-- 플젝 리스트 -->
               		<c:forEach items="${projectList}" var="projectName" varStatus="status">
	                    <div class="list"> <!-- 여긴 나중에 forEach로! -->
	                        <!-- 플젝 아이콘 -->
	                        	<div class="oneProject"> 
	                        		<a href="UserMain.html"><i class="fab fa-product-hunt"></i></a><br> <!-- 임의의 아이콘 => 나중에 사용자 설정 try -->
	                        	</div>
	                        <!-- 플젝 아이콘 끝 -->
	                        <!-- 플젝명 -->
	                        <div class="listName">
	                            <a href="/tatab/board.do"><h3>${projectName}</h3></a>
	                        </div>
	                        <!-- 플잭명 끝 -->
	                    </div>
               		</c:forEach>
                    <!-- 플젝 리스트 끝-->
                    <!-- 새 플젝 추가 -->
                    <div class="addProject">
                            <a id="RegistrationModalBtn"><i class="fas fa-plus-circle"> 새 프로젝트 추가</i></a>
                    </div>
                </div>
                <!-- 사이드 내용물 끝 -->
            </div>
            <!-- 왼쪽 사이드바 끝 -->
            <!-- 메인 -->
            <div class="main">
                <!-- 위쪽 아이콘들 -->
                <div id="topMenu">
                    <ul>
                        <a><li id="StickyNoteModalBtn"><i class="fas fa-sticky-note"></i></li></a>
                        <a><li><i class="fas fa-exclamation-circle"></i></li></a>
                        <a><li id="MyPageModalBtn"><i class="fas fa-user-circle"></i></li></a>
                    </ul>
                </div>
               
                <!-- 위쪽 아이콘들 끝 -->
                <!-- 아래 코멘트 배경 -->
                <div class="commentBack"></div>
                <!-- 아래 코멘트 배경 끝 -->
                <!-- 아래 코멘트 -->
                <div class="commentBelow">
	                    <h1><c:out value="${ commentVO.main_title }" /></h1><br>
	                    <h2><c:out value="${ commentVO.sub_title }" /></h2><br>
	                    <p><c:out value="${ commentVO.sub_comment }" /></p><br>
                </div>
                <!-- 아래 코멘트 끝 -->
                <!-- 코멘트 수정 아이콘 -->
                <div class="commentAdjust">
                    <a id="MainCommentModalBtn"><i class="fas fa-baseball-ball"></i></a>
                </div>
                <!-- 코멘트 수정 아이콘 끝 -->
                <!-- 아래 공백 부분 -->
                <div class="emptyFooter">
                    Copyright ⓒ 2018. BeatTheBit. All rights reserved.
                </div>
                <!-- 아래 공백 부분 끝 -->
            </div>
            <!-- 메인 끝 -->
        </div>
        <!-- 배경이미지 제외 맨 위 div 끝 -->
        <!-- 첫번째 모달 : MyPage -->
        <div id="MyPageModal" class="MyPageModal">
            <!-- MyPage 해당 컨텐츠 -->
            <div class="MyPageModalContent">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <div class="card hovercard">
                                <div class="cardheader">
                                	<img src="<c:url value="/resources/img/main/background2.jpeg" />"
 											style="background-size: cover; height: 135px; 
  											background-repeat: no-repeat;"/>
                                </div>
                                <div class="avatar">
                                    <img src="<c:url value="/resources/img/main/profile.jpeg" />"/>
                                </div>
                                <div class="info">
                                    <div class="title">
                                        <a target="_blank" href="https://scripteden.com/"><c:out value="${ myPageVO.nickname }" /></a>
                                    </div>
                                    <div class="desc"><c:out value="${ myPageVO.login_name }" /></div>
                                    <div class="desc"><c:out value="${ myPageVO.dob }" /></div>
                                    <div class="desc"><c:out value="${ myPageVO.login_email }" /></div>
                                    <h4><c:out value="${ myPageVO.motto }" /></h4>
                                </div>
                                <div class="bottom">
                                    <a>
                                        <a href="<c:url value="/myPage.do" />"><img src="<c:url value="/resources/img/main/kakaotalk.png" />"/></a>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- MyPage 해당 컨텐츠 끝 -->
        </div>
        <!-- 첫번째 모달 끝 -->
        <!-- 두번째 모달 : StickyNote -->
        <div id="StickyNoteModal" class="StickyNoteModal">
            <!-- StickyNote 해당 컨텐츠 -->
            <div class="StickyNoteModalContent">
                <a href="javascript:;" class="button" id="add_new">ADD NOTE</a>
                <div id="board">
                </div>
            </div>
            <!-- StickyNote 해당 컨텐츠 끝 -->
        </div>
        <!-- 두번째 모달 끝 -->
        <!-- 세번째 모달 : Registration -->
        <div id="RegistrationModal" class="RegistrationModal">
            <!-- Registration 해당 컨텐츠 -->
            <div class="RegistrationModalContent">
                <div class="container">
                    <form id="contact" action="register.do" method="post" commandName="ProjectVO">
                        <h3>새 프로젝트</h3>
                        <h4>새 프로젝트의 이름, 설명 및 구성원을 고르십시오.</h4>
                        <fieldset>
                            <input placeholder="프로젝트명" name="project_name" type="text" tabindex="1" required
                                autofocus >
                        </fieldset>
                        <fieldset>
                            <textarea rows="30" cols="50" name="project_comment" placeholder="설명" tabindex="2" required></textarea>
                        </fieldset>
                        <fieldset id="buttons">
                            <input type="submit" class="btn btn-primary" value="생성">
                            <a class="btn btn-light" href="UserMain.html" role="button">취소</a>
                        </fieldset>
                    </form>
                </div>
            </div>
            <!-- Registration 해당 컨텐츠 끝 -->
        </div>
        <!-- 세번째 모달 끝 -->
        <!-- 네번째 모달 : MainComment -->
        <div id="MainCommentModal" class="MainCommentModal">
            <!-- MainComment 해당 컨텐츠 -->
            <div class="MainCommentModalContent">
                <div class="container">
                    <form id="contact" action="modifyComment.do" method="post"
                        commandName="CommentVO">
                        <fieldset class="form-group">
                            <h3>배경이미지</h3>
                            <input type="file" class="form-control-file" id="exampleFormControlFile1">
                          </fieldset>
                        <fieldset>
                            <input placeholder="메인 타이틀" name="mainTitle" type="text" tabindex="1" required
                                autofocus>
                        </fieldset>
                        <fieldset>
                            <input placeholder="서브 타이틀" name="subTitle" type="text" tabindex="1" required
                                autofocus>
                        </fieldset>
                        <fieldset>
                            <textarea rows="30" cols="50" placeholder="코멘트" name="subComment" tabindex="2" required></textarea>
                        </fieldset>
                        <fieldset id="buttons">
                            <input type="submit" class="btn btn-primary" value="수정">
                            <a class="btn btn-light" href="UserMain.html" role="button">취소</a>
                        </fieldset>
                    </form>
                </div>
            </div>
            <!-- MainComment 해당 컨텐츠 끝 -->
        </div>
        <!-- 네번째 모달 끝 -->
    </div>
    <!-- 제일 상위 등급 div 끝 -->
</body>
</html>