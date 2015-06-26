$(document).ready(function() {
  $('#album-search').on('submit', function(event){
    event.preventDefault();
    var album = $(this).serialize();
    var request = $.ajax({
                        url: '/search',
                        type: 'post',
                        data: album
    });
    request.done(function(response){
      console.log(response);
      // $('.search-page').append(response);
    });
  });
  // $('#select-button').on('click', function(event){
  //   event.preventDefault();
  //   var request = $.ajax({
  //                       url: '/list',
  //                       type: 'post'
  //   })
  // });
});
