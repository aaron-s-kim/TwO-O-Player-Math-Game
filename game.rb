# game.rb

class Game
  attr_accessor :round, :current_player
  attr_reader :player1, :player2

  def initialize(p1, p2)
    @round = 0
    @current_player = 0
    @player1 = p1
    @player2 = p2
  end

  def turn(q)
    self.round += 1
    self.round.odd? ? self.current_player = 1 : self.current_player = 2

    puts "===== NEW TURN Round #{self.round} Player #{self.current_player} ====="
    puts "Player #{self.current_player}: #{q.question}"
    q.input
    output = q.output
    puts "Player #{self.current_player}: #{q.output}"
  end

  def hp(hp1, hp2, max)
    puts "P1: #{hp1}/3 vs P2: #{hp2}/3"
  end

  def winner
    # puts "player #{p_num} wins with a score of #{hp_current}/#{hp_total}"
    puts "player 1 wins with a score of 1/3"
    puts "===== GAME OVER ====="
    puts "Good bye!"
  end

end


=begin
Player 1: What does 5 plus 3 equal?
> 9
Player 1: Seriously? No!
P1: 2/3 vs P2: 3/3
===== NEW TURN =====
Player 2: What does 2 plus 6 equal?
> 8
Player 2: YES! You are correct.
P1: 2/3 vs P2: 3/3
===== NEW TURN =====
... some time later ...
Player 1 wins with a score of 1/3
===== GAME OVER =====
Good bye!
=end