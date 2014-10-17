$(document).ready(function () {

  // $('label.tree-toggler').toggle();
  $('label.tree-toggler').click(function () {
    $(this).parent().children('ul.tree').toggle(200);
  });

  $('label[class="tree-toggler nav-header"]').eq(2).click(function(){
    // each label needs an id to send over....eq(2) is contrived
    $('.profile_body_top').append(lineItemTemplate)
    $('.profile_body').empty();
    $.ajax({
      url: '/expenses/1.json', //if we make index#expense nested, can send info over as json object
      type: 'GET',
      dataType: 'json'
    }).success(function(data){
      console.log(data);
      $('.profile_body').append('<p>'+data.description + ' -- ' + data.cost+'</p>');
    })
  })
});

// var lineItemTemplate =
// ' <tr>' +
// ' <td class="expense_desc"><input id="leg_line_items_attributes_x_description" name="leg[line_items_attributes][x][description]" type="text" placeholder="Description"/></td>' +
// ' <td class="expense_date" ><input id="leg_line_items_attributes_x_value_date" name="leg[line_items_attributes][x][value_date]" type="date"/></td>' +
// ' <td class="expense_ccy" ><input id="leg_line_items_attributes_x_ccy" name="leg[line_items_attributes][x][ccy]" type="text" placeholder="Currency"/></td>' +
// ' <td class="expense_amt" ><input id="leg_line_items_attributes_x_ccy_amount" name="leg[line_items_attributes][x][ccy_amount]" type="number" placeholder="Cost"/></td>' +
// ' </tr>' ;