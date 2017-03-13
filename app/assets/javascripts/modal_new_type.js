$('#typeNewModal').on('show.bs.modal', function (event) {
  var $modal = $(this);
  var button = $(event.relatedTarget);
  $.ajax({
    url: "types/new",
    success: function(data){
        $modal.find('.modal-content').html(data)
    }
  });
})
