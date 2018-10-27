<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시간표 생성 서비스</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value="/resources/css/layout.css" />" />
<link rel="stylesheet" href="<c:url value="/resources/css/table.css" />" />
    <script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> -->
<script src="<c:url value="/resources/js/index.js" />"></script>
</head>
<body>
	<!-- 전체 div -->
	<div class="mainWrapper">
		<!-- 전체 컨텐츠 div -->
		<div class="wholeContent" align="center">
			<!-- 제목 div -->
			<div class="title">
				<hr>
				<h2>시간표 생성 서비스</h2>
				<hr>
				<br>
			</div>
			<!-- 제목 div 끝 -->
			<!-- 조회/시간표 구분 div -->
			<div class="changeView" align="left">
				<button type="button" class="btn btn-dark">과목 검색</button>
				<button type="button" class="btn btn-light">시간표 확인</button>
			</div>
			<!-- 조회/시간표 구분 div 끝 -->
			<!-- 조회 div -->
			<div class="search">
				<!-- topMenu - 검색창 -->
				<div class="topMenu">
					<table border="1" style="width: 100%;">
						<tr>
							<td><navi> <a href="/Mission-Web/jsp/member/list.jsp">학과지정</a>
								<select name="department" style="width: 17%">
									<option value="default">&nbsp;&nbsp;학 과</option>
									<option value="sw">사회복지학과</option>
									<option value="cs">컴퓨터공학과</option>
								</select>&nbsp;&nbsp;|| <a href="/Mission-Web/jsp/board/list.jsp">이수</a>
								<select name="department" style="width: 17%">
									<option value="default">&nbsp;&nbsp;이 수 구 분</option>
									<option value="sw">전선</option>
									<option value="cs">전필</option>
								</select>&nbsp;&nbsp;|| <a href="/Mission-Web/jsp/board/list.jsp">과목명</a>&nbsp;
								<input type="text" style="width: 100px">&nbsp;
								<button onclick="search()">조회</button>
								</navi></td>
						</tr>
					</table>
				</div>
				<br> <br>
				<!-- topMenu - 검색창 끝 -->
				<!-- 조회 시간표 출력 테이블 div -->
				<div class="searchList">
					<table border="1" style="width: 100%;" id="list">
						<tr>
							<th width="5%">번호</th>
							<th width="10%">학수번호</th>
							<!-- 알아서 나머지 %로 설정된다! -->
							<th>과목명</th>
							<th width="5%">이수</th>
							<th width="5%">학점</th>
							<th width="5%">정원</th>
							<th width="11%">강의시간</th>
							<th width="8%">담당교수</th>
							<th width="7%">강의실</th>
							<th width="13%">비고</th>
						</tr>
						<tr>
							<th>1</th>
							<th>05466001</th>
							<th>사회복지개론</th>
							<th>전선</th>
							<th>3</th>
							<th>60</th>
							<th>월3/4교시, 수3/4교시</th>
							<th>남현주</th>
							<th>아름관412호</th>
							<th>사회복지학과1</th>
						</tr>
						<tr>
							<th>2</th>
							<th>05466001</th>
							<th>사회복지개론</th>
							<th>전선</th>
							<th>3</th>
							<th>60</th>
							<th>화3/4교시, 목3/4교시</th>
							<th>남현주</th>
							<th>아름관412호</th>
							<th>사회복지학과1</th>
						</tr>
						<tr>
							<th>3</th>
							<th>05466001</th>
							<th>사회복지개론</th>
							<th>전선</th>
							<th>3</th>
							<th>60</th>
							<th>수7/8교시, 금7/8교시</th>
							<th>남현주</th>
							<th>아름관412호</th>
							<th>사회복지학과1</th>
						</tr>
					</table>

					<br> <br>
					<button type="button" class="btn btn-info">시간표 제작</button>
					<!-- <a href = "/Mission-Web/board/writeForm.jsp">새글 등록</a> -->
				</div>
				<!-- 조회 시간표 출력 테이블 div 끝 -->
			</div>
			<!-- 조회 div 끝 -->
			<!-- 시간표 출력 div -->
			<div class="timeTable">
				<div id="result" align="center">
					<table border="1" style="width: 100%;" id="list">
						<tr>
							<th width="10%">구분</th>
							<th width="18%">월</th>
							<th width="18%">화</th>
							<th width="18%">수</th>
							<th width="18%">목</th>
							<th width="18%">금</th>
						</tr>
						<tr>
							<th>1교시</th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
						<tr>
							<th>2교시</th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
						<tr>
							<th>3교시</th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
						<tr>
							<th>4교시</th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
						<tr>
							<th>5교시</th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
						<tr>
							<th>6교시</th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
						<tr>
							<th>7교시</th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
						<tr>
							<th>8교시</th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</table>
				</div>
				<!-- 시간표 출력 div 끝 -->
				<br> <br>
				<button type="button" class="btn btn-info"
					onclick="goToPreviousTimeTable()">이전 시간표</button>
				<button type="button" class="btn btn-info"
					onclick="goToPreviousTimeTable()">다음 시간표</button>
			</div>
			<br> <br>
			<footer>
				<strong>Copyright</strong>
				<!-- 여기서의 절대경로는 /Mission-Web을 생략해야 한다!! -->
			</footer>
		</div>
		<!-- 전체 컨텐츠 div 끝 -->
	</div>
	<!-- 전체 div 끝 -->
</body>
</html>