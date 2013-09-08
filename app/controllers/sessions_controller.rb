class SessionsController < ApplicationController
	def destroy
		sign_out
		session[:user_id] = nil
		current_user = nil
		redirect_to root_path
	end
end
