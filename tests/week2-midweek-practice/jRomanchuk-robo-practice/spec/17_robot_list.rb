require './spec_helper'

# The Robot class should keep track of all robots that are instantiated.

describe Robot do 

  it "should keep track of how may robots are instantiated" do
    johnny_five = Robot.new
    wall_e = Robot.new
    eva = Robot.new
    robocop = Robot.new
    data = Robot.new

    expect(Robot.all).to eq(5)
  end
end