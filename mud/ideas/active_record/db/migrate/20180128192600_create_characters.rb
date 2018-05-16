class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.string :discipline
      t.integer :hitpoints
      t.integer :strength
      t.integer :exp
      t.integer :x_coord
      t.integer :y_coord
      t.boolean :alive
      t.timestamps
    end
  end
end
