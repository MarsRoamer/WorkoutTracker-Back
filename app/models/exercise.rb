class Exercise < ApplicationRecord
	has_many :user_exercises
	has_many :users, :through => :user_exercises
end
