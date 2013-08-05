class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :first_name, :last_name, :username

  has_secure_password

end
