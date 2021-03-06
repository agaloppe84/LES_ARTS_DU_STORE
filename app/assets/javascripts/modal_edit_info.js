$('#infoEditModal').on('show.bs.modal', function (event) {
        var $modal = $(this);
        var button = $(event.relatedTarget);
        var infoId = button.data('infoid');
        var typeId = button.data('typeid');
        var productId = button.data('productid');
        $.ajax({
          url: "types/" + typeId + "/products/" + productId + "/infos/" + infoId + "/edit" ,
          success: function(data){
              $modal.find('.modal-body').html(data)
          }
        });
      })
