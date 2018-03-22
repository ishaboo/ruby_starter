class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :kind
      t.string :description
      t.integer :x_coord
      t.integer :y_coord
      t.boolean :alive
      t.timestamps

      t.references  :character, index: true, foreign_key: true
    end
  end
end
