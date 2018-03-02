class CreateBots < ActiveRecord::Migration[5.0]
  def change
    create_table :bots do |t|
      t.string :name
      t.string :race
      t.integer :x_coord
      t.integer :y_coord
      t.timestamps
    end
  end
end
