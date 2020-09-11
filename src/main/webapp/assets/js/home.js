
$(document).ready(function () {
    $('[data-tooltip="tooltip"]').tooltip();
    $("#home .bg-choice a").hover(function () {
        $(this).parent("#home .bg-choice").addClass("bg-choice-color-hover");
        $(this).addClass("hover-color");
    }, function () {
        $("#home .bg-choice").removeClass("bg-choice-color-hover");
        $(this).removeClass("hover-color");
    });

   }