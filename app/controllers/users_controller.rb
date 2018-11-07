class UsersController < ApplicationController

	def create
		user = User.new(email: params[:email], password: params[:password])

		if user.save
			render json: user
		else
			render :json => {"errors": user.errors.full_messages}
		end
	end

	private

	def user_params
		params.require(:user).permit(:email, :password)
	end

end