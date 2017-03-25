class RoomsController < ApplicationController
  before_action :authenticate_user!

  def top
  	@rooms = Room.all
  	# @room = Room.find(params[:room_id])
  end 
  def create
  	@room = Room.new
  	@room.room_name = params[:room_name]
  	@room.room_content = params[:room_content]
    @room.user_id = current_user.id
  	@room.save
  	redirect_to root_path
  end
  def show
  	@room = Room.find(params[:id])
    @chats = Chat.where(room_id: params[:id])
    @user = current_user
    @join = current_user.joins.find_by!(room_id: @room.id)
    @job = User.select(:job,:room_id)
    # @GM = @job.where('GM', @room.id) 
    # @PL = @job.where('PL', @room.id)
  end
  private
  
end