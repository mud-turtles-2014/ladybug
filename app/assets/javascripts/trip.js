$(document).ready(function(){
  console.log("ready")

  $('form').on('click','.remove_fields', function(event){
    event.preventDefault();
    $(this).prev('input[type=hidden]').val('1');
    $(this).closest('fieldset').hide();
  });

  $('form').on('click','.add_fields', function(event){
    event.preventDefault();
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    $(this).before($(this).data('fields').replace(regexp, time));
  });
  // $('#add-location').click(function(e){
  //   e.preventDefault();
  //   addLegForm();
  // })
})


addLegForm = function() {
  var x = $('div').length

  var html = '<div>'
  html +='<input id="trip_legs_attributes_'+x+'_location_id" name="trip[legs_attributes]['+x+'][location_id]" placeholder="Location" type="text"><br>'
  html += '<input id="trip_legs_attributes_'+x+'_location_id" name="trip[legs_attributes]['+x+'][start_date]" type="date"><br>'
  html += '<input id="trip_legs_attributes_'+x+'_location_id" name="trip[legs_attributes]['+x+'][end_date]" type="date">'
  html += '</div>'
  $('#legs').append(html)
}
