require_relative 'spec_helper'

# Buildings can be attacked by units
# Buildings have HP
# Footman deal half damage to buildings

# Note: The damage amount should be an integer (Fixnum). Take the ceil division result.

describe Barracks do

  subject(:barracks) {Barracks.new}
  let(:enemy_unit) { Footman.new }

  describe "attackable by Units" do
    it "should be able to be attacked by Units" do
      expect(barracks.damage(10)).to be(@health_points = 490)
    end

    it "should take half damage from Footman class" do
      expect(enemy_unit.attack!(barracks)).to be(@health_points = 495)
    end
  end

  describe "health_points" do
    it "should have health points of 500" do
    expect(barracks.health_points).to eq(500)
    # barracks.health_points.should eq(500)
    end
  end
end

