(function worker(page) {
  if (page == undefined) { page = 1 }

  $.ajax({
    url: 'load_more?page=' + page,
    complete: function() {
      if ($('.thumbnails').data('max') > page) {
        setTimeout(function(){ worker(page + 1) }, 2000);
        Shadowbox.setup("a.thumbnail");
      } else {
        Shadowbox.setup("a.thumbnail");
      }
    }
  });
})();
