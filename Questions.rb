require_relative "Players"
class Questions < Players
  def get_question (integer1, integer2, player1, player2, current_player)
    if current_player == player1
      player_question = "Player 1"
    else 
      player_question = "Player 2"
    end
    puts "#{player_question}: What does #{integer1} plus #{integer2} equal?"
  end
end