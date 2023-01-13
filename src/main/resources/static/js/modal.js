$( document ).ready(function() {

  $('.trigger').on('click', function() {
     $('.modal-wrapper').toggleClass('open');
    $('.page-wrapper').toggleClass('blur-it');
     return false;
  });
  
  
});