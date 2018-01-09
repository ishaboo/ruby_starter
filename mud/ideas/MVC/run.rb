require_relative 'map'
require_relative 'controller'
require_relative 'router'

csv_file = File.join(__dir__, 'maptiles.csv')
map = Map.new(csv_file)
controller = Controller.new(map)

router = Router.new(controller)

router.run
