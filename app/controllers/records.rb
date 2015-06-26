get '/search' do
  erb :'/records/search'
end


post '/search' do
    @albums = Record.search_albums(params[:album])
    if request.xhr?
      puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
      puts @albums.first.name
      puts @albums.first.release_date
      puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
      # erb :'/records/_results', :locals => { albums: @albums }
    else
      erb :'/records/search'
    end
end



# post '/albums' do
#   @album = Record.search_albums(params[:album])
#   @artist_name = Record.artist_name
#   @release_date = Record.release_date
#   @image = Record.image
#   if request.xhr?

#   else

#   end
# end
