# Emilce C  & Maria Velez
# Ada C9 - Octos - Word-Guess
# 12th - 14th Feb 2018
# https://github.com/Ada-C9/Word-Guess


class Art
  # where we create the ASC art
  attr_reader

  def initialize()

  end

end

class Word
  attr_accessor :guess

  def initialize
    @word = selection_of_word
    @guess_array = build_guess_array
  end

  def guess_status
    return @guess_array.join("")
  end

  def selection_of_word()
    # body parts variable is set to an array of strings representing body parts
    words = ["hand", "forearm", "upperarm", "surgery", "limbless", "gore", "shrug", "man", "knife", "amputation"]
    # randomly grabbing a word from body_parts array
    random_word = words.sample

  end

  def build_guess_array
    random_word_length = @word.length
    # dashes = "_" * random_word_length # user sees this
    # with every correct guess a dash is removed
    # and replaced with a letter
    puts @word

    guess_array = Array.new(random_word_length, "_ ")

    # putting contents of 'guess' using the join method (makes underscores print horizontally)
    puts guess_array.join("")
    # return guess_array.join("")
  end

  def guess_letter(letter) # we split the letter in here for comparison against user input
    # user_letter = guess # what is this SUPPOSED to be doing?

    # splitting 'random_word' string into its individual characters and storing them into the 'random_word_array' array
    random_word_array = random_word.chars

    # get the user guess
    puts "Provide a letter"
    guess = gets.chomp.downcase

    # COMPARE user guess to the split array
    # random_word_array looped through index
    random_word_array.each_index do |index|
      # putting the current index equal to letter so we can use a conditional
      letter = random_word_array[index]
      # if letter is equal to the letter user submitted...
      if letter == guess
        # guess[index] = user_letter
        # **in this case below, the 'guess[index]' on the left is location, the 'guess[index]' is the dash being replaced by the user_letter
        ###doing the replacement here
        @guess_array[index] = guess_array[index].sub("_", user_letter)
        # used for testing to check output
        puts guess.join("")
        puts index
        puts user_letter
      end
    end
  end
end

attempt = Word.new # this runs the whole thing once
# puts attempt.build_guess_array # this runs the program again(and with a specific behavior invoked), but same word
