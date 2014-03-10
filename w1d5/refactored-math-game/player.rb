def player_score_set_up
  @player1_game_score = 0
  @player2_game_score = 0
end

def player_lives_set_up
  puts %/
How many lives is each player going to have?/
  player_lives = gets.chomp.to_i
  @lives_total = [player_lives, player_lives]
end

def player_profile_set_up
  puts %/
What's Player 1's name going to be?/
  @player1_name = gets.chomp
  
  current_player_switch
  text_color(%/
  Cool, #{@player1_name}, a'ight.
  /)

  puts %/
What's Player 2's name going to be?/
  @player2_name = gets.chomp
  
  current_player_switch
  text_color(%/
  #{@player2_name}, you're my favorite.
  /)
end

def current_player_switch
  @current_player_is == 0 ? @current_player_is = 1 : @current_player_is = 0
end

def current_player_name
  @current_player_is == 0 ? @player1_name : @player2_name
end

def game_score_update
  @current_player_is != 0 ? @player1_game_score += 1 : @player2_game_score += 1
end