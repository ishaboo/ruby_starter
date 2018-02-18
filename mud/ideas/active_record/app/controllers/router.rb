require "pry-byebug"

class Router
  def initialize
    @char_controller = CharactersController.new
    @inv_controller = InventoryController.new
    @map_controller = MapController.new
    @shop_controller = ShopController.new
    @view = CharactersView.new
    @character = 0
    @running = true
  end

  def run
    @view.start_game

    while @running
      if @character == 0 || @character.nil?
        start_with_character
      else
        display_tasks
        action = gets.chomp
        route(action)
      end
    end
  end

  private

  def route(action)
    case
    when action.length == 1 then @char_controller.move_char(@character, action)
    when action == 'new' then @char_controller.create
    when action == 'update' then @char_controller.update(@character)
    when action == 'load' then @character = @char_controller.load
    when action == 'delete' then @char_controller.destroy
    when action == 'inv' then @inv_controller.show_inventory(@character)
    when action == 'drop' then @inv_controller.drop_item(@character)
    when action == 'grab' then @inv_controller.grab_item(@character)
    when action == 'look' then @map_controller.read_title(@character.x_coord, @character.y_coord)
    when action == 'look again' || action == 'look more' then @map_controller.read_description(@character.x_coord, @character.y_coord)
    when action == 'inspect' then @map_controller.search_tile(@character.x_coord, @character.y_coord)
    when action == 'shop' then @shop_controller.check(@character)
    when action == 'list items' then @shop_controller.list_items(@character)
    when action == 'buy' then @shop_controller.buy(@character)
    when action == 'pos' then @char_controller.show_pos(@character)
    when action == 'list' then @char_controller.index
    when action == 'save' then @character.save
    when action == 'help' then @view.commands
    when action == 'stop' || action == 'exit' then stop
    else
      puts "Please enter a valid command (you can enter 'help' for a list of commands)"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    @view.display_tasks
  end

  def start_with_character
    puts "You must load a Character first:"
    puts "Do you want a list of characters?[Y/n]"
    ans = gets.chomp

    case
    when ans == ''
      puts "...please enter something"
    when ans[0].downcase == 'y'
      route("list")
      route("load")
    when ans[0].downcase == 'n'
      route("load")
    else
      puts "please answer 'y' or 'n'"
    end
  end
end
