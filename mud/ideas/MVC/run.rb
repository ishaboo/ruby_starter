require_relative 'map'
require_relative 'controller'
require_relative 'router'

csv_map = File.join(__dir__, 'maptiles.csv')
# In the future there needs to be more than one char in here
csv_character = File.join(__dir__, 'character.csv')
map = Map.new(csv_map)
character = Character.new(csv_character)
controller = Controller.new(map, character)

router = Router.new(controller)

router.run
