#-----------------
# Calculator
#-----------------

# class Calculator
#   def add(a, b)
#     a + b
#   end

#   def subtract(a, b)
#    a - b
#   end
# end

# calculator = Calculator.new

# puts calculator.add(20, 5)
# puts calculator.subtract(6, 6)



#-----------------
# Return an array of string lengths of an input array
#-----------------

# test_array_example = ["James", "Another World", "", "Brap-brap, homefry"]

# # puts test_array_example.map
# # puts test_array_example

# test_array = ["James", "Another World", "", "Brap-brap, homefry"]

# puts test_array[1].length

  # test_array.each do |counter|
  # puts test_array[counter].length
  # end

# def length_finder(input_array)

#   input_array.each do |counter|
#   input_array[counter].length
#   end
# end

# puts length_finder(test_array)


#-----------------
# Return an array of string lengths of an input array
#-----------------
# # WORKS

# sentence = 'Ruby is The best language in the World'
# word = 'the'

# def find_frequency(sentence, word)
#   puts sentence.downcase.split(" ").count(word)
# end

# find_frequency(sentence, word)



#-----------------
# Sort a string by words
#-----------------

sorting_string = "Taboo a boohoo and James"

def sort_string(string)
  
  print string.split.sort{|x, y| x.length <=> y.length}
end

sort_string(sorting_string)

# arr.sort{|x, y| x.length <=> y.length}

