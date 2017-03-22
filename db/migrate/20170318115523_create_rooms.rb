class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.integer :user_id
      t.string :room_content

      t.timestamps
    end
  end
end
