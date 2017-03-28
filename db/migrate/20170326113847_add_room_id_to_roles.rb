class AddRoomIdToRoles < ActiveRecord::Migration[5.0]
  def change
    add_column :roles, :room_id, :integer 
  end
end
