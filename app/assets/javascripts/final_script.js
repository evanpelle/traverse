$(document).ready(function() {
  consulting = localStorage.getItem("consulting");
  requiting = localStorage.getItem("requiting");
  retained = localStorage.getItem("retained");
  executive = localStorage.getItem("executive");

  consultingPage = $('#consulting').hide();
  requitingPage = $('#requiting-process').hide();
  retainedPage = $('#retained-search').hide();
  executivePage = $('#executive-search').hide();

  $('#thank-not-complete').hide()

  if(consulting == "false" && requiting == "false" &&
  retained == "false" && executive == "false") {
    //$('#our-services').hide();
    consultingPage.show();
  } 


  if(consulting != "false") retainedPage.show();


  if(requiting != "false") requitingPage.show();


  if(retained != "false") consultingPage.show();


  if(executive != "false") consultingPage.show();






  var width = window.innerWidth;
  videos = $('.video')
  if(width < 800) {
    videos.attr('width', width-30)
    videos.attr('height', width-80)
  }


  $('html, body').delay(200).animate({
      scrollTop:  $('#thank-complete').offset().top -200
    }, 700);

  img = $('#main-img')
    if(window.innerWidth < 450) {

      img.attr('width', window.innerWidth-50)
    }

});