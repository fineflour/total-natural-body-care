!function(){var n=$('<div id="galleryOverlay">'),e=$('<div id="gallerySlider">'),t=$('<a id="prevArrow"></a>'),i=$('<a id="nextArrow"></a>'),o=!1;$.fn.touchTouch=function(){function c(e){if(o)return!1;n.show(),setTimeout(function(){n.addClass("visible")},100),a(e),o=!0}function u(){if(!o)return!1;n.hide().removeClass("visible"),o=!1}function a(n){e.css("left",100*-n+"%")}function r(n){setTimeout(function(){f(n)},1e3)}function f(n){if(n<0||n>=g.length)return!1;l(g.eq(n).attr("href"),function(){h.eq(n).html(this)})}function l(n,e){var t=$("<img>").on("load",function(){e.call(t)});t.attr("src",n)}function d(){v+1<g.length?(v++,a(v),r(v+1)):(e.addClass("rightSpring"),setTimeout(function(){e.removeClass("rightSpring")},500))}function s(){v>0?(v--,a(v),r(v-1)):(e.addClass("leftSpring"),setTimeout(function(){e.removeClass("leftSpring")},500))}var h=$([]),v=0,g=this;n.hide().appendTo("body"),e.appendTo(n),g.each(function(){h=h.add($('<div class="placeholder">'))}),e.append(h).on("click",function(n){$(n.target).is("img")||u()}),$("body").on("touchstart","#gallerySlider img",function(n){var t=n.originalEvent,i=t.changedTouches[0].pageX;return e.on("touchmove",function(n){n.preventDefault(),t=n.originalEvent.touches[0]||n.originalEvent.changedTouches[0],t.pageX-i>10?(e.off("touchmove"),s()):t.pageX-i<-10&&(e.off("touchmove"),d())}),!1}).on("touchend",function(){e.off("touchmove")}),g.on("click",function(n){n.preventDefault(),v=g.index(this),c(v),f(v),r(v+1),r(v-1)}),"ontouchstart"in window||(n.append(t).append(i),t.click(function(n){n.preventDefault(),s()}),i.click(function(n){n.preventDefault(),d()})),$(window).bind("keydown",function(n){37==n.keyCode?s():39==n.keyCode&&d()})}}(jQuery);