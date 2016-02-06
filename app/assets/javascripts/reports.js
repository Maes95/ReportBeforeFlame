function cuenta(){
  var s = $('#report_content').val();
  var count = 0;
  if (s != ""){count = s.match(/\w+/g).length;}
  //console.log(count);
  $('#report_count').val(count);

  $('#label_count').removeClass('label-danger');
  $('#label_count').removeClass('label-default');
  $('#label_count').removeClass('label-warning');

  if (count < 15){
    $('#label_count').addClass('label-danger');
  }
  else {
    if (count == 15){
      $('#label_count').addClass('label-warning');
    }else{
      $('#label_count').addClass('label-default');
    }
  }
}
