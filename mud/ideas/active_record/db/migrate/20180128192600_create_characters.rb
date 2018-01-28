class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    # TODO: your code here to create the posts table
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.integer :x_coord
      t.integer :y_coord
      t.timestamps
    end
  end
end
