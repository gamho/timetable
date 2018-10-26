$(document).ready(function() {
   
    // 모달 가져오기
    var MyPageModal = document.getElementById('MyPageModal');
    var StickyNoteModal = document.getElementById('StickyNoteModal');
    var RegistrationModal = document.getElementById('RegistrationModal');
    var MainCommentModal = document.getElementById('MainCommentModal');
    
    // 모달 여는 버튼 가져오기
    var MyPageModalBtn = document.getElementById('MyPageModalBtn');
    var StickyNoteModalBtn = document.getElementById('StickyNoteModalBtn');
    var RegistrationModalBtn = document.getElementById('RegistrationModalBtn');
    var MainCommentModalBtn = document.getElementById('MainCommentModalBtn');
    
    // 모달 닫기 위해 <span> 요소 가져오기
    
    
    // 버튼 클릭 시 모달 열기
    MyPageModalBtn.onclick = function() {
        MyPageModal.style.display = "block";
    }
    
    StickyNoteModalBtn.onclick = function() {
        StickyNoteModal.style.display = "block";
    }
    
    RegistrationModalBtn.onclick = function() {
        RegistrationModal.style.display = "block";
    }
    
    MainCommentModalBtn.onclick = function() {
        MainCommentModal.style.display = "block";
    }
    
    // x <span> 클릭 시 모달 닫기
    
    
    // 모달 밖 아무 곳이나 클릭 시 모달 닫기
    window.onclick = function(event) {
        if(event.target == MyPageModal) {
            MyPageModal.style.display = "none";
        }
        if(event.target == StickyNoteModal) {
            StickyNoteModal.style.display = "none";
        }
        if(event.target == RegistrationModal) {
            RegistrationModal.style.display = "none";
        }
        if(event.target == MainCommentModal) {
            MainCommentModal.style.display = "none";
        }
    }
    
});