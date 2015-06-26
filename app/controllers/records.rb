post '/albums' do
  @album = Record.search_albums(params[:album])
  @artist_name = Record.artist_name
  @release_date = Record.release_date
  @image = Record.image
  if request.xhr?

  else

  end
end
