class Robot

  attr_accessor :position, :items, :health, :default_attack, :equipped_weapon

  def initialize
    @position = [0,0]
    @items = []
    @health = 100
    @default_attack = 5
    @equipped_weapon = nil
  end

  def move_left
    @position[0] -= 1
  end

  def move_right
    @position[0] += 1
  end

  def move_up
    @position[1] += 1
  end

  def move_down
    @position[1] -= 1
  end

  def pick_up(item)
    if items_weight + item.weight <= 250
      is_weapon?(item)
      @items.push item
      true
    else
      false
    end
  end

  def items_weight
    @items.inject(0) { |sum, index_item| sum += index_item.weight }
  end

  def is_weapon?(item)
    if item.is_a?(Weapon)
      @equipped_weapon = item
    end
  end

  def wound(pain)
    @health -= pain

    if @health < 0
      @health = 0
    end
  end

  def heal(recover)
    @health += recover

    if @health > 100
      @health = 100
    end
  end

  def attack(enemy)
    @equipped_weapon.hit(enemy)
    enemy.wound(@default_attack)
  end

end
