class CreateQuestMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :quest_masters do |t|
      t.string :name
      t.string :race
      t.integer :x_coord
      t.integer :y_coord
      t.boolean :alive
      t.timestamps

      t.references  :quest, index: true, foreign_key: true
    end
  end
end
