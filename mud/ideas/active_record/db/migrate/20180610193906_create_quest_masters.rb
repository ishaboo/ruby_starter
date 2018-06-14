class CreateQuestMasters < ActiveRecord::Migration[5.0]
  def change
    create_table :quest_masters do |t|
      t.string :name
      t.string :race
      t.boolean :alive
      t.timestamps
    end
  end
end
