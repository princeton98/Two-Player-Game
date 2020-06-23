require_relative "Questions"
require_relative "Players"
require_relative "Game"


player1 = Players.new(3)
player2 = Players.new(3)
game = Game.new(3)
$currentPlayer = player1

while (player1.lives > 0 && player2.lives > 0 )
  puts "-----NEW TURN-----"
  question = Questions.new(3)
  int1 = Random.new
  int2 = Random.new
  int1 = int1.rand(1..20)
  int2 = int2.rand(1..20)
question.get_question(int1, int2, player1, player2, $currentPlayer)
game.response(int1, int2, player1, player2, $currentPlayer)
end
game.game_over(player1, player2)
