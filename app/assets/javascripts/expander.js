$(document).ready(function () {
$('.companyname').click(function(){
        $(this).parent().children(".company_info").toggle("fast");
        $(this).parent().children(".company_info").toggleClass("invisible");
});
});
