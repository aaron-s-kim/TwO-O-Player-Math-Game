# player.rb

# player
class Player
  attr_accessor :hp
  attr_reader :hp_max

  def initialize(h)
    @hp_max = h
    @hp = h
  end

end

# p1 = Player.new(3)
# puts p1.hp_max
# puts p1.hp_current
# p1.hp_current -= 1
# puts p1.hp_current
