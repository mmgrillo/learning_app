class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	validates :name, presence: true, length: {maximum: 50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: {maximum: 255},
											format: { with: VALID_EMAIL_REGEX },
											uniqueness: { case_sensitive: false } 
	validates :password, presence:true, length: { minimum: 6 }

  
  #"has_secure_password" is a Rails Method that creates
  # a hashed password
  #that Rails uses to match corresponding hashes.
  #For this to work, 2 more steps
  #1. the model needs a "password_digest"
  #  attribute:
  #  => $rails g migration add_password_digest_to_users password_digest:string 
  #2. Install "bcrypt gem" 
	has_secure_password
end
