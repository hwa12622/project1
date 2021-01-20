$(function () {
    var autoFont = function () {
        $(".text").css('font-size', Math.max(Math.min($(".text").width() / (4.2 * 10))));
    }
    autoFont();
    $(window).resize(function () {
        autoFont();
    });
});