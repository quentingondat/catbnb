
$(document).ready(function() {
  $(".dashboard-tab").on('click', function() {
    // Display the ASCII code of the key pressed
    $(".active").removeClass('active')
    $(this).addClass('active')
    if ($("#mycats").hasClass('active')) {
      $("#mycats-content").removeClass('hidden')
      $("#mybookings-content").addClass('hidden')
    } else {
      $("#mycats-content").addClass('hidden')
      $("#mybookings-content").removeClass('hidden')
    }
  });
});

$(document).ready(function() {
  $(".dashboard-cat-informations").on('click', function() {
    var cat_id = $(this).attr('id');
    console.log(cat_id);
    $("#hidden-"+cat_id).toggleClass('hidden');
  });
});

