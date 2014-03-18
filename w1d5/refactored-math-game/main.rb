require 'colorize'
require 'active_support/all'
require './evaluations'
require './player'
require './output'

@current_player_is = 0

#-----------------
# Math game start
#-----------------

def math_game_start
  intro
  player_profile_set_up
  player_score_set_up
  player_lives_set_up
  player_turn
end

def player_turn
  game_state = true
  
  while game_state == true
    current_player_switch

    equation_generator
    
    pose_player_question

    if !player_answer_correct?(get_player_answer)
      wrong_answer
    else
      puts "Cool. Awesome. Next!"
      wait(0.75)
    end

    if is_game_over?(@lives_total[@current_player_is]) == true
      if does_player_want_to_quit == 'y'
        game_score_update
        reset
        player_wants_to_play_again = true
      else
        game_score_update
        player_wants_to_play_again = false
        game_state = false
      end
    end
  end

  if player_wants_to_play_again
    player_turn
  else
    game_end
  end
end

def reset
  game_status
  player_lives_set_up
end

def game_end
  puts %/
  Alright, guys, lates./
  game_status
end

math_game_start