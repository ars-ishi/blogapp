// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function(){

    var $nav = $('nav');
    var wideButton = $(".wideButton");
    var miniButton = $('.miniButton');
    var title = $('.article_title');
    var GreenButton = $(".changeGreen");
    var BlueButton = $(".changeBlue");
    var PinkButton = $(".changePink");

    $('.changeGreen').on('click', function(){
        $nav.css('background-color', '#00796b');
        wideButton.css('background-color', '#00796b');
        miniButton.css('background-color', '#00796b');
        title.css('border-left', 'solid 5px #00796b');
        $(this).removeClass('waves-effect').css('background-color', '#c2dad9');
        BlueButton.addClass('waves-effect').css('background-color', '#eee');
        PinkButton.addClass('waves-effect').css('background-color', '#eee');
        console.log("緑押した！");
  });

    $('.changeBlue').on('click', function(){
        $nav.css('background-color', '#3f51b5');
        wideButton.css('background-color', '#3f51b5');
        miniButton.css('background-color', '#3f51b5');
        title.css('border-left', 'solid 5px #3f51b5');
        $(this).removeClass('waves-effect').css('background-color', '#d4dae7');
        GreenButton.addClass('waves-effect').css('background-color', '#eee');
        PinkButton.addClass('waves-effect').css('background-color', '#eee');
        console.log("青押した！");
  });

    $('.changePink').on('click', function(){
        var $baseNav = $nav.css('background-color');
        $nav.css('background-color', "#ee6e73");
        wideButton.css('background-color', '#ee6e73');
        miniButton.css('background-color', '#ee6e73');
        title.css('border-left', 'solid 5px #ee6e73');
        $(this).removeClass('waves-effect').css('background-color', '#e7d4d7');
        GreenButton.addClass('waves-effect').css('background-color', '#eee');
        BlueButton.addClass('waves-effect').css('background-color', '#eee');
        console.log("ピンク押した！");
  });

  $(window).scroll(function (){
      $('.fadein').each(function(){
        var elemPos = $(this).offset().top;
        var scroll = $(window).scrollTop();
        var windowHeight = $(window).height();
        if (scroll > elemPos - windowHeight + 50){
            $(this).addClass('scrollin');
        }
      });
  });

});
