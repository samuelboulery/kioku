$('.button').click(function(){
    var buttonId = $(this).attr('id');
    $('#modal-container').removeAttr('class').addClass(buttonId);
    $('body').addClass('modal-active');
    // $('.button-logout').removeClass('button-logout').addClass('button-modal');
    // $('.logo').removeClass('logo').addClass('logo-modal');
  })
  
  $('.cancel').click(function(){
    $('#modal-container').addClass('out');
    $('body').removeClass('modal-active');
    // $('.button-modal').removeClass('button-modal').addClass('button-logout');
    // $('.logo-modal').removeClass('logo-modal').addClass('logo');
  });