#pseudocode and write a method  REAL NAME ----> FAKE NAME
#Ask for first name
#Ask for second name
#
#(Taylor Svendsen) ---> (Svendsen Taylor)
#---> (svendsen taylor)
#aeiou ---> eioua
#Consanant ---> Next Consanant
#(twipftip vezmus) ---> (Twipftip Vezmus)

puts "What is your first name?"
first_name = gets.chomp.downcase

puts "What is your last name?"
last_name = gets.chomp.downcase

full_name_1 = last_name + first_name


def changer_1(old_fullname_1)
  vowels = ["a", "e", "i", "o", "u"]
  old_fullname_1 = old_fullname_1.split('')
  new_name_1 = old_fullname_1.map do |letter|
    if vowels.include?(letter)
      vowels.rotate(1)[vowels.index(letter)]
    else
      letter
    end
  end
  new_name_1.join
end

def changer_2(old_name_2)
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l","m",   "n", "p", "q", "r", "s", "t", "v", "w", "x", "y","z"]
  old_name_2 = old_name_2.split('')
  new_name_2 = old_name_2.map do |letter|
    if consonants.include?(letter)
      consonants.rotate(1)[consonants.index(letter)]
    else
      letter
    end
  end
  new_name_2.join
end