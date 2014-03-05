=begin
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
=end

#========
#========
#========

  def fizzbuzz(start, finish)
    start.upto(finish) do |num|
      evaluate_fizzbuzz(num)
      puts evaluate_fizzbuzz(num)
    end
  end

  def evaluate_fizzbuzz(number)
    if divisible_by_3?(number) && divisible_by_5?(number)
      "FizzBuzz"
    elsif divisible_by_5?(number)
      "Buzz"
    elsif divisible_by_3?(number)
      "Fizz"
    else
      number
    end
  end

  def divisible_by_5?(number)
    number % 5 == 0
  end

  def divisible_by_3?(number)
    number % 3 == 0
  end

finish = 60
fizzbuzz([3, 7, 8, 9, 10].max, finish)
