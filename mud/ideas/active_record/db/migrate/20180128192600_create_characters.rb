class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.string :discipline
      t.integer :hitpoints
      t.integer :strength

      t.integer :stealth, :default => 0
      t.integer :psionics, :default => 0
      t.integer :rage, :default => 0
      t.integer :agility, :default => 0
      t.integer :defense, :default => 0
      t.integer :perception, :default => 0
      t.integer :constitution, :default => 0

      # the name class has been reserved by ActiveRecord, we need another name
      # t.string :class

      t.integer :level
      t.integer :exp
      t.integer :x_coord
      t.integer :y_coord
      t.boolean :alive
      t.timestamps
    end
  end
end

# in order to make use of the discipline field we need at least the following:

# stealth --> for thieves
# psi/magic
# rage --> for warriors
# agility
# defense
# perception ???
# constitution --> defense against magic

# class:
# classes could be warrior, thief, paladin, necromancer, mage (see character model)
