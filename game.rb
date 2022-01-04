# game.rb

class Game
  attr_accessor :round, :p_current, :p_num
  attr_reader :p1, :p2

  def initialize(p1, p2)
    @round = 0
    @p1 = p1
    @p2 = p2
    @current_p = 0
    @p_num = 0
  end

  def turn(q)
    self.round += 1
    self.round.odd? ? self.p_num = 1 : self.p_num = 2

    if self.round.odd?
      self.p_current = self.p1
    else
      self.p_current = self.p2
    end

    puts "===== NEW TURN Round #{self.round} Player #{self.p_num} ====="
    puts "Player #{self.p_num}: #{q.question}"
    q.input_from_user
    answer = q.check_answer
    puts "Player #{self.p_num}: #{answer}"

    if answer == "Seriously? No!"
      self.p_current.hp -= 1
    end
  end

  def hp(hp1, hp2, max)
    puts "P1: #{hp1}/#{max} vs P2: #{hp2}/#{max}"
  end

  def winner(player)
    # puts "player #{p_num} wins with a score of #{hp_current}/#{hp_total}"
    puts "Player #{player.num} wins with a score of #{player.hp}/3"
    puts "===== GAME OVER ====="
    puts "Good bye!"
  end

end
