// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery-fileupload/basic
//= require jquery-fileupload/vendor/tmpl
//= require s3_direct_upload
//= require_tree .

// jQuery ->
//   $("#s3-uploader").S3Uploader()

$(document).ready(function(){
$('#see_house').click(function () {

   $('#main_container').slideToggle({
     direction: "down"
   }, 300);
   $('#footer_toggle_button').toggle();
 });
 $('#footer_toggle_button').click(function () {

    $('#main_container').slideToggle({
      direction: "up"
    }, 300);
    $('#footer_toggle_button').toggle();
  }); 
 
});