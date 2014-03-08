def intro
  puts %/

  THE MATH THUNDERDOME OF BAD-ASSITUTDE!!!! (Only one leaves)

  Hey guys, how about a little math throwdown? 
  /.red
end

def player_profile_set_up
  @current_player_is = 0

  @player1_game_score = 0
  @player2_game_score = 0

  puts "What's Player 1's name going to be?"
  @player1_name = gets.chomp
  
  puts %/
  Cool, #{@player1_name}, a'ight.
  /.blue

  puts "What's Player 2's name going to be?"
  @player2_name = gets.chomp
  
  puts %/
  #{@player2_name}, you're my favorite.
  /.yellow
end

def current_player_switch
  @current_player_is == 0 ? @current_player_is = 1 : @current_player_is = 0
end