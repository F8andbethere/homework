def ask_player_equation
  current_player_switch
  
  equation_generator
  current_player_name
  pose_player_equation

  text_color(%/What's your best guess, #{current_player_name}?/)
  player_answer = gets.chomp.to_i

  answer_right_or_wrong(player_answer, @equation_answer)
end

def equation_generator
  rand_num1 = random_number
  rand_num2 = random_number  
  operator_choice = rand(0..2)

  case operator_choice
    when 0
      @equation_as_string = "#{rand_num1} plus #{rand_num2}"
      @equation_answer = rand_num1 + rand_num2
    when 1
      @equation_as_string = "#{rand_num1} minus #{rand_num2}"
      @equation_answer = rand_num1 - rand_num2
    when 2
      @equation_as_string = "#{rand_num1} multiplied by #{rand_num2}"
      @equation_answer = rand_num1 * rand_num2
    else
      @equation_as_string = "#{rand_num1} divided by #{rand_num2}"
      @equation_answer = rand_num1 / rand_num2      
  end
end

def equation_validator(player_answer, equation_answer)
  player_answer == equation_answer
end



def answer_right_or_wrong(player_answer, equation_answer)
  equation_validator(player_answer, @equation_answer) ? 
  (puts %/
  Yep. Good going you, you basic math-master, you./) &
  ask_player_equation : 
  (puts %/
  Ruh-ruh! WRONG./.red) &
  minus_current_player_life
end