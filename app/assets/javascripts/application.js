// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require base/shadowbox

//= require home

function load_resources() {
  Shadowbox.setup("a.thumbnail");

  // get the first collection
  var $thumbnails = $('#thumbnails');

  // clone thumbnails to get a second collection
  var $data = $thumbnails.clone();

  // attempt to call Quicksand on every click
  $('.filter-nav li a').on('click', function(e) {

    var thisid = $(this).attr('data-id');

    if (thisid == 'all') {
      var $filteredData = $data.find('li');
    } else {
      var $filteredData = $data.find('li[data-type=' + thisid + ']');
    }

    // finally, call quicksand
    $thumbnails.quicksand($filteredData, {
      duration: 800,
      easing: 'easeInOutQuad'
    }, function() {
      Shadowbox.setup("a.thumbnail");
    });

    $('.filter-nav li').removeClass('active');
    $(this).parent().addClass('active');

    return false;

  });
}
