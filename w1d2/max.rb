#Homebrew method to find the max value entry in an array
def homebrewMax (arrMine)

  max = arrMine.first

  for i in 0..arrMine.length - 1

    if arrMine[i] > max
      max = arrMine[i]
    end

  end

  return max
end

result = homebrewMax([1, 2, 3, 4, 1, 20, 13, -3, -16])
puts "Max value in the array is #{result}"