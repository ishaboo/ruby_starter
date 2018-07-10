module Locate
  def Locate.test(stuff)
    puts "#{stuff} always works!"
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
