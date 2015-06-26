helpers do
  def login_user(username)
    session[:id] = User.find_by(:username => username).id
  end

  def logout_and_redirect
    session[:id] = nil
    redirect '/'
  end

  def owner?(user_id)
    user_id == User.find_by(id: session[:id])
  end

end
