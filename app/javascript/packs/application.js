// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
import 'bootstrap';
import '../stylesheets/application';

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


function EachTextAnimeControl() {
    $('.eachTextAnime').each(function () {
        var elemPos = $(this).offset().top - 50;
        var scroll = $(window).scrollTop();
        var windowHeight = $(window).height();
        if (scroll >= elemPos - windowHeight) {
          $(this).addClass("appeartext");

        } else {
          $(this).removeClass("appeartext");
        }
    });
}
    
$(window).on('load', function () {
      var element = $(".eachTextAnime");
      element.each(function () {
        var text = $(this).text();
        var textbox = "";
        text.split('').forEach(function (t, i) {
          if (t !== " ") {
            if (i < 10) {
              textbox += '<span style="animation-delay:.' + i + 's;">' + t + '</span>';
            } else {
              var n = i / 10;
              textbox += '<span style="animation-delay:' + n + 's;">' + t + '</span>';
            }
    
          } else {
            textbox += t;
          }
        });
        $(this).html(textbox);
      });
  EachTextAnimeControl();
});