class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type
      t.integer :x_coord
      t.integer :y_coord
      t.timestamps
    end
  end
end
