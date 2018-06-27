class CreateMonsters < ActiveRecord::Migration[5.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :description
      t.integer :hitpoints
      t.integer :strength
      t.integer :x_coord
      t.integer :y_coord
      t.boolean :alive
      t.timestamps
    end
  end
end