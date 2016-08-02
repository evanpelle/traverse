$(document).ready(function() {

  var currQuestion = 0;
  landing = $('#landing')
  contactForm = $('#contact-form').hide()
  mainQuest = $('#main-questions').hide()
  aQuest = $('#a-questions').hide()
  bAQuest = $('#bA-questions').hide()
  bBQuest = $('#bB-questions').hide()
  cAQuest = $('#cA-questions').hide()
  cBQuest = $('#cB-questions').hide()
  dQuest = $('#d-questions').hide()

  toContact = $('#toContact').hide();

  consultingPage = $('#consulting').hide();
  requitPage = $('#requiting-process').hide();
  retainedPage = $('#retained-search').hide();
  execPage = $('#executive-search').hide();


  /*consultingPage = $('#consulting')
  requitPage = $('#requiting-process')
  retainedPage = $('#retained-search')
  execPage = $('#executive-search') */



  submitButton = $('[name="commit"]').hide();
  prevButton = $('#previous-button').hide();
  nextButton = $('#next-button')
  finishButton = $('#finish-button').hide();
  var inputStages = [contactForm, mainQuest, aQuest, bAQuest, bBQuest,
   cAQuest, cBQuest, dQuest, landing];
  ma = $('#soft_sell_survey_ma')
  mb = $('#soft_sell_survey_mb')
  mc = $('#soft_sell_survey_mc')
  md = $('#soft_sell_survey_md')

  cA0Questions = $('#cA0-questions').hide()
  d1Questions = $('#d1-questions').hide()

  cA0 = $('#soft_sell_survey_cA0').click(function() {
    if($(this).is(':checked')) {
      cA0Questions.slideDown();
    } else {
      cA0Questions.slideUp();
      $('#soft_sell_survey_cA0a').attr('checked',false);
      $('#soft_sell_survey_cA0b').attr('checked',false);
      $('#soft_sell_survey_cA0c').attr('checked',false);
    }
  });
  d1 = $('#soft_sell_survey_d1').click(function() {
    if($(this).is(':checked')) {
      d1Questions.slideDown();
    } else {
      d1Questions.slideUp();
      $('#soft_sell_survey_d1a').attr('checked',false);
      $('#soft_sell_survey_d1b').attr('checked',false);
      $('#soft_sell_survey_d1c').attr('checked',false);
      $('#soft_sell_survey_d1d').attr('checked',false);
      $('#soft_sell_survey_d1e').attr('checked',false);
    }
  });


  otherBox = $('#soft_sell_survey_other').click(function() {
    if(!$(this).is(":checked")) {
        if(!ma.is(":checked") && !mb.is(":checked") && !mc.is(":checked")
          && !md.is(":checked") && !otherBox.is(":checked")) {
          submitButton.hide()
        }
      } else {
        if(!ma.is(":checked") && !mb.is(":checked") && !mc.is(":checked")
            && !md.is(":checked")) {
          submitButton.show()
          nextButton.hide()
        }
      }
    }); 
  function setupCheckBox(checkBox) {
    checkBox.click(function() {
      if(!checkBox.is(":checked")) {
        if(!ma.is(":checked") && !mb.is(":checked") && !mc.is(":checked")
          && !md.is(":checked") && !otherBox.is(":checked")) {
          //submitButton.show()
          nextButton.hide()
        }
        if(!ma.is(":checked") && !mb.is(":checked") && !mc.is(":checked")
          && !md.is(":checked") && otherBox.is(":checked")) {
          nextButton.hide();
          submitButton.show();
        }
      } else {
        nextButton.show();
        submitButton.hide();
      }
    });
  }
  setupCheckBox(ma);
  setupCheckBox(mb);
  setupCheckBox(mc);
  setupCheckBox(md);
  //setupCheckBox(otherBox);

  function hideAll() {
    inputStages.forEach(function(el) {
      el.hide()
      //el.hide();
      //submitButton.delay(500).hide()
      //nextButton.delay(500).hide()
      //prevButton.delay(500).hide()
    });
     prevButton.hide();
      nextButton.hide()
      submitButton.hide()
  }

  function scrollTo(el) {
    $('html, body').delay(200).animate({
      scrollTop: el.offset().top - 50
    }, 700);
  }

  function isLastQuestion(showQ, el) {
    for(i = el+1; i < showQ.length; i+=1) {
      if(showQ[i]) return false;
    }
    return true;
  }



  function surveyAction(toNext) {
    if(toNext) {
      currQuestion += 1;
    } else {
      currQuestion -= 1;
    }
    hideAll();
    switch(currQuestion) {
      case 0:
        break;
      case 1:
        contactForm.fadeIn();
        nextButton.show()
        scrollTo(contactForm);
        break;
      case 2:
        //mainQuest.delay(200).slideDown("slow");
        mainQuest.fadeIn()
        prevButton.show()
        if(ma.is(':checked') || mb.is(':checked') || mc.is(':checked')
           || md.is(":checked") || otherBox.is(':checked')) {
          nextButton.show();
      }
        scrollTo(mainQuest);
        break;

      case 3:
        if(ma.is(":checked")) {
          aQuest.fadeIn();
          scrollTo(aQuest);
          prevButton.show();
          nextButton.show();
          if(!mb.is(':checked') && !mc.is(':checked')
           && !md.is(":checked")) {
            nextButton.hide();
            submitButton.show();
          }
        } else surveyAction(toNext)
        break;

      case 4:
        if(mb.is(":checked")) {
          bAQuest.fadeIn();
          scrollTo(bAQuest);
          nextButton.show();
          prevButton.show();
        } else {surveyAction(toNext);}
        break;

      case 5:
        if(mb.is(":checked")) {
          bBQuest.fadeIn()
          scrollTo(bBQuest);
          nextButton.show();
          prevButton.show();
          if(!mc.is(':checked') && !md.is(":checked")) {
            nextButton.hide();
            submitButton.show();
          }
        } else surveyAction(toNext)
        break;

      case 6:
        if(mc.is(":checked")) {
          cAQuest.fadeIn();
          scrollTo(cAQuest);
          nextButton.show();
          prevButton.show();
        } else surveyAction(toNext)
        break;

      case 7:
        if(mc.is(":checked")) {
          cBQuest.fadeIn();
          scrollTo(cBQuest);
          nextButton.show();
          prevButton.show();
          if(!md.is(":checked")) {
            nextButton.hide();
            submitButton.show();
          }
        } else surveyAction(toNext);
        break;
      case 8:
        if(md.is(":checked")) {
          dQuest.fadeIn();
          scrollTo(dQuest);
          prevButton.show();
          //nextButton.show();
          submitButton.show();
        } else surveyAction(toNext)
        break;

      case 9:
        alert("at last page");
        toContact.fadeIn();
        scrollTo(toContact)
        submitButton.show();
        break;
    }
  }


  nextButton.click(function() {
    surveyAction(true);
    $(this).blur();
  });

  prevButton.click(function() {
    surveyAction(false);
    $(this).blur();
  });

  /*$('#soft_sell_survey_cA0').click(function() {
    alert("hi")
  });*/

  submitButton.click(function() {
    localStorage.setItem("consult", false)
    localStorage.setItem("requit", false)
    localStorage.setItem("retained", false)
    localStorage.setItem("executive", false)
  });


 $(window).on('beforeunload', function(){
    localStorage.setItem("consulting", ma.is(":checked"));
    localStorage.setItem("requiting", mb.is(":checked"));
    localStorage.setItem("retained", mc.is(":checked"));
    localStorage.setItem("executive", md.is(":checked"));       
  });


 img = $('#main-img')
    if(window.innerWidth < 450) {

      img.attr('width', window.innerWidth-50)
    }

});