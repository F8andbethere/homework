class Ocean

  MAX_DEPTH = 4
  MAX_TILE  = 9
  SURFACE   = 0

  # Types of Fish
  TUNA   = 'T'
  SALMON = 'S'
  EMPTY  = '~'

  # The board below represents the ocean. It's an array of array of strings (a 2 dimensional Array). Don't let the weird syntax confuse you. It's just a fancy way of defining an array of strings. Each depth is actual an array of strings. Each tile is either empty (~) or has fish: SALMON (S) or TUNA (T)

  # => => Forward direction => =>
  BOARD = [
    #  0 1 2 3 4 5 6 7 8 9   # Tile Number
    %w{~ ~ ~ S ~ ~ ~ T S T}, # Depth 1
    %w{T T ~ ~ S ~ ~ S ~ ~}, # Depth 2
    %w{S ~ ~ T ~ S ~ T ~ S}, # Depth 3
    %w{~ ~ ~ T ~ S ~ S ~ ~}, # Depth 4
  ]
  # => => Forward direction => =>
  
  def self.fish(depth, tile)
    if BOARD[depth - 1][tile] == SALMON
      salmon = GiantSalmon.new
    elsif BOARD[depth - 1][tile] == TUNA
      tuna = GiantTuna.new
    end
  end
end
