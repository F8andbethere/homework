def wait(wait_time)
  sleep(wait_time)
end

def random_number(first_number, second_number)
  rand(first_number..second_number)
end

def random_operator(a, b, c, d)
  operator_array = [a, b, c, d]
  operator_array[rand(0...operator_array.length)]
end

def equation_generator(random_number1, random_operator, random_number2)

  puts "DEBUG STRING: #{@equation_as_string}"
  
  # divide_by_zero_test(random_number1, random_operator, random_number2)

  @equation_as_string = "#{random_number1} " + "#{random_operator}" + " #{random_number2}"
  
  @evaluated_equation = eval(@equation_as_string)

  # @evaluated_equation == Integer ? 
  # "#{random_number1} " + "/" + " #{random_number2}" :
  # @evaluated_equation = @evaluated_equation

end

# def divide_by_zero_test(operator, potential_zero)
#   if operator == '/' && potential_zero == 0

# end

def equation_validator?(player_answer, equation_answer)
  player_answer == equation_answer
end

# def validated_equation

# end

def wrong_answer
  @lives_total[@current_player_is] -= 1

  text_color(%/
  You suck at the maths, #{current_player_name}, you only have #{@lives_total[@current_player_is]} lives left. Shape up.
  /)

  wait(0.75)
end

def is_game_over?(lives_to_check_against_zero)
  lives_to_check_against_zero <= 0
end