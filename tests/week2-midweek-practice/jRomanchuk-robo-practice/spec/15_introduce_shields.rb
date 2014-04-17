require './spec_helper'

# Robots start with 50 shield points. 
# When the robot is damaged it first drains the shield and then starts affecting actual health.

describe Robot do
  subject(:robot) { Robot.new }
  let(:cannon) { PlasmaCannon.new }

  describe "shield" do

    it "drains first before health is affected" do
      robot.attack(robot)

      expect(robot.health).to eq(100)
      expect(robot.shield).to eq(45)
    end

    it "should equal 0 and never a negative number" do
      robot.pick_up(cannon)
      robot.attack(robot)

      expect(robot.shield).to eq(0)
    end

    it "drains before health but remaining damage is transfered to health" do
      robot.pick_up(cannon)
      robot.attack(robot)

      expect(robot.shield).to eq(0)
      expect(robot.health).to eq(95)
    end
  end
end