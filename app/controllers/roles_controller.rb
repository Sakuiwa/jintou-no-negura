class RolesController < ApplicationController
		# ここでは役職をくばるよ！
				before_action :authenticate_user!
	def create
		@room = Room.find(params[:room_id])
		@user = current_user
		if @user.job === 'GM'
			 @role = Role.new(role_params)
		     @role.save
		  redirect_to room_path(params[:room_id])
		end
	end
	def destroy
		
	end

	private
	def role_params
		params.require(:role).permit(:jinrou, :murabito, :uranai, :reino, :kyojin ,:room_id)
	end
end
