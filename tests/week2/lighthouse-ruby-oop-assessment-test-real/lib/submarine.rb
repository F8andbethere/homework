class Submarine #yellow

attr_accessor :depth, :tile, :cargo, :total_revenue

  def initialize
    @depth = 0
    @tile = 0
    @cargo = []
    @total_revenue = 0
  end

  def dive!
    if @depth == 0
      @depth += 1
    end
  end

  def surface
    if @depth == 1
      @depth -= 1
    end
  end

  def descend
    if @depth >= 1
      @depth += 1
    end
  end

  def ascend
    if @depth != 1 && @depth != 0
      @depth -= 1
    end
  end

  def forward
    @tile += 1

    if @tile > 9
      @tile = 9
    end
  end

  def backward
    @tile -= 1

    if @tile < 0
      @tile = 0
    end
  end

  def sell_cargo
    if @depth == 0
      @total_revenue = @cargo.inject(@total_revenue) { |sum, fish| sum += (fish.value_per_kg * fish.weight)}
      @cargo = []
      true
    else
      false
    end
  end

  def fish
    if @depth != 0
      fish = Ocean::fish(depth, tile)
      @cargo.push fish
    else
      false
    end
  end
end