def wait(wait_time)
  sleep(wait_time)
end

def random_number(first_number, second_number)
  rand(first_number..second_number)
end

def random_operator(operators = ['+'])
  operators[rand(0...operators.length)]
end

def equation_generator
  first_number = random_number(0, 20)
  second_number = random_number(0, 20)
  operator = random_operator(['+', '-', '*', '/'])

  if operator == '/'
    check_whole_number_division(first_number, second_number)
  end

  @equation_as_string = "#{first_number} " + "#{operator}" + " #{second_number}"
  @evaluated_equation = first_number.send(operator, second_number)
end

def check_whole_number_division(first_number, second_number)
  if (first_number % second_number).to_f == 0
    equation_generator
  end
end


def player_answer_correct?(player_answer)
  player_answer == @evaluated_equation
end

def get_player_answer
  gets.chomp.to_i
end

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