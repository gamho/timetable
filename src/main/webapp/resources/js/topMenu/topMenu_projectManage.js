$(document).ready(function() {
    
    $('.overview').show();
    $('.checklist').hide();
    $('.preference').hide();
    
    $('.overviewBtn').css('color', 'aliceblue').css('text-decoration', 'underline');

    $('.overviewBtn').click(function() {
        $('.overview').show();
        $('.checklist').hide();
        $('.preference').hide();
        $('.overviewBtn').css('color', 'aliceblue').css('text-decoration', 'underline');
        $('.checklistBtn').css('color', 'black').css('text-decoration', 'none');
        $('.preferenceBtn').css('color', 'black').css('text-decoration', 'none');
        return false;
    });
    
    $('.checklistBtn').click(function() {
        $('.overview').hide();
        $('.checklist').show();
        $('.preference').hide();
        $('.overviewBtn').css('color', 'black').css('text-decoration', 'none');
        $('.checklistBtn').css('color', 'aliceblue').css('text-decoration', 'underline');
        $('.preferenceBtn').css('color', 'black').css('text-decoration', 'none');
    });
        
    $('.preferenceBtn').click(function() {
        $('.overview').hide();
        $('.checklist').hide();
        $('.preference').show();
        $('.overviewBtn').css('color', 'black').css('text-decoration', 'none');
        $('.checklistBtn').css('color', 'black').css('text-decoration', 'none');
        $('.preferenceBtn').css('color', 'aliceblue').css('text-decoration', 'underline');
        return false;
    });
    
    
});