class Game

  def initialize (player1, player2)
    @players = [player1, player2]
  end

  def player1 
    @players[0]
  end

  def player2
    @players[1]
  end

  def attack(player)
    player.receive_damage
  end
  # Here in the code
  # game.attack(player2)
  # player2.reciever_damage 
  # Points get deducted
end