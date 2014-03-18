class Unit
  attr_accessor :attack_power
  attr_reader :health_points

  def initialize (set_health_points, set_attack_power)
    @health_points = set_health_points
    @attack_power = set_attack_power
  end

  def health_points
    health_points = @health_points
  end

  def attack!(enemy)
    if dead? 
      false #do not attack
    else
      if enemy.dead?
        false #do not attack dead enemy
      else
        enemy.damage(@attack_power)
      end
    end
  end

  def damage(enemy_attack_damage)
    @health_points -= enemy_attack_damage
  end

  def dead?
    @health_points <= 0
  end

end
