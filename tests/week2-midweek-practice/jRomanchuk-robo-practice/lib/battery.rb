class Battery < Item

  def initialize
    super("Battery", 25)
  end

  def shield_heal(robot)
    robot.recharge(10)
  end
end
