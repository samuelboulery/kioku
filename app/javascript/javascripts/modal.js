$('.button').click(function(){
    var buttonId = $(this).attr('id');
    $('#modal-container').removeAttr('class').addClass(buttonId);
    $('body').addClass('modal-active');
  })
  
  $('.cancel').click(function(){
    $('#modal-container').addClass('out');
    $('body').removeClass('modal-active');
  });