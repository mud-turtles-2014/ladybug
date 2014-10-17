$(document).ready(function(){


  $.getJSON(
        'http://openexchangerates.org/api/latest.json?app_id=10eff371738744b3b3f187281d3f9a06',
        function(data) {
            // Check money.js has finished loading:
            var currency_data = data
            if ( typeof fx !== "undefined" && fx.rates ) {
                fx.rates = data.rates;
                fx.base = data.base;
            } else {
                // If not, apply to fxSetup global:
                var fxSetup = {
                    rates : data.rates,
                    base : data.base
                }
            }
        }
    );


  $('.new_expense').submit(function(e){
    e.preventDefault();
    var cost = $('#expense_cost').val();
    var currency = $('#expense_currency_id').val();
    var converted = fx.convert(cost, {from: currency, to: "USD"});
    $('.new_expense').append(converted)
  })
})