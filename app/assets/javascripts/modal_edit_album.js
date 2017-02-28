$('#albumEditModal').on('show.bs.modal', function (event) {
    var $modal = $(this);
    var button = $(event.relatedTarget);
    var albumId = button.data('albumid');
    var typeId = button.data('typeid');
    $.ajax({
      url: "types/" + typeId + "/albums/" + albumId + "/edit",
      success: function(data){
          $modal.find('.modal-body').html(data)
      }
    });
})



    var menuitem = $(".type-namev2");
    var type = menuitem.data('type');
    alert(type);


$(".type-namev2").click(function() {
    var menuitem = $(".type-namev2");
    var type = menuitem.data('type');
    $(this).toggleClass('activemenu');
});
