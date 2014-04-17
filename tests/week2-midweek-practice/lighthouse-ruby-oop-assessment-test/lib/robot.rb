class Robot

attr_accessor :robot_position, :robot_items, :health, :default_attack, :equipped_weapon

  def initialize
    @robot_position = [0, 0]
    @health = 100
    @default_attack = 5
    @robot_items = []
    @equipped_weapon = nil
  end

  def position  
    robot_position
  end

  def move_left
    robot_position[0] -= 1
  end

  def move_right
    robot_position[0] += 1
  end

  def move_up
    robot_position[1] += 1  
  end

  def move_down
    robot_position[1] -= 1  
  end

  def items
    @robot_items
  end

  def items_weight
    @robot_items.inject(0) { |total_weight, current_item| total_weight + current_item.weight }
  end

  def pick_up(item)   
    if (items_weight + item.weight) <= 250
      item_or_weapon(item)
      true
    else
      false
    end
  end

  def item_or_weapon(item)
    if item.is_a?(Weapon)
      @equipped_weapon = item
      @robot_items.push item
    else 
      @robot_items.push item
    end
  end

  def wound(wound_total)
    @health -= wound_total
    
    if @health < 0
      @health = 0
    end
  end

  # def heal(heal_total)
  #   # @health += heal_total
    
  #   # if @health > 100
  #   #   @health = 100
  #   # end
  # end

  def attack(enemy)
    if equipped_weapon != nil
      equipped_weapon.hit(enemy)
    end

    enemy.wound(@default_attack)
  end

  def equipped_weapon
    @equipped_weapon
  end
end