class ExercisesController < ApplicationController
	# before_action :authenticate_user

	def index
		render json: Exercise.all
	end

	def create
		exercise = Exercise.new(exercise_params)
		if exercise.save
			render :json => exercise
		else 
			render :json => {"errors": exercise.errors.full_messages}
		end
	end

	private

	def exercise_params
		params.require(:exercise).permit(:name, :description, :bodypart)
	end

end
