# main.rb

# Tips
# main.rb will require all other files
# each class should be defined its own rb file
# use get.chomp to get input from users and puts for output
# isolate I/O logic to 1-2 classes
# don't allow all classes to interact (gets/puts) with the User
# use puts, raise some_val.inspect, and byebug to help with debugging

require './game'
require './player'
require './question'

# create new player objects
p1 = Player.new('mario', 1, 3)
p2 = Player.new('luigi', 2, 3)

g = Game.new(p1, p2) # create game with player objects

# game loop
loop do
  q = Question.new
  g.turn(q)
  g.hp
  
  if p1.hp == 0
    g.winner(p2)
    break
  elsif p2.hp == 0
    g.winner(p1)
    break
  end
end


# Example prompt
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
