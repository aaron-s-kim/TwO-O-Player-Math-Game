# question.rb

# pick 2 random numbers between 1-20
class Question
  attr_accessor :rand_num1, :rand_num2, :player_input
  attr_reader :answer_correct

  def initialize
    @rand_num1 = rand(1..20) # random num from range (inclusive)
    @rand_num2 = rand(1..20)
    @answer_correct = @rand_num1 + @rand_num2
  end

  def question
    "What does #{self.rand_num1} plus #{self.rand_num2} equal?"
  end

  def input
    print "> "
    # gets.chomp reads ARGV first, then falls back to $stdin; $stdin reads user input
    self.player_input = $stdin.gets.chomp.to_i # .to_i converts str to int of 0
  end

  def output
    if @player_input == self.answer_correct
      "YES! You are correct."
    else
      "Seriously? No!"
    end
  end

  # def ma

end

# q = Question.new
# print q.rand_num1, ' + ', q.rand_num2, ' = ', q.answer_correct, "\n"
# q.math_question


