class Weapon < Item

  attr_accessor :damage, :range

  def initialize(name, weight, damage)
    super(name, weight)
    @damage = damage
    @range = 1
  end

  def hit(robot)
    robot.wound(@damage)
  end
  

end