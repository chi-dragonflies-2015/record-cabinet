get '/search' do
  @user = User.find_by(id: session[:id])
    puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
        puts session[:id]
        puts @user.id
    puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
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



# post '/albums' do
#   @album = Record.search_albums(params[:album])
#   @artist_name = Record.artist_name
#   @release_date = Record.release_date
#   @image = Record.image
#   if request.xhr?

#   else

#   end
# end
