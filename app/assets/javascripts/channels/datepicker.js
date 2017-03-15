$(document).ready(function() {
  $( ".datepicker" ).datepicker('clearDates', {
    format: "dd/mm/yyyy",
    inputs: $('.actual_range')
    todayHighlight: true,
    toggleActive: true,
    immediateUpdates: true,
    autoclose: true
  });

  $('.datepicker').on('changeDate', function() {
      $('#my_hidden_input').val(
          $('#datepicker').datepicker('getFormattedDate')
      );
  });
});
