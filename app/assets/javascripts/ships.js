$(document).ready(function(){
  set_ship_location();
});

function set_ship_location() {
  $("[data-behavior~=set-ship-location]").on("click", function(e){
    var ship_location = $(this).parent().find(".ship-location").val();
    var ship_id       = $(this).data("ship-id");
    var user_id       = $(this).data("user-id");

    $.ajax({
      type  : "PUT",
      url   : "/ships/" + ship_id,
      data  : { location: ship_location },
      beforeSend: function(xhr){
        xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
      },
      success  : function(data){
        document.location.href = "/games/" + user_id;
      }
    });

    e.preventDefault();
  });
}
