class CreateInventoryItems < ActiveRecord::Migration[5.0]
  def change
    create_table :inventory_items do |t|
      t.string :name
      t.integer :amount
      t.integer :value
      t.timestamps

      t.references  :character, index: true, foreign_key: true
      t.references  :map_tile, index: true, foreign_key: true
      t.references  :shop, index: true, foreign_key: true
      t.references  :bot, index: true, foreign_key: true
    end
  end
end
