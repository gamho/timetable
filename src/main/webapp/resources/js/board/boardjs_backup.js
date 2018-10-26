$(function () {
	
    var state = 0;
    $('.kanban-head').click(function() {
    	console.log('state check: ' + state);
            // 토글down img 보이기
            if (state == 0) {
            	console.log('토글 down img 보이기');
                $('.body-up-img').css('display', 'none');     
                $('.body-down-img').css('display', 'block');
                state = 1;
            }
            // 토글up img 보이기
            else {
            	console.log('토글 up img 보이기');
                $('.body-up-img').css('display', 'block');       
                $('.body-down-img').css('display', 'none');
                state = 0;
            }
        var $panelBody = $(this).parent().children('.kanban-body');
        $panelBody.slideToggle();
        
    });
    
    $('.add-task-box .add').click(function() {
        console.log('task 추가 작업 수행');
    });
    
    $('.add-col-box .add').click(function() {
        console.log('col 추가 작업 수행');
        
        
    });
});