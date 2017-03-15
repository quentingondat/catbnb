
$(document).ready(function() {
  $(".dashboard-tab").on('click', function() {
    // Display the ASCII code of the key pressed
    console.log("blabkabkakbk");
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
