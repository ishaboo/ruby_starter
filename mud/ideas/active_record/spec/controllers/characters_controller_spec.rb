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

  it "list should return all characters" do
    # binding.pry
    expect(char_controller.index).to eq(Character.all)
  end

  it "should allow to retrieve all characters from the database" do
    if defined?(Character)
      characters = nil
      expect { characters = Character.all }.not_to raise_error, "Missing something in your class declaration maybe? Hint: inheritance"
      expect(characters).to eq []
    else
      raise "Fix the first test before paying attention to this one"
    end
  end
end
