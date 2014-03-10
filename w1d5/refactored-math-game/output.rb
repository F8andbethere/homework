def intro
  puts %/

  THE MATH THUNDERDOME OF BAD-ASSITUTDE!!!! (Only one leaves)

  Hey guys, how about a little math throwdown? 
  /.red
end

def text_color(colorized_text_output)
  puts @current_player_is == 0 ? colorized_text_output.blue : colorized_text_output.yellow
end

def pose_player_question(equation_to_pose)
  puts %/
  Here's where you sling your math skills, #{current_player_name}:
  #{equation_to_pose}
  /
  
  text_color(%/So, #{current_player_name}, what's your best guess, champ?/)
  gets.chomp.to_i
end

def does_player_want_to_quit
  puts %/
  Game over, #{current_player_name}!
  /
  current_player_switch

  puts %/
  Congrats, #{current_player_name}, you win at mathing. Self-worth +1!
  /
  wait(0.75)
  puts %/
  D'yall wanna play again? (y\/n)
  /
  current_player_switch
  gets.chomp
end

def game_status
  puts %/
  So the score for games won sits at:
  #{@player1_name}: #{@player1_game_score}
  #{@player2_name}: #{@player2_game_score}
  /
end
