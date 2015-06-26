get '/' do
  erb :home
end

post '/login' do
  @authenticated = User.authenticate(params[:username], params[:password])
  if @authenticated
    login_user(params[:username])
    redirect "/users/#{@authenticated.id}"
  else
    @invalid_user = "Please enter a valid email and/or password"
    erb :'/users/login'
  end
end

get '/logout' do
  logout_and_redirect
end



