$('#typeNewModal').on('show.bs.modal', function (event) {
  var $modal = $(this);
  var button = $(event.relatedTarget);

  $modal.find('.modal-content-custom').html("<div class='await-modal'><div class='fa fa-gear fa-spin'></div></div>");

  setTimeout(function() {
    $.ajax({
      url: "types/new",
      success: function(data){
          $modal.find('.modal-content-custom').html(data)
      }
    });
  }, 1000);

})




