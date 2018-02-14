# Emilce C  & Maria Velez
# Ada C9 - Octos - Word-Guess
# 12th - 14th Feb 2018
# https://github.com/Ada-C9/Word-Guess

class Art
  attr_accessor :art

  def initialize
    @art = art
  end

  def show_art
     show_art = "(=^ ◡ ^=)"
     return show_art
  end

  def art_array
    art_array = show_art.split("")
    puts "#{art_array}"
    return art_array
  end

end

class Word
  attr_accessor :guess_letter
  attr_reader :selection_of_word, :create_underscore_array

  def initialize
    @word = selection_of_word
    @replaced_underscore = create_underscore_array
    @guesses_available = 9

  end

  def selection_of_word()
    # body parts variable is set to an array of strings representing body parts
    words = ["kitty", "paw", "litter", "leash", "tongue", "grumpy", "fierce", "tail", "whiskers", "claws"]
    # randomly grabbing a word from body_parts array
    random_word = words.sample

  end

  def create_underscore_array
    random_word_length = @word.length
    puts @word

    underscore_array = Array.new(random_word_length, "-")

    # putting contents of 'guess' using the join method (makes underscores print horizontally)
    # user sees this
    puts underscore_array.join("")
    return underscore_array.join("")
  end

  def guess_letter
    art = Art.new
    word_characters = @word.chars

    user_guess_count = 0
    incorrect_guesses = []

    while user_guess_count > 0 && @replaced_underscore.include?("-")
      puts art.show_art
      puts art.art_array
      puts "Provide a letter"
      guess = gets.chomp.downcase

      # COMPARE user guess to the split array
      word_characters.each_index do |index|
        # putting the current index equal to letter so we can use a conditional
        letter_of_random_word = word_characters[index]
        if letter_of_random_word == guess
          # @replaced_underscore[index] = @replaced_underscore[index].sub("_", guess)
          @replaced_underscore[index] = letter_of_random_word
          # puts replaced_underscore.join("")
          puts @replaced_underscore
        else
          guesses_available -= 1
          puts "Guesses_left: #{guesses_available}"
          incorrect_guesses << guess

        end
      end

      # if @replaced_underscore[index] != letter_of_random_word
      #   incorrect_guesses << guess
      # end
      #
      # puts "#{incorrect_guesses}"
      puts "Not finished, keep going"

      # user_guess_count += 1
      # puts "Guesses left: #{@guesses_available - user_guess_count}"
      #
      # if user_guess_count == @guesses_available
      #   puts "You're out of guesses!"
      # end
    end

    puts "You win!"
    exit
  end
end

# count the number of guesses inside of the word Array
# the number of


attempt = Word.new # this runs the whole thing once
# puts attempt.create_underscore_array # this runs the program again(and with a specific behavior invoked), but same word
attempt.guess_letter
