!function(t){t.fn.tmStickUp=function(o){function i(){parentContainer=c.parent(),l=parseInt(c.offset().top),u=parseInt(c.css("margin-top")),p=parseInt(c.outerHeight(!0)),h=parseInt(t(".container").width()),t('<div class="pseudoStickyBlock"></div>').insertAfter(c),e=t(".pseudoStickyBlock"),e.css({position:"relative",display:"block"}),c.on("rePosition",function(t,o){k=o,a.trigger("scroll")}),s()}function s(){a.on("scroll",function(){r=t(this).scrollTop(),g=r>f?"down":"up",f=r,d=parseInt(a.scrollTop()),l-u<d?(c.addClass("isStuck"),c.css({position:"fixed",top:k,zIndex:999,left:0,right:0,margin:"0 auto"}),e.css({height:p})):(c.removeClass("isStuck"),c.css({position:"relative",top:0}),e.css({height:0}))}).trigger("scroll")}var n={corectionValue:0};t.extend(n,o);var e,r,c=t(this),a=(t(window),t(document)),l=0,p=0,u=0,d=0,f=0,g="",h=0,k=0;i()}}(jQuery);