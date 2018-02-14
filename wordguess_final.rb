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

  def eliminate_art(num)
    return show_art.slice(num)
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
    # breaking up the word into separate letters so we can loop thru them
    word_characters = @word.chars

    incorrect_guesses = []

    puts art.show_art

    while @guesses_available > 0 && @replaced_underscore.include?("-")
      puts "Provide a letter"
      guess = gets.chomp.downcase
      letter_of_random_word = 0

      # COMPARE user guess to the split array
      word_characters.each_index do |index|
        # putting the current index equal to letter so we can use a conditional
        letter_of_random_word = word_characters[index]
        if letter_of_random_word == guess
          # @replaced_underscore[index] = @replaced_underscore[index].sub("_", guess)
          @replaced_underscore[index] = letter_of_random_word
          # puts replaced_underscore.join("")
          puts @replaced_underscore
        end
      end

      @guesses_available -= 1

      puts "Guesses_left: #{@guesses_available}"

      if letter_of_random_word != guess
        incorrect_guesses << guess
        art.eliminate_art(1)
      end

      # puts incorrect_guesses.length
      puts "You've guessed these incorrect letters so far: #{incorrect_guesses.join(",")}"
      puts "Keep going!"

    end

    puts "You win!"
    exit
  end
end


attempt = Word.new # this runs the whole thing once
# puts attempt.create_underscore_array # this runs the program again(and with a specific behavior invoked), but same word
attempt.guess_letter
