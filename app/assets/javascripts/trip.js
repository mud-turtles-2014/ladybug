$(document).ready(function(){
  console.log("ready")

  $('#add-location').click(function(e){
    e.preventDefault();
    addLegForm();
  })
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
