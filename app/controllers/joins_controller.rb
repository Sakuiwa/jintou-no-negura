class JoinsController < ApplicationController
	before_action :authenticate_user!
	def create
		@room = Room.find(params[:room_id])
		@join = current_user.joins.build(room_id: @room.id)
		
		if @join.save
            redirect_to room_path(params[:room_id]) ,notice:"入室しました"
        else
		    redirect_to root_path ,alert: "入室できませんでした"
	    end
	end	
	def destroy
		@room = Room.find(params[:id])
		@join = current_user.joins.find_by!(room_id: @room.id)
		@join.destroy
		redirect_to root_path ,notice: "退出しました"
	end
	private

end
