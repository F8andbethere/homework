#Homebrew method to find the max value entry in an array
def homebrew_max (arr_mine)
  max = arr_mine.first

  for i in 0..arr_mine.length - 1
    max = arr_mine[i] if arr_mine[i] > max
  end

  max
end

result = homebrew_max([1, 2, 3, 4, 1, 20, 13, -3, -16])

puts "Max value in the array is #{result}"