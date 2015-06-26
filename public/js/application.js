$(document).ready(function() {
  $('.album-search').on('submit', function(event){
    event.preventDefault();
    var album = $(this).serialize();
    var request = $.ajax({
                        url: '/search',
                        type: 'post',
                        data: album
    });
    request.done(function(response){
      $('.album-list').html(response);
    });
  });
  $('.album-list').on('submit', '#add-album', function(event){
    event.preventDefault();
    var albumId = $('#album-id').val();
    var request = $.ajax({
                        url: '/albums',
                        type: 'post',
                        data: { id: albumId }
    });
    request.done(function(response){
      console.log(response);
      $('.album-list').html(response.name + " has been added to your list!");
    });
  });
});
