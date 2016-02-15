

function cuenta(){
  var s = $('#report_content').val();
  var count = 0;
  if (s != ""){count = s.match(/\w+/g).length;}
  //console.log(count);
  $('#report_count').val(count);
  $('#report_count').removeClass('label-danger label-default label-warning');

  if (count < 15){
    $('#report_count').addClass('label-danger');
  }
  else {
    if (count == 15){
      $('#report_count').addClass('label-warning');
    }else{
      $('#report_count').addClass('label-success');
    }
  }
}
