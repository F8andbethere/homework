require 'colorize'
require './evaluations'
require './players'

#-----------------
# Math game start
#-----------------

def math_game_start
  wait
  player_names
  game_set_up
  wait
end

def reset_game
  player_games_won
  game_set_up
end

def game_set_up
  puts %/
  How many lives does each player have?
  /
  life_total = gets.chomp.to_i
  @current_player_is = 1

  @player1_lives = life_total
  @player2_lives = life_total
  
  puts %/
  Let's do this.
  /

  ask_player_equation
end

intro
math_game_start