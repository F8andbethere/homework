require './spec_helper'

# A robot should be able to scan tiles immediately next to its current @position
# Leverage the class method implemented in #18

describe Robot do

  subject(:robot) { Robot.new }

  describe "#scan" do

    it "should search adjacent tiles from robot's position" do
      expect(robot.scanned_area).to eq([[0,1], [1,0], [0,-1], [-1,0]])
    end

    it "should return an array of other robots in its scan" do
      johnny_five = Robot.new
      wall_e = Robot.new

      3.times do johnny_five.move_up; end       # y-coordinates
      3.times do johnny_five.move_right; end    # x-coordinates

      2.times do wall_e.move_up; end            # y-coordinates
      4.times do wall_e.move_right; end         # x-coordinates

      expect(robot.scan).to eq([])

      2.times do robot.move_up; end             # y-coordinates
      3.times do robot.move_right; end          # x-coordinates

      expect(robot.scan).to eq([[3, 3], [4, 2]])
    end
  end
end