class ChatsController < ApplicationController

  before_action :authenticate_user!
  

  def create 
    @room = Room.find(params[:room_id])
    @chat = Chat.new
  	@chat.content = params[:content]
  	@chat.room_id = @room.id
  	@chat.user_id = current_user.id
    @chat.name = current_user.name
    @chat.job = current_user.job
    @chat.rolecard = current_user.rolecard
  	@chat.save
  	redirect_to room_path(params[:room_id])
  end

  private
end