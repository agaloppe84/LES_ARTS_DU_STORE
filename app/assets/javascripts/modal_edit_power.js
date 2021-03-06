$('#powerEditModal').on('show.bs.modal', function (event) {
    var $modal = $(this);
    var button = $(event.relatedTarget);
    var typeId = button.data('typeid');
    var productId = button.data('productid');
    var powerId = button.data('powerid');
    $.ajax({
      url: "types/" + typeId + "/products/" + productId + "/powers/" + powerId + "/edit",
      success: function(data){
          $modal.find('.modal-body').html(data)
      }
    });
})
