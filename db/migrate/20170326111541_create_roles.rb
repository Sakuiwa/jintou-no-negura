class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.integer :jinrou
      t.integer :murabito
      t.integer :uranai
      t.integer :reino
      t.integer :kariudo
      t.integer :neko
      t.integer :kyojin
      t.integer :kyosin
      t.integer :kyoyu
      t.integer :youko
      t.integer :haitoku

      t.timestamps
    end
  end
end
