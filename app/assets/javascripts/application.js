// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require tether
//= require bootstrap
//= require jquery_ujs
//= require turbolinks
//= require_tree .
var mode = true; // true -> Cards, false -> List
//var state = "ALL"; // ALL / OPENED / CLOSED

function cardView() {
  mode = true;
  $( "#ReportTable" ).hide( "slow", function() {
    $("#cards").children(".scene3D").each(function (){
      $(this).show("medium");
    });
  });
}

function listView() {
  mode = false;
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
  if(mode){ // Cardview
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

function reportFilterState(label){
  if(mode){ // Cardview
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
  mode = true;
});
