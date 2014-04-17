test_array = [["James", 165, 3], ["Cujo", 110, 3], ["Jerry", 95, 1]]

@total_weight = 0

def array_each(array)

  total_weight = 0

  array.each do |x|
  total_weight += x[2]
  end

  puts total_weight
end

def array_inject(array)

  total_weight = 
  array.inject(0) do |temp_sum, array_being_counted| #array_being_counted is array[x] where x = the iteration
    temp_sum += array_being_counted[1]
  end

  puts total_weight 
end


array_each(test_array)

array_inject(test_array)



=begin
First time

x = array[0]
total_weight += array[0][1] # the same as total_weight += x[1]



Second time

x = array[1]
total_weight += array[1][1] # the same as total_weight += x[1]



Third time

x = array[2]
total_weight += array[2][1] # the same as total_weight += x[1]


=end