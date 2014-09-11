require 'colorize'
class Hangman

  def initialize
    @head      = " "
    @body      = " "
    @left_arm  = " "
    @right_arm = " "
    @left_leg  = " "
    @right_leg = " "
  end

  def board
    "     ________\n       #{@head}    |\n      #{@left_arm}#{@body}#{@right_arm}   |\n      #{@left_leg} #{@right_leg}   |\n     ________"
  end

end

# Draw and print a board
# secret word
# take a guess and compare to the secret word
# remember guesses
# it should know if a guess has already been guessed
# it should when it is complete or hanged
# remember which parts have been added
# body parts need color

h = Hangman.new
puts h.board
