class HoltzmanSpike < Weapon

  def initialize
    super("Holtzman Spike", 40, 30)
    @range = 0
  end

  def special_attack(scan)
    x = 0

    Robot.all_robot_position.each do |i|
      if i == scan[5]
        Robot.all_robots[x].wound_health(@damage)
        x += 1
      end

    end
  end

end