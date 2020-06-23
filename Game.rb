require_relative "Questions"
require_relative "Players"
class Game < Questions
  def switch_player(player_1, player_2, player)
    if player == player_1
      $currentPlayer = player_2
    else
      $currentPlayer = player_1
    end
  end
  
  def response(number1, number2, player_1, player_2, current_player)
    answer = gets.chomp
    answer = answer.to_i
    if answer == (number1 + number2)
      puts "YES! You are correct."
      puts "P1 #{player_1.lives}/3 vs P2 #{player_2.lives}/3"
      self.switch_player(player_1, player_2, current_player)
    else
      puts "Seriously? No!"
      current_player.lives = current_player.lives - 1
      puts "P1 #{player_1.lives}/3 vs P2 #{player_2.lives}/3"
      self.switch_player(player_1, player_2, current_player)
    end
  end

  def game_over(player_1, player_2)
    if player_1.lives == 0 
      puts "Player 2 wins with a score of #{player_2.lives}"
    end
    if player_2.lives === 0 
      puts "Player 1 wins with a score of #{player_1.lives}"
    end
    puts "-----GAME OVER-----"
  puts "Good bye!"
    end
  end


