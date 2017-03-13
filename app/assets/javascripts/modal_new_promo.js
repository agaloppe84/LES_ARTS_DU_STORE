$('#promoNewModal').on('show.bs.modal', function (event) {
    var $modal = $(this);
    var button = $(event.relatedTarget);
    var typeId = button.data('id');
    $.ajax({
      url: "types/" + typeId + "/promos/new",
      success: function(data){
          $modal.find('.modal-content').html(data)
      }
    });
})
