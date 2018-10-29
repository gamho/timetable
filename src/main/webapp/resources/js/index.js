$(document).ready(function(){
	// '과목 검색' 클릭 이벤트
     $('.btn-dark').click(function() {
        $('.searchList').css('display', 'block');
        $('.timeTable').css('display', 'none');
        $('.btn-dark').css('background-color', '#343a40');
        $('.btn-light').css('background-color', 'grey');
    });

     
    // 최대 학점, 강의시간 중복 방지 조건문 및 시간표 기준 강의 위치 선정 관련 함수
	totalCredit = 0;
	var schedule = new Array(5);
	for(var i = 0; i < schedule.length; i++) {
		schedule[i] = new Array(8);
		for(var j = 0; j < schedule[i].length; j++)
			schedule[i][j] = false;
	}
	$('input[type=checkbox]').click(function(){
		var credit = $(this).parent().siblings().eq(4).text(); // 학점
		var className = $(this).parent().siblings().eq(2).text(); // 과목명
		credit = parseInt(credit);
		if(this.checked) {
			if((totalCredit + credit) > 21) {
				alert('최대학점을 넘어섰습니다. 선택하실 수 없습니다');
				this.checked = !this.checked;
			} else {
				totalCredit += credit;
				var data = $(this).parent().siblings().eq(6).text();
				var flag = true;
				for(var i = 0;  i < Math.trunc(data.length/3, 0); i++) {
					var weekstr = "월화수목금";
					var week = data.substr(3*i, 1);
					week = weekstr.indexOf(week);
					var hour01 = data.substr(1,1);
					var hour02 = data.substr(2,1);
					if(schedule[week][hour01] || schedule[week][hour02]) {
						flag = false;
						break;
						}
					}
				if(flag) {
					for(var i = 0;  i < Math.trunc(data.length/3, 0); i++) {	
						var weekstr = "월화수목금";
						var week = data.substr(3*i, 1);
						week = weekstr.indexOf(week);
						var hour01 = data.substr(1,1);
						var hour02 = data.substr(2,1);
						schedule[week][hour01] = true;
						schedule[week][hour02] = true;
					}
				} else {
					alert('시간표가 중복됩니다');
					this.checked = false;
				}
			}
		}
		else
			totalCredit -= credit;
	
		$('#credit').text(totalCredit);
	});
	
});

// 최소 학점 조건문
function checkCredit() {
	if(totalCredit < 18) {
		alert('최소 18학점 이상 선택하셔야 합니다.')
		return false;
	} else {
		alert('시간표가 등록되었습니다. 최대 2개까지 조회 가능합니다.')
		return true;
	}
	
}

// 시간표 전환 시 기존 화면 제거 관련 함수
function returnTable() {
	for(var i = 1; i <= 8; i++) {
		for(var j = 1; j <= 5; j++) {
			$('#list2').find('tr').eq(i).children().eq(j).removeClass('red');
			$('#list2').find('tr').eq(i).children().eq(j).text('');
			$('#list2').find('tr').eq(i).children().eq(j).text('');
		}
	}
}
