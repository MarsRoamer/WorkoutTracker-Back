class ExercisesController < ApplicationController
	before_action :authenticate_user

	def index
		render json: Exercise.all
	end

end
