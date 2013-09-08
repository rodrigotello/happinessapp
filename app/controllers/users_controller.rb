class UsersController < ApplicationController
	def show
		if ! user_signed_in?
			redirect_to root_path
		end
		@user = User.find_by_id(params[:id])
	end

	def destroy
		
	end
	
	def edit
		if !(current_user.id == (params[:id]))
			redirect_to root_path
		end
		@user = current_user
	end

	def update
		@user = current_user
		@user.update_attributes(params[:user])
		redirect_to @user
	end

end
