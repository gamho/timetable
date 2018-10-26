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
    
    var addColTag = '<div class="kanban-col round-border">'
            + '<div class="kanban-head">'
                + '<p>TODO'
                    +'<img class="body-up-img" src="resources/img/board/sort-up.png">'
                    +'<img class="body-down-img" src="resources/img/board/sort-down.png">'
                +'</p>'
            +'</div>'
            + '<div class="kanban-body">'
                /*+ '<jsp:include page="/WEB-INF/views/kanban_task.jsp"/>'*/
                + '<div class="add-task-box">'
                    + '<a href="#"><i class="fas fa-plus-circle add"></i></a>'
                + '</div>'
            + '</div>'
        +'</div>';
    

    $('fa-plus-circle, .add').click(function() {
        console.log('col 추가 작업 수행');
        
        var addCol = $(addColTag).hide().appendTo("#kanban-col-box");
        
        addCol.show("fade", 300);
        /*
        if( $('html').click(function(e) 
        		{ if( !$(e.target).hasClass(addCol) )
        		{ if( $(e.target)!=$('.kanban-col').last() ) { 
        			alert('영역 밖입니다.'); 
        			}
        		}
        ));
        */	
        console.log('col 추가 작업 수행 완료!');
        
    });
});