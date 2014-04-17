require './spec_helper'

# The Robot class can be asked to return all robots in a given position (x,y)
# It should return an array of all the robots

describe Robot do

  describe "#all_robot_position" do

    it "should return an array of all robot positions" do
    johnny_five = Robot.new
    wall_e = Robot.new
    eva = Robot.new
    robocop = Robot.new
    data = Robot.new

    3.times do johnny_five.move_up; end
    1.times do johnny_five.move_left; end

    5.times do robocop.move_down; end
    5.times do robocop.move_right; end

    # x-coordinates are left-right
    # y-coordinates are up-down

    expect(Robot.all_robot_position).to eq([[-1, 3], [0, 0], [0, 0], [5, -5], [0, 0]])
    end
  end

  describe "#in_position" do

    it "should return an array of all robots in a given position as x, y coordinates" do

    expect(Robot.in_position(-1, 3)).to eq([[-1, 3]])
    expect(Robot.in_position(0, 0)).to eq([[0, 0], [0, 0], [0, 0]])
    end
  end
end