$(document).ready(function(){
	// 화면 전환 이벤트
    $('.btn-light').click(function() {
        $('.searchList').css('display', 'none');
        $('.timeTable').css('display', 'block');
        $('.btn-light').css('backgound-color', '#343a40');
        $('.btn-dark').css('backgound-color', 'grey');
    });
     $('.btn-dark').click(function() {
        $('.searchList').css('display', 'block');
        $('.timeTable').css('display', 'none');
        $('.btn-dark').css('backgound-color', '#343a40');
        $('.btn-light').css('backgound-color', 'grey');
    });
       
    // 학점, 강의시간 조건문
	var totalCredit = 0;
	var schedule = new Array(5);
	for(var i = 0; i < schedule.length; i++) {
		schedule[i] = new Array(8);
		for(var j = 0; j < schedule[i].length; j++)
			schedule[i][j] = false;
	}
	console.log(schedule);
	$('input[type=checkbox]').click( function(){
		var credit = $(this).parent().siblings().eq(4).text();
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
					console.log(week, hour01, hour02);
					console.log(schedule[week][hour01]);
					if(schedule[week][hour01] || schedule[week][hour02]) {
						flag = false;
						break;
					}
					
				}
				console.log(flag);
				if(flag) {
					for(var i = 0;  i < Math.trunc(data.length/3, 0); i++) {
						var weekstr = "월화수목금";
						
						var week = data.substr(3*i, 1);
						week = weekstr.indexOf(week);
						var hour01 = data.substr(1,1);
						var hour02 = data.substr(2,1);
						console.log(week, hour01, hour02);
						console.log(schedule[week][hour01]);
						if(schedule[week][hour01] && schedule[week][hour02]) {
							alert('시간표가 중복됩니다');
							this.checked = false;
						}
						else if(schedule[week][hour02]) {
							alert('시간표가 중복됩니다');
							this.checked = false;
						} else {
							schedule[week][hour01] = true;
							schedule[week][hour02] = true;
							console.log(schedule);
							// 색깔 칠해주는 코드!
						//	$('#list2').find('tr').eq(week+1).children().eq(hour01+1).css('background-color', 'red')
						}
					}
				}
				
			}
		}
		else
			totalCredit -= credit;
	
		$('#credit').text(totalCredit);
			
	});
});
