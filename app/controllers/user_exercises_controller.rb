class UserExercisesController < ApplicationController 
	ActionController::Parameters.permit_all_parameters = true

	def create
	

		  if params['_json']
			test = params['_json'].dup
			user = test[0].values[0]
			exercise = test[1].values[0]
			test.slice!(0,2)
			arr = []
			newArr = []	
			test.each { |exercise|
				lift = exercise.to_h
				arr << lift	
			}
			arr.each {|item|
				test = UserExercise.create!(user_id: user, exercise_id: exercise, reps: item.keys[0].to_i, weight: item.values[0])
				newArr << test
			}

			render :json => newArr
		  else
		  	user = params["userId"]
		  	lift = params["liftId"]
		  	userLifts = UserExercise.where("user_id = ? AND exercise_id = ?", user, lift)
		  	render :json => userLifts
		  end

	end



end