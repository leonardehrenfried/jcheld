$(document).ready(function(){
  var headerImgs=$("header img");
  if(headerImgs.length>1){
    headerImgs.eq(1).animate({opacity:0}, 8000);
  }

  $(".fancybox").fancybox({
    titleShow:false,
    overlayOpacity:0.8
  });
});
