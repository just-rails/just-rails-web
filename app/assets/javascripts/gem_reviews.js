// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
//
$(document).on("click", ".number-btn", function() {
  $(this).addClass('active').siblings().removeClass('active');
  $(this).closest(".score-group").find('input').val($(this).text());
});

$(document).on("click", ".clear-btn", function() {
  $(this).parent().siblings().children().removeClass('active');
});

var onload = function onload() {
  $(".score-group div.score-group-radio").hide();
  $(".score-group div.btn-toolbar").show();
};

$(document).ready(onload)
$(window).bind('page:change', onload)
