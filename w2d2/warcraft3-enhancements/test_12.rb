require_relative 'spec_helper.rb'

# Units start off alive
# Units die if their HP hits 0 or lower. 
# This is usually a result of receiving damage from combat.

# Define a method dead? on the Unit class. We add it to Unit instead of Footman for example b/c all units can die, not just footman or peasants.

describe Unit do

  subject(:barrakcs) {Barracks.new}
  let(:unit) {Unit.new(100, 10)}
  let(:enemy_unit) {Unit.new(100, 55)}

  describe "#dead?" do
    it "should decide if it is dead be evaluating if its health_points is zero or less" do
      expect(unit.dead?).to eq(false)
    end

    it "should decide that it is dead when its health_points are 0" do
      enemy_unit = Unit.new(100, 50)

      enemy_unit.attack!(unit)
      enemy_unit.attack!(unit)

      expect(unit.health_points).to eq(0)
      expect(unit.dead?).to eq(true)
    end

    it "should decide that it is dead when its health_points are below 0" do
      enemy_unit.attack!(unit)
      enemy_unit.attack!(unit)

      expect(unit.health_points).to eq(-10)
      expect(unit.dead?).to eq(true)
    end
  end
end
