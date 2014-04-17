class Weapon < Item

attr_accessor :damage

  def initialize(name, weight, damage)
    super(name, weight)
    @damage = damage
  end

  def hit(enemy_robot)
    enemy_robot.wound(@damage)
  end
end