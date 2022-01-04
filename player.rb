# player.rb

# player
class Player

  attr_accessor :name, :hp
  attr_reader :num, :hp_max

  def initialize(name, num, h)
    @name = name
    @num = num
    @hp_max = h
    @hp = h
  end
  

end

