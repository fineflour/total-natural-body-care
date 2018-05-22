$(window).load(function(){
  $('img.bgfade').hide();
  var dg_H = $(window).height();
  var dg_W = $(window).width();
  //$('#ani-wrap').css({'height':dg_H/4,'width':dg_W});
  function anim() {
    $("#ani-wrap img.bgfade").first().appendTo('#ani-wrap').fadeOut(8000);
    $("#ani-wrap img").first().fadeIn(1000);
    setTimeout(anim, 12000);
  }
  anim();}
  )
//$(window).resize(function(){window.location.href=window.location.href})
