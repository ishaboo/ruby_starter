require "pry-byebug"

require_relative "../spec_helper"
begin
  require_relative "../../app/config/run"
rescue LoadError
end

describe "CharacterController" do
  before(:each) do
    create_db
    migrate
  end

  after(:each) { drop_db }

  let(:char_controller) { CharactersController.new }
  let(:char) { Character.new(name: "Jo", race: "Elf", y_coord: 0) }

  it "list should return all characters" do
    # binding.pry
    expect(char_controller.index).to eq(Character.all)
  end

  it "should allow to move an existing character" do
    # binding.pry
    expect(char_controller.move_char(char, "n")).to eq(1)
  end
end
