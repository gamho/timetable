<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시간표 생성 서비스</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="<c:url value="/resources/css/layout.css" />" />
<link rel="stylesheet" href="<c:url value="/resources/css/table.css" />" />
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> -->
<script src="<c:url value="/resources/js/index.js" />"></script>
</head>
<script>
	$(document).ready(
			function() {
				var page = 1;

				// 이전 시간표 버튼 이벤트
				$('#previous').click(
						function() {
							if (page <= 1) {
								alert('첫 시간표입니다.');
							} else {
								page--;
								returnTable();
								<c:if test="${ not empty list3 }">
								<c:forEach var="var1" items="${ list3 }">
								if (page == 1) {
									<c:if test="${ var1.no == 1 }">
									var data = "${ var1.class_time }";
									for (var i = 0; i < Math.trunc(
											data.length / 3, 0); i++) {
										var weekstr = "월화수목금";
										var week = data.substr(3 * i, 1);
										week = weekstr.indexOf(week);
										var hour01 = data.substr(1, 1);
										var hour02 = data.substr(2, 1);
										week = parseInt(week);
										hour01 = parseInt(hour01);
										hour02 = parseInt(hour02);
										$('#list2').find('tr').eq(hour01)
												.children().eq(week + 1)
												.addClass('red');
										$('#list2').find('tr').eq(hour02)
												.children().eq(week + 1)
												.addClass('red');
										$('#list2').find('tr').eq(hour01)
												.children().eq(week + 1).text(
														'${var1.sub_name}');
										$('#list2').find('tr').eq(hour02)
												.children().eq(week + 1).text(
														'${var1.classroom}');
									}
									</c:if>
								} else if (page == 2) {
									<c:if test="${ var1.no == 2 }">
									var data = "${ var1.class_time }";
									for (var i = 0; i < Math.trunc(
											data.length / 3, 0); i++) {
										var weekstr = "월화수목금";
										var week = data.substr(3 * i, 1);
										week = weekstr.indexOf(week);
										var hour01 = data.substr(1, 1);
										var hour02 = data.substr(2, 1);
										week = parseInt(week);
										hour01 = parseInt(hour01);
										hour02 = parseInt(hour02);
										$('#list2').find('tr').eq(hour01)
												.children().eq(week + 1)
												.addClass('red');
										$('#list2').find('tr').eq(hour02)
												.children().eq(week + 1)
												.addClass('red');
										$('#list2').find('tr').eq(hour01)
												.children().eq(week + 1).text(
														'${var1.sub_name}');
										$('#list2').find('tr').eq(hour02)
												.children().eq(week + 1).text(
														'${var1.classroom}');
									}
									</c:if>
								}
								</c:forEach>
								</c:if>
							}
						});
				
				// 다음 시간표 버튼 이벤트
				$('#next').click(
						function() {
							if (page >= 2) {
								alert('만들 수 있는 최대 시간표는 2개입니다.');
							} else {
								page++;
								returnTable();
								<c:if test="${ not empty list3 }">
								<c:forEach var="var1" items="${ list3 }">
								if (page == 1) {
									<c:if test="${ var1.no == 1 }">
									var data = "${ var1.class_time }";
									for (var i = 0; i < Math.trunc(
											data.length / 3, 0); i++) {
										var weekstr = "월화수목금";
										var week = data.substr(3 * i, 1);
										week = weekstr.indexOf(week);
										var hour01 = data.substr(1, 1);
										var hour02 = data.substr(2, 1);
										week = parseInt(week);
										hour01 = parseInt(hour01);
										hour02 = parseInt(hour02);
										$('#list2').find('tr').eq(hour01)
												.children().eq(week + 1)
												.addClass('red');
										$('#list2').find('tr').eq(hour02)
												.children().eq(week + 1)
												.addClass('red');
										$('#list2').find('tr').eq(hour01)
												.children().eq(week + 1).text(
														'${var1.sub_name}');
										$('#list2').find('tr').eq(hour02)
												.children().eq(week + 1).text(
														'${var1.classroom}');
									}
									</c:if>
								} else if (page == 2) {
									<c:if test="${ var1.no == 2 }">
									var data = "${ var1.class_time }";
									for (var i = 0; i < Math.trunc(
											data.length / 3, 0); i++) {
										var weekstr = "월화수목금";
										var week = data.substr(3 * i, 1);
										week = weekstr.indexOf(week);
										var hour01 = data.substr(1, 1);
										var hour02 = data.substr(2, 1);
										week = parseInt(week);
										hour01 = parseInt(hour01);
										hour02 = parseInt(hour02);
										$('#list2').find('tr').eq(hour01)
												.children().eq(week + 1)
												.addClass('red');
										$('#list2').find('tr').eq(hour02)
												.children().eq(week + 1)
												.addClass('red');
										$('#list2').find('tr').eq(hour01)
												.children().eq(week + 1).text(
														'${var1.sub_name}');
										$('#list2').find('tr').eq(hour02)
												.children().eq(week + 1).text(
														'${var1.classroom}');
									}
									</c:if>
								}
								</c:forEach>
								</c:if>
							}
						});

				// '시간표 확인' 클릭 이벤트
				$('.btn-light').click(
						function() {
							$('.searchList').css('display', 'none');
							$('.timeTable').css('display', 'block');
							$('.btn-light').css('background-color', '#343a40');
							$('.btn-dark').css('background-color', 'grey');

							<c:if test="${ not empty list3 }">
							<c:forEach var="var1" items="${ list3 }">
							if (page == 1) {
								<c:if test="${ var1.no == 1 }">
								var data = "${ var1.class_time }";
								for (var i = 0; i < Math.trunc(data.length / 3,
										0); i++) {
									var weekstr = "월화수목금";
									var week = data.substr(3 * i, 1);
									week = weekstr.indexOf(week);
									var hour01 = data.substr(1, 1);
									var hour02 = data.substr(2, 1);
									week = parseInt(week);
									hour01 = parseInt(hour01);
									hour02 = parseInt(hour02);
									$('#list2').find('tr').eq(hour01)
											.children().eq(week + 1).addClass(
													'red');
									$('#list2').find('tr').eq(hour02)
											.children().eq(week + 1).addClass(
													'red');
									$('#list2').find('tr').eq(hour01)
											.children().eq(week + 1).text(
													'${var1.sub_name}');
									$('#list2').find('tr').eq(hour02)
											.children().eq(week + 1).text(
													'${var1.classroom}');
								}
								</c:if>
							} else if (page == 2) {
								<c:if test="${ var1.no == 2 }">
								var data = "${ var1.class_time }";
								for (var i = 0; i < Math.trunc(data.length / 3,
										0); i++) {
									var weekstr = "월화수목금";
									var week = data.substr(3 * i, 1);
									week = weekstr.indexOf(week);
									var hour01 = data.substr(1, 1);
									var hour02 = data.substr(2, 1);
									week = parseInt(week);
									hour01 = parseInt(hour01);
									hour02 = parseInt(hour02);
									$('#list2').find('tr').eq(hour01)
											.children().eq(week + 1).addClass(
													'red');
									$('#list2').find('tr').eq(hour02)
											.children().eq(week + 1).addClass(
													'red');
									$('#list2').find('tr').eq(hour01)
											.children().eq(week + 1).text(
													'${var1.sub_name}');
									$('#list2').find('tr').eq(hour02)
											.children().eq(week + 1).text(
													'${var1.classroom}');
								}
								</c:if>
							}
							</c:forEach>
							</c:if>

						});
			});
</script>
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
				<button type="button" class="btn btn-light" style="background-color: grey; color: white;">시간표 확인</button>
			</div>
			<!-- 조회/시간표 구분 div 끝 -->
			<!-- 조회 div -->
			<div class="search">
				<!-- topMenu - 검색창 -->
				<div class="topMenu">
					<table border="1" style="width: 100%;">
						<tr>
							<td>
								<form id="selection" action="selection.do" method="post"
									commandName="SubjectVO">
									학과지정 <select name="department" id="department"
										style="width: 17%">
										<option value="사회복지학과">사회복지학과</option>
										<option value="컴퓨터공학과">컴퓨터공학과</option>
									</select>&nbsp;&nbsp;|| 이수 <select name="option" id="option"
										style="width: 17%">
										<option value="">&nbsp;&nbsp;이 수 구 분</option>
										<option value="">전공(전선+전필)</option>
									</select>&nbsp;&nbsp;|| &nbsp;&nbsp; <input type="submit"
										class="btn btn-info" value="조회">
								</form>
							</td>
						</tr>
					</table>
				</div>
				<br> <br>
				<!-- topMenu - 검색창 끝 -->
				<!-- 조회 시간표 출력 테이블 div -->
				<div class="searchList">
					<!-- form태그 들어가는 위치 -->
					<div id="creditCount" align="right">
						선택 총 학점 : <span id="credit">0</span>
					</div>
					<form method="post" action="createTable.do"
						onsubmit="return checkCredit()">
						<p align="right">학점은 18~21학점 범위 내에서만 신청할 수 있습니다.</p>
						<table border="1" style="width: 100%;" id="list">
							<tr>
								<th width="3%"></th>
								<th width="5%">번호</th>
								<th width="10%">학수번호</th>
								<th>과목명</th>
								<th width="5%">이수</th>
								<th width="5%">학점</th>
								<th width="5%">정원</th>
								<th width="11%">강의시간</th>
								<th width="8%">담당교수</th>
								<th width="15%">강의실</th>
								<th width="13%">비고</th>
							</tr>
							<c:forEach var="subject" items="${subjectList}" varStatus="num">
								<tr>
									<td><input type="checkbox" name="checkbox"
										value="${num.count}"></td>
									<td>${ subject.no }</td>
									<td>${ subject.sub_no }</td>
									<td>${ subject.sub_name }</td>
									<td>${ subject.kind }</td>
									<td>${ subject.stu_no }</td>
									<td>${ subject.stu_limit }</td>
									<td>${ subject.class_time }</td>
									<td>${ subject.prof }</td>
									<td>${ subject.classroom }</td>
									<td>${ subject.remarks }</td>
								</tr>
							</c:forEach>
						</table>
						<br> <br>
						<button type="submit" class="btn btn-info" id="createBtn">시간표
							제작</button>
					</form>
				</div>
				<!-- 조회 시간표 출력 테이블 div 끝 -->
			</div>
			<!-- 조회 div 끝 -->
			<!-- 시간표 출력 div -->
			<div class="timeTable">
				<div id="result" align="center">
					<table border="1" style="width: 100%;" id="list2">
						<tr>
							<th width="10%">구분</th>
							<th width="18%">월</th>
							<th width="18%">화</th>
							<th width="18%">수</th>
							<th width="18%">목</th>
							<th width="18%">금</th>
						</tr>
						<c:forEach var="loop" begin="1" end="8">
							<tr>
								<td>${loop}교시</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<!-- 시간표 출력 div 끝 -->
				<br>
				<br>
				<button type="button" class="btn btn-info" id="previous">이전
					시간표</button>
				<button type="button" class="btn btn-info" id="next">다음 시간표</button>
			</div>
			<br> <br>
			<footer>
				<strong>Copyright © Oct 2018 by wonseok Song</strong>
			</footer>
		</div>
		<!-- 전체 컨텐츠 div 끝 -->
	</div>
	<!-- 전체 div 끝 -->
</body>
</html>