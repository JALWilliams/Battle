class Player
  attr_reader :name, :points
  DEFAULT_POINTS = 200
  DEFAULT_ATTACK_POINTS = 10

  def initialize (name, points = DEFAULT_POINTS)
    @name = name
    @points = points
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @points -= DEFAULT_ATTACK_POINTS
  end

end