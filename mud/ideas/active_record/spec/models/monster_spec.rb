require_relative "../spec_helper"
begin
  require_relative "../../app/models/monster"
rescue LoadError
end

describe "Monster" do
  before(:each) do
    create_db
    migrate
  end

  after(:each) { drop_db }

  it "class should exist. If not, you haven't defined your model class yet" do
    expect(defined?(Monster)).to eq "constant"
  end

  it "should allow to retrieve all monsters from the database" do
    if defined?(Monster)
      monsters = nil
      expect { monsters = Monster.all }.not_to raise_error, "Missing something in your class declaration maybe? Hint: inheritance"
      expect(monsters).to eq []
    else
      raise "Fix the first test before paying attention to this one"
    end
  end
end
