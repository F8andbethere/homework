class Fish

  attr_accessor :weight, :value, :value_per_kg

  def initialize(weight, value)
    @weight = weight
    @value = value
    @value_per_kg = 10
  end
end