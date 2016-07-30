class Offbrand_hangman
  attr_reader :guess_count, :is_over
  attr_accessor :first_user_input, :guesses

  def initialize(first_user_input)
    @first_user_input = first_user_input
    @guesses = []
    @guess_count = first_user_input.length
    @is_over = false
  end

  def display_word
    word = ""
    first_user_input.split("").each do |character|
      if (@guesses.include?(character))
        word += character + " "
      else
        word += "_ "
      end
   end
   return word
  end

  def check_guess(guess)
    if guess == first_user_input
      @is_over = true
      return "Congratulations, you guessed it!"

    elsif guesses.include?(guess)
      return "You already guessed that."

    elsif first_user_input.include?(guess)
      guesses << guess
      @guess_count -= 1
      return ""

    elsif @guess_count == 0
      @is_over = true
      return "lmao get gud scrub"

    else 
      @guess_count -= 1
      return "That letter isn't in the word! Guess again."
    end
  end

  def game_over?
    return @is_over
  end

end

# create a method that takes a word from the first user input 
# display that input as a series of '_ ' equal to the length of the word

# a method that takes input from the second player and compares it to the first user input
# if that input == word, game is over they win. if not, it counts as a guess
# if it's a letter, it calls the previous method and puts in that letter in the displayed word

# method to display congratulatory and taunting messages on game end

#hangman = Offbrand_hangman.new
#hangman.display_word("Hello")

puts "First player, please input a word for the second player to guess."
first_user_input = gets.chomp

hangman = Offbrand_hangman.new(first_user_input)
puts hangman.display_word

while !hangman.game_over?
puts "Second player, please guess the word, or a letter that you think might be in it."
guess = gets.chomp

puts hangman.check_guess(guess)
puts hangman.display_word
end
