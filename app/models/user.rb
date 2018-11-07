class User < ApplicationRecord

  has_many :user_exercises
  has_many :exercises, :through => :user_exercises
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	# has_secure_password

	# def self.from_token_payload payload
	# 	payload['sub']
	# end
end
