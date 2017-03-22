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
    @GM = User.where(:job 'GM' and room_id: @room.id) 
    @PL = User.where(:job 'PL' and room_id: @room.id)
  end
  private

end