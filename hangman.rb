require 'colorize'
class Hangman

  def initialize
    @head       = " "
    @body       = " "
    @left_arm   = " "
    @right_arm  = " "
    @left_leg   = " "
    @right_leg  = " "
    @secret     = random_word
    @characters = empty_characters
  end

  def make_guess(guessed_letter)
    @secret.chars.each_with_index do |letter, index|
      if guessed_letter == letter
        @characters[index] = letter
      end
    end
  end

  def empty_characters
    Array.new(@secret.length, "_")
  end

  def characters
    @characters
  end

  def guess
    @characters.join
  end

  def board
    "     ________\n       #{@head}    |\n      #{@left_arm}#{@body}#{@right_arm}   |\n      #{@left_leg} #{@right_leg}   |\n     ________"
  end

  def random_word
    words.sample
  end

  def words
    ["blah", "floo"]
  end

end

# Draw and print a board
# secret word
# make the concept of blank spaces
# take a guess and compare to the secret word, update the characters with
  # the guessed letter
# remember guesses
# it should know if a guess has already been guessed
# it should when it is complete or hanged
# remember which parts have been added
# body parts need color

h = Hangman.new
puts h.board
h.make_guess("l")
puts h.guess
