def intro
  puts %/

  THE MATH THUNDERDOME OF BAD-ASSITUTDE!!!! (Only one leaves)

  Hey guys, how about a little math throwdown? 
  /.red
end

def player_names
  puts "What's Player 1's name going to be?"
  @player1_name = gets.chomp
  puts %/
  Cool, #{@player1_name}, a'ight.
  /.blue
  @player1_game_score = 0

  wait

  puts "What's Player 2's name going to be?"
  @player2_name = gets.chomp
  puts %/
  #{@player2_name}, you're my favorite.
  /.yellow
  @player2_game_score = 0
end

def current_player_name
  @current_player_is == 0 ? @player1_name : @player2_name
end

def text_color(colorized_text_output)
  puts @current_player_is == 0 ? colorized_text_output.blue : colorized_text_output.yellow
end

def current_player_switch
  @current_player_is == 0 ? @current_player_is = 1 : @current_player_is = 0
end

def wait
  sleep(1)
end

def pose_player_equation
  puts %/
  #{current_player_name}, here's where you sling your math skills:\n\n
  #{@equation_as_string}
  /
end

def minus_current_player_life
  
  @current_player_is == 0 ? @player1_lives = @player1_lives - 1 : @player2_lives = @player2_lives - 1
  @current_player_is == 0 ? current_player_lives = @player1_lives : current_player_lives = @player2_lives 
  
  wrong_answer(current_player_lives)
end

def wrong_answer(current_player_lives)
  text_color(%/
  You suck at the maths, #{current_player_name}, you only have #{current_player_lives} left. Shape up.
  /)

  evaluate_player_lives
end

def evaluate_player_lives
  @player1_lives == 0 || @player2_lives == 0 ? game_over : ask_player_equation
end

def game_over
  puts %/
  Game over, #{current_player_name}!
  /
  current_player_switch

  puts %/
  Congrats, #{current_player_name}, you win at mathing. Self-worth +1!
  /
  wait
  puts %/
  D'yall wanna play again? (y\/n)
  /
  gets.chomp.downcase == "y" ? reset_game : game_exit
end

def player_games_won
  @current_player_is == 0 ? 
  @player1_game_score = @player1_game_score + 1 : 
  @player2_game_score = @player2_game_score + 1

  puts %/
  As it stands, the tally is:
  #{@player1_name}: #{@player1_game_score}
  #{@player2_name}: #{@player2_game_score}
  /
end

def game_exit
  puts %/
  Later dudes! The tally is:
  #{@player1_name}: #{@player1_game_score}
  #{@player2_name}: #{@player2_game_score}
  /
end