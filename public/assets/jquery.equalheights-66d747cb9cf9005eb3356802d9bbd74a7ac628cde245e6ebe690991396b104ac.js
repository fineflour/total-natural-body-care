function height_handler(){$(window).width()>767?$(".maxheight").equalHeights():$(".maxheight").css({height:"auto"}),$(window).width()>767?$(".maxheight1").equalHeights():$(".maxheight1").css({height:"auto"})}$(function(){$(".maxheight").each(function(){$(this).contents().wrapAll("<div class='box_inner'></div>")}),$(".maxheight1").each(function(){$(this).contents().wrapAll("<div class='box_inner'></div>")})}),$(window).bind("resize",height_handler).bind("load",height_handler),function(t){t.fn.equalHeights=function(i,e){return tallest=i||0,this.each(function(){t(">.box_inner",this).outerHeight()>tallest&&(tallest=t(">.box_inner",this).outerHeight())}),e&&tallest>e&&(tallest=e),this.each(function(){t(this).height(tallest)})}}(jQuery);