require './spec_helper'

# Like a grenade but with a range of 1. Changed to 0.
# This weapon is a one-time use weapon that damages all surrounding robots. 
# Damage ignores shields and directly affects enemy health by 30 points.

describe HoltzmanSpike do
  
  subject(:special_weapon) { HoltzmanSpike.new }
  let(:robot) { Robot.new }

  let(:johnny_five) { Robot.new }
  let(:robocop) { Robot.new }
  let(:wall_e) { Robot.new }
  
  # it "should have a range of 0" do
  #   expect(special_weapon.range).to eq(0)
  # end

  # it "should be removed from robot inventory when used" do
  #   johnny_five.move_up

  #   robot.pick_up(special_weapon)
  #   robot.attack(johnny_five)

  #   expect(robot.equipped_weapon).to eq(nil)
  # end

  # it "should damage all enemies around robot" do
  # end

  it "should damage enemy health regardless of shields" do
    johnny_five.move_up
    robocop.move_left

    wall_e.move_left
    wall_e.move_left
    wall_e.move_left
    wall_e.move_left
    
    robot.pick_up(special_weapon)
    robot.attack(johnny_five)

    # expect(Robot.all_robot_position[6]).to eq("")
    # expect(robot.scanned_area).to eq("")
    expect(robot.scan).to eq("")

    expect(johnny_five.shield).to eq(50)
    expect(robocop.shield).to eq(50)
    expect(wall_e.shield).to eq(50)
    
    expect(johnny_five.health).to eq(70)
    expect(robocop.health).to eq(70)
    expect(wall_e.health).to eq(100)
  end
end