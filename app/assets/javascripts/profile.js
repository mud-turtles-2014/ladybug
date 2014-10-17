$(document).ready(function () {

  // $('label.tree-toggler').toggle();
  $('label.tree-toggler').click(function () {
    $(this).parent().children('ul.tree').toggle(200);
  });

  $('label[class="tree-toggler nav-header"]').eq(2).click(function(){
    // each label needs an id to send over....eq(2) is contrived
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