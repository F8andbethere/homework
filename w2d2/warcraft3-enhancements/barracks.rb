class Barracks
  attr_accessor :gold, :food, :lumber, :health_points

  def initialize
    @gold = 1000
    @food = 80
    @lumber = 500
    @health_points = 500
  end

# #------------
# # Barracks are attackable
# #------------

  def damage(enemy_attack_damage)
    @health_points -= enemy_attack_damage
  end

  def double_damage(enemy_attack_damage)
    @health_points -= 2 * enemy_attack_damage
  end


# #------------
# # Train footman
# #------------

  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -= 2
      footman = Footman.new
    end
  end

  def can_train_footman?
    gold >= 135 && food >= 2
  end

# #------------
# # Train peasant
# #------------

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      peasant = Peasant.new
    end
  end

  def can_train_peasant?
    gold >= 90 && food >= 5
  end


# #------------
# # Train siege engine
# #------------

  def train_siege_engine
    @gold -= 200
    @lumber -= 60
    @food -= 3
  end

end
