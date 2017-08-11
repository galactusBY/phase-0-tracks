# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

# -------------GAME------------------
#Set word based off user initial input
#use split
#set guesses to iterate through split array of word and match each letter as == or != to the use input
#user gets number of guesses equal to array length
#have user guesses populate a separate array and make condition that if user's == value in the array then to loop back to the prompt asking the user to guess a letter
#print visual representation of the blank spaces of the word
#print message if they loose or win
#exit
# ["t", "a", "y", "l", "o", "r"]

#get word from user input and lowercase the string
puts "Welcome to my game. Please give me a word."
word = gets.chomp.downcase
word_array = word.split(//)
attempts = word_array.length + 2
feedback_array = []
guess_array = []
word_array.each_index do |x|
  feedback_array = Array.new((x + 1), "-")
end

while feedback_array != word_array && attempts > 0
  puts "GUESS A LETTER!"
  puts "You have #{attempts} attempts left."
  p feedback_array

  guess = gets.chomp.downcase

  result = word_array.include?(guess)
  multi_guess = guess_array.include?(guess)

  if multi_guess
    puts "You guessed this already"
    elsif result == true
      var = word_array.index(guess)
      feedback_array[var] = guess
      attempts -= 1
    else #result == false
      puts "Try again..."
      attempts -= 1
    end
   if feedback_array == word_array
      puts "You won!"
      t=1
      break
    end


#loop until attempts > (word_array.length + 2)

#if true && feedback_array == word_array
# end game

#Issues:
# Need to account for two of the same letter