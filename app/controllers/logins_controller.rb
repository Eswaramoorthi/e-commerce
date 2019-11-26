class LoginsController < ApplicationController

	def index
	end

	def new_login
		@user = User.find_by_email(params[:user][:email])
		 #binding.pry
		if @user.role == "admin"
			redirect_to "/videos"
		else
			redirect_to "/videos/subscribe"		
		end	
	end

	def show

	end

end
