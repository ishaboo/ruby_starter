class CreateInventoryItems < ActiveRecord::Migration[5.0]
  def change
    create_table :inventory_items do |t|
      t.string :name
      t.integer :amount
      t.timestamps

      t.references  :characters, index: true, foreign_key: true
    end
  end
end
