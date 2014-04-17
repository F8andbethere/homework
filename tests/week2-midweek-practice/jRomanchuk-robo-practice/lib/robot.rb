class Robot

  @@robots = []

  attr_accessor :position
  attr_accessor :items
  attr_accessor :health
  attr_accessor :equipped_weapon
  attr_accessor :shield

  def initialize
    @position = [0, 0]
    @items = []
    @health = 100
    @shield = 50
    @@robots.push self
  end

  def pick_up(item)
    return false if item.weight + items_weight > 250
    @items.push item if !is_item_healing?(item) 
    @equipped_weapon = item if item.is_a?(Weapon)
    true
  end

  def is_item_healing?(item)
    if item.is_a?(BoxOfBolts) && (@health <= 80)
      item.feed(self)
      true
    else 
      false
    end
  end

  def wound(amount)
    if @shield > 0
      have_shield(amount)
    else
      @health -= amount
      @health = 0 if @health < 0
    end
  end

  def wound_health(amount)
    @health -= amount
    @health = 0 if @health < 0
  end

  def have_shield(amount)
    if @shield > 0
      @shield -= amount
        if @shield < 0
          @health += @shield
          @shield = 0
        end
    end
    true
  end

  def recharge(amount)
    @shield += amount
    @shield = 50 if @shield > 50
  end

  def heal(amount)
    @health += amount
    @health = 100 if @health > 100
  end

  def attack(robot)
    if is_grenade?(robot)
      robot_have_weapon?(robot)
      @equipped_weapon = nil
    elsif is_holtzman?(robot)
      @equipped_weapon.special_attack(scan)
      @equipped_weapon = nil
    else
      if x_coordinates(robot).abs <= 1 && y_coordinates(robot).abs <= 1
        robot_have_weapon?(robot)
      end
    end
  end

  def is_grenade?(robot)
    (x_coordinates(robot).abs <= 2 && y_coordinates(robot).abs <= 2) && @equipped_weapon.is_a?(Grenade)
  end

  def is_holtzman?(robot)
    (x_coordinates(robot).abs <= 1 && y_coordinates(robot).abs <= 1) && @equipped_weapon.is_a?(HoltzmanSpike)
  end

  def robot_have_weapon?(robot)
    if @equipped_weapon
      @equipped_weapon.hit(robot)
    else
      robot.wound(5)
    end
  end

  def items_weight
    @equipped_weapon != nil ? @items.inject(0) {|sum, i| sum += i.weight } + @equipped_weapon.weight : @items.inject(0) {|sum, i| sum += i.weight }
  end

# --------------------
# Movement
# --------------------

  def x_position
    @x_position = @position[0]
  end

  def y_position
    @y_position = @position[1]
  end

  def x_coordinates(robot)
    robot.position[0] - @position[0]
  end

  def y_coordinates(robot)
    robot.position[1] - @position[1]
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

# --------------------
# Scanning
# --------------------

  def scan
    robots_in_vicinity = []
    x = 0

    Robot.all_robot_position.each do |i|
      if i == scanned_area[x]
        robots_in_vicinity.push i
        x += 1
      end
    end

    robots_in_vicinity
  end

  def scanned_area
    scanned_area = []

    scanned_area.push [x_position, y_position+1]
    scanned_area.push [x_position+1, y_position]
    scanned_area.push [x_position, y_position-1]
    scanned_area.push [x_position-1, y_position]
  end

# --------------------
# Class methods
# --------------------

  class << self

    def all
      @@robots.length
    end

    def all_robots
      @@robots
    end

    def all_robot_position
      robot_positions = []

      for i in 0...@@robots.length do 
        robot_positions.push @@robots[i].position
      end

      robot_positions
    end

    def in_position(x_coordinate, y_coordinate)
      robots_in_position = []

      for i in 0...@@robots.length do 
        if @@robots[i].position == [x_coordinate, y_coordinate]
        robots_in_position.push @@robots[i].position
        end
      end

      robots_in_position
    end
  end
end