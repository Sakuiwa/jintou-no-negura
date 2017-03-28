class RolesController < ApplicationController
		# ここでは役職をくばるよ！
				before_action :authenticate_user!
	def create
		@room = Room.find(params[:room_id])
		@user = current_user
		@temp = Role.find_by(room_id: @room.id)
		if @user.job === 'GM'
			if @temp.present?
				@temp.destroy
			end
			@role = Role.new(role_params)
		    @role.save
		  redirect_to room_path(params[:room_id])
		end
	end
	def destroy
		
	end

	private
	def role_params
		params.require(:role).permit(:jinrou, :murabito, :uranai, :reino, :kyojin, :kyosin, :kariudo, :kyoyu, :neko, :youko, :haitoku, :created_at, :room_id)
	end
end
