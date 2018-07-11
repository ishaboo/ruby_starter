module Locate
  def Locate.test(stuff)
    puts "#{stuff} always works!"
  end

  def Locate.show_coords(model)
    Rainbow("#{model.name} is at: #{model.x_coord} and #{model.y_coord}").yellow.bright
  end
end

module Fight
  def Fight.test(stuff)
    puts "#{stuff.upcase} gives you a fight!"
  end
end

module Route
  def Route.test(stuff)
    puts "#{stuff} should route all your stuff!"
  end
end
