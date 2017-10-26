$(document).on('turbolinks:load', function() {
  $('.role-cls').change(function(){
    var selectedVal = $(this).val();
    var idd = $(this).attr( "id" );

    $.ajax({
       type: "GET",
       url: "/role",
       dataType: "json",
       data: { 'id' : idd, 'role' : selectedVal },
       success: function(data){
         $('#usr-role_' + data.id).replaceWith("<td id='usr-role_" + data.id + "'>" + data.role + "</td>");
         $('#ajax-alert').replaceWith("<p class='alert alert-success'>User status changed successfully</p>");
       }
    });

  });

  $('.del').click(function(){
    var id = $(this).attr('id');
    var btn = $(this);

    if (confirm('Are you sure to delete?')) {
      $.ajax({
        url: '/del_user/' + id,
        type: 'GET',
        dataType: 'json',
        success: function(data){
          if (data.status == 'ok') {
            btn.closest('tr').remove();
            $('#ajax-alert').replaceWith("<p class='alert alert-success'>User deleted successfully</p>");
          }
        }

      });

    }
  });
});
