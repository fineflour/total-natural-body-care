$(window).load(function(){
  $('img.bgfade').hide();
  var dg_H = $(window).height();
  var dg_W = $(window).width();
  //$('#ani-wrap').css({'height':dg_H/4,'width':dg_W});
  function anim() {
    $("#ani-wrap img.bgfade").first().appendTo('#ani-wrap').fadeOut(6000);
    $("#ani-wrap img").first().fadeIn(5000);
    setTimeout(anim, 9000);
  }
  anim();})
//$(window).resize(function(){window.location.href=window.location.href})
