require_relative 'player'
require_relative "spec_helper"

describe Player do

  before do
    @initial_health = 150
    @player = Player.new("larry", @initial_health)
  end

  # it "has a capitalized name" do
  #   @player.name.should == "Larry"
  # end
  #
  # it "has an initial health" do
  #   @player.health.should == 150
  # end
  #
  # it "has a string representation" do
  #   @player.to_s.should == "I'm Larry with a health of 150 and a score of 155"
  # end
  #
  # it "computes a score as the sum of its health and length of name" do
  #   @player.score.should == (150 + 5)
  # end
  #
  # it "increases health by 15 when w00ted" do
  #   @player.w00t
  #
  #   @player.health.should == @initial_health + 15
  # end
  #
  # it "decreases health by 10 when blammed" do
  #   @player.blam
  #
  #   @player.health.should == @initial_health - 10
  # end

  context "with a health greater than 100" do
    before do
      @player = Player.new("larry", 110)
    end

    it "is strong" do
      @player.should be_strong

    end
  end
  context "with a health less or equal than 100" do
    before do
      @player = Player.new("larry", 100)
    end

    it "is weak" do
      @player.should_not be_strong

    end
  end
  context "a man with a health of 1000 is a superman." do
    before do
      @player = Player.new("larry", 1000)
    end

    it "is a superman" do
      @player.should be_superman
    end
  end
end
