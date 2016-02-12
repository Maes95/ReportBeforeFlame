var state = true; // true -> Cards, false -> List

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

function cardView() {
  state = true;
  $( "#ReportTable" ).hide( "slow", function() {
    $("#cards").children(".scene3D").each(function (){
      $(this).show("medium");
    });
  });
}

function listView() {
  state = false;
  $("#cards").children(".scene3D").each(function (){
    $(this).hide("slow");
  });

  setTimeout(
  function()
  {
    $( "#ReportTable" ).show("slow");
    $('#ReportTable tbody tr').each(function (){
        $(this).show();
    });
  }, "slow");

}

function reportFilter(label){
  if(state){ // Cardview
    $("#cards").children(".scene3D").each(function (){
      if(!$(this).hasClass(label+'-s')){
        $(this).hide("slow");
      }else{
        $(this).show("slow");
      }
    });
  }else{ // ListView
    $('#ReportTable tbody tr').each(function (){
      if(!$(this).hasClass(label+'-s')){
        $(this).hide("slow");
      }else{
        $(this).show("slow");
      }
    });
  }
}


$(document).ready(function(){
  $( "#ReportTable" ).hide();
});
