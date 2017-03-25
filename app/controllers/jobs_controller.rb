class JobsController < ApplicationController
  def create
  	@room = Room.find(params[:room_id])
  	@user = current_user
  	if @user.id === @room.user_id
  		    @user.job = "GM"
  		else
  			@user.job = "PL"
  	end
    @user.room_id = params[:room_id]
  	@user.save
  	redirect_to room_path(params[:room_id])
  end
  def destroy
     @room = Room.find(params[:room_id])
     @user = current_user.job
     @user.destroy
     redirect_to room_path(params[:room_id])
  end
end
