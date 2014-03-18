require_relative 'spec_helper'

# Introduce a SiegeEngine Unit. 

# Can't attack Units
# Can attack other Siege Engines
# Does double damage versus Barracks

# Stats:
# AP: 50
# HP: 400
# Cost: 200 gold, 60 lumber, 3 food

describe SiegeEngine do

  subject(:siege_engine) {SiegeEngine.new}
  let(:barracks) {Barracks.new}
  let(:enemy_unit) {Unit.new(100, 10)}
  let(:enemy_siege_unit) {SiegeEngine.new}

  describe "#attack!" do
    it "should not be able to attack Units" do
      expect(siege_engine.attack!(enemy_unit)).to eq(nil)
      
    end

    it "should be able to attack other Siege Engines" do
      siege_engine.attack!(enemy_siege_unit)
      expect(enemy_siege_unit.health_points).to eq(350)
    end  

    it "should do double damage against barracks" do
      siege_engine.attack!(barracks)
      expect(barracks.health_points).to eq(400)
    end
  end

  describe "stats" do
    it "should have attack_power equal 50" do
      expect(siege_engine.attack_power).to eq(50)
    end

    it "should have health_points set at 400" do
      expect(siege_engine.health_points).to eq(400)
    end
  end

  describe "cost" do
    it "should cost 200 gold, 60 lumber and 3 food" do
      barracks.train_siege_engine
      expect(barracks.gold).to eq(800)
      expect(barracks.lumber).to eq(440)
      expect(barracks.food).to eq(77)
    end
  end

end