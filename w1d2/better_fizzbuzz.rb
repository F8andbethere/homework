def fizzbuzz_alt (min, max)
  
  (min..max).each do |num|
    fizzbuzz = ""
    fizzbuzz += "Fizz" if num % 3 == 0
    fizzbuzz += "Buzz" if num % 5 == 0
    fizzbuzz = num if fizzbuzz == ""
    puts fizzbuzz
  end

end

puts "Hey, where does our FizzBuzz search start?"
  x = Integer(gets)

puts "Hey, where does our FizzBuzz search end?"
  y = Integer(gets)

  fizzbuzz_alt(x, y)