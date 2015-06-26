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

post '/albums' do
  album = RSpotify::Album.find(params[:id])
  name = album.name
  artist = album.artists.first.name
  image = album.images.first
  url = image['url']
  release = album.release_date
  new_record = Record.new(name: name, artist: artist, spotify_id: params[:spotify_id], image_url: url, release_date: release)
  if request.xhr?
    new_record.save
    content_type :json
    { name: name }.to_json
  else
    erb :'/records/search'
  end
end


