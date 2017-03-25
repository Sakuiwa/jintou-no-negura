class CreateKyojins < ActiveRecord::Migration[5.0]
  def change
    create_table :kyojins do |t|
      t.integer :room_id
      t.integer :user_id

      t.timestamps
    end
  end
end
