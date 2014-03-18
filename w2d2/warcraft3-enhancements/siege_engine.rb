
class SiegeEngine < Unit

  def initialize
    @health_points = 400
    @attack_power = 50
  end

  def attack!(enemy)
    if enemy.is_a?(SiegeEngine)
      super
    elsif enemy.is_a?(Barracks)
      enemy.double_damage(@attack_power)
    end
  end

end