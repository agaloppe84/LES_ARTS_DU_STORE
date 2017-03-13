$('#productShowModal').on('show.bs.modal', function (event) {
    var $modal = $(this);
    var button = $(event.relatedTarget);
    var productId = button.data('productid');
    var typeId = button.data('typeid');
    $.ajax({
      url: "types/" + typeId + "/products/" + productId,
      success: function(data){
          $modal.find('.modal-content').html(data)
      }
    });
})
