$(document).ready(function(){
   function isNull(obj, msg) {	
            if(obj.value == '') {
                alert(msg);
                obj.focus();
                return true;
            }
            return false;
        }

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
});