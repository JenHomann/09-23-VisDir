// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
  $("#cards").on("click", ".card-fav", function(e){
    alert("Fav/Unfav!");
    e.preventDefault();
  });
})