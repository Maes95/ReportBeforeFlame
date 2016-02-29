
function cuenta(){
  var s = $('#report_content').val();
  var count = 0;
  if (s != ""){count = s.match(/\w+/g).length;}
  //console.log(count);
  $('#report_count').val(count +" words");
  $('#report_count').removeClass('label-danger label-default label-warning');
  $('#ReportBar').removeClass('progress-bar-warning progress-bar-danger progress-bar-success');
  if(count >= 15){ // SUCCESS
    $('#report_count').addClass('label-success');
    $('#ReportBar').addClass('progress-bar-success');
    $('#ReportBar').width('100%');
    $('#Percent').val('100% Complete');
  }else{
    if(count > 7){ // WARNING
      $('#ReportBar').addClass('progress-bar-warning');
      $('#report_count').addClass('label-warning');
    }else{ // DANGER
      $('#ReportBar').addClass('progress-bar-danger');
      $('#report_count').addClass('label-danger');
    }

    var percent = Math.floor((count/15)*100);
    $('#ReportBar').width(percent+'%');
    $('#Percent').val(percent+'% Complete');
  }
}

$(document).ready(function(){
  $( "#PanelReport" ).removeClass('panel-default');

  if($( "#priority" ).hasClass('label-success')){
    $( "#PanelReport" ).addClass('panel-success');
  }else{
    if($( "#priority" ).hasClass('label-warning')){
      $( "#PanelReport" ).addClass('panel-warning');
    }else{
      $( "#PanelReport" ).addClass('panel-danger');
    }
  }


});
