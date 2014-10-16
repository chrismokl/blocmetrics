function(){
  $(document).ready(function(){
    var application_id = $('#blocmetrics').data('application-id');
    var oReq = new XMLHttpRequest();
    oReq.open("POST",'http://0.0.0.0:4000/api/v1/pageviews/?application_id=' + application_id,true);
    oReq.send();
  });

  $('*').on('click', function(){
    $.ajax({
      url: 'http://0.0.0.0:4000/api/v1/clicks',
      type: 'POST',
      data: {
        application_id: application_id,
        click: {
          element_name: $(this).prop('tagName'),
          id_name: $(this).attr('id'),
          class_name: $(this).attr('class')
        }
      }
    });
  });

}();