(function worker(page) {
  if (page == undefined) { page = 1 }

  $.ajax({
    url: 'load_more?page=' + page,
    complete: function() {
      if ($('.thumbnails').data('max') > page) {
        $.getScript( "/assets/photographer.js", function() {});
        setTimeout(worker(page + 1), 5000);
      } else {
        $.getScript( "/assets/photographer.js", function() {});
      }
    }
  });
})();
