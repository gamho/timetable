$(document).ready(function(){
    // 스크롤 버튼 위아래 이동 반복
    $(function() {
        swing();
        function swing() {
//            console.log('swing() 동작 확인');
            $('.scroll-about-btn').animate({'bottom':'5px'},600).animate({'bottom':'10px'},600, swing);
    //        $('.fa-chevron-circle-down').animate({'bottom':'50px'},600).animate({'bottom':'100px'},600, swing);
        }
    });

});


    // .scroll-about-btn 클릭시 about div로 이동
    function fnMove(){
        var offset = $(".service-div").offset();
        $('html, body').animate({scrollTop : offset.top}, 780);
    }