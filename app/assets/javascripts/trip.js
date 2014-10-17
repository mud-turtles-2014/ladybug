$(document).ready(function(event){

  $(".new_trip").on('ajax:success', function(event, data){
console.log(data)
      var trip = data.id
      var trip_name = data.name
      $('h1').html(trip_name)
       $(".new_trip").hide();

       var location_field = '<div><label>Location</label><br><input type="text" name="location"></div>'
       var start_date = '<div><label>Start Date</label><br><input type="text" name="start_date"></div>'
       var end_date = '<div><label>End Date</label><br><input type="text" name="end_date"></div>'

       $(".new_trip_div").append(location_field)
       $(".new_trip_div").append(start_date)
       $(".new_trip_div").append(end_date)
       })

    })
  // })