# Emilce C  & Maria Velez
# Ada C9 - Octos - Word-Guess
# 12th - 14th Feb 2018
# https://github.com/Ada-C9/Word-Guess


# class BodyPart
#
#   attr_reader
#
#
#   def initialize()
#
#   end
#
# end
#
#
#
# class Guess
#
#
# end
#
#
# rib = BodyPart.new()
#
#
# counter = 0
# until wrong_guesses == 6
#   counter -= counter
# end


# show the dashes that represent the number of letters to the user
# request a letter (guess) from your user

# while .... num_guess += 1
# number of guesses has to correlate to the number of letters in a word
# until user_input == max_guesses

# body parts variable is set to an array of strings representing body parts
body_parts = ["hand", "forearm", "upperarm"]

# randomly grabbing a word from body_parts array
random_word = body_parts.sample

puts random_word

random_word_length = random_word.length
# dashes = "_" * random_word_length # user sees this
# with every correct guess a dash is removed
# and replaced with a letter
guess = Array.new(random_word_length, "_ ")

# putting contents of 'guess' using the join method (makes underscores print horizontally)
puts guess.join("")

puts "Put in your guess..."
user_letter = gets.chomp.downcase

# splitting 'random_word' string into its individual characters and storing them into the 'random_word_array' array
random_word_array = random_word.chars

# used for testing
# puts "#{random_word_array.join("")}"

# random_word_array looped through index
random_word_array.each_index do |index|
  # letter is set to the index of the 'random_word_array'
  # setting 'letter' to the index of 'random_word_array' (which is the current letter)
  letter = random_word_array[index]
  # if letter is equal to the letter user submitted...
  if letter == user_letter
    # guess[index] = user_letter
    # in this case below, the 'guess[index]' on the left is location, the 'guess[index]' is the dash being replaced by the user_letter
    guess[index] = guess[index].sub("_", user_letter)
    # used for testing to check output
    puts guess.join("")
    puts index
    puts user_letter
  end
end
