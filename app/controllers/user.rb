get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  new_user = User.new(params[:user])
  if new_user.save
    redirect '/'
  else
    @warning = "Username must be unique and password must be at least 6 characters long."
    erb :'/users/new'
  end
end


get '/users/:id' do
  @user = User.find_by(id: session[:id])
  erb :'/users/index'
end
