get '/search' do
  @user = User.find_by(id: session[:id])
  erb :'/records/search'
end


post '/search' do
    @albums = Record.search_albums(params[:album])
    if request.xhr?
      erb :'/records/_results', :locals => { albums: @albums }, layout: false
    else
      erb :'/records/search'
    end
end



post '/list' do
  album = Record.search_albums_by_id(params[:spotify_id])
  name = album.name
  artist = album.artists.first.name
  release = album.release_date
  image = images.first
  url = image['url']
  new_record = Record.new(name: name, artist: artist, spotify_id: params[:spotify_id], :image_url: url)
  if request.xhr?

  else

  end
end
