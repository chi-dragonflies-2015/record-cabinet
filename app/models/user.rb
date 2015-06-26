class User < ActiveRecord::Base
  include BCrypt
  has_many :lists

  validates :username, uniqueness: true
  validates :password_hash, length: { minimum: 6 }

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def password
    @password ||= Password.new(password_hash)
  end

  def self.authenticate(username, password)
    @user = User.find_by(:username => username)
    if @user
      @user.password == password ? @user : false
    else
      false
    end
  end

end
