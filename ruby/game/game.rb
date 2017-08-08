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

Puts "Give me a word."
word = gets.chomp
word.split(//)