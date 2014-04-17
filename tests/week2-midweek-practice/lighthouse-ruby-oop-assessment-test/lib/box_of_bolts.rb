class BoxOfBolts < Item

  def initialize
    @name = "Box of bolts"
    @weight = 25
  end

  def feed(robot_to_feed)
    robot_to_feed.heal(20)
  end

end