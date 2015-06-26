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
    // console.log(albumId);
    var request = $.ajax({
                        url: '/list',
                        type: 'post',
                        data: albumId
    });

  });
});
