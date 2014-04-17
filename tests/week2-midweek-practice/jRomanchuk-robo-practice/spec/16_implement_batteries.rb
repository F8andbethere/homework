require './spec_helper'

# Batteries are items 
# Can be used by robot to recharge its shield

describe Battery do

  subject(:battery) { Battery.new }
  let(:robot) { Robot.new }

  it "should be an item" do
    expect(battery.is_a?(Item)).to eq(true)
  end

  it "should recharge robot's shields" do
    robot.wound(20)
    battery.shield_heal(robot)

    expect(robot.shield).to eq(40)
  end

end