require "pry-byebug"

require_relative "../spec_helper"
begin
  require_relative "../../app/config/run"
rescue LoadError
end

describe "InventoryController" do
  before(:each) do
    create_db
    migrate
  end

  after(:each) { drop_db }

  let(:inv_controller) { InventoryController.new }
  let(:char) { Character.new(name: "Jo", race: "Elf", y_coord: 0) }
  let(:item) { InventoryItem.new(name: "Shovel", amount: 1, value: 0) }

  it "should show chararcter's items" do
    # binding.pry
    char.inventory_items << item
    expect(inv_controller.show_inventory(char)).to eq([item])
  end

  it "should allow to look at an inventory item" do
    # Needs another test?
  end
end
