$(document).ready(function() {
  $( "#booking_period" ).datepicker({
    inputs: $('.actual_range'),
    format: "dd/mm/yyyy",
    todayHighlight: true,
    toggleActive: true,
    immediateUpdates: true,
    autoclose: true
  });
});
