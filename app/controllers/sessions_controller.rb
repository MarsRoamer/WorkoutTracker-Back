

class SessionsController < ApplicationController

	def create
		user = User.find_by(email: params[:email])
	
		

		if user && user.valid_password?(params[:password])
			render json: user
		else
			render :json => {"error": "Please enter valid credentials"}
		end
	end


end