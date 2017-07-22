#Hamster Name, Volume Level, Fur Color, Adoption?
#Hamster Name - String
#Volume Level - Integer
#Fur Color - String
#Adoption - Boolean
puts "What is the hamster's name?"
hamster = gets.chomp
puts "On a scale of 1-10, what is the volume level of this hamster?"
volume = gets.chomp.to_i
puts "What is the fur color?"
color = gets.chomp
puts "Is this a good candidate for adoption? y/n"
adoption = gets.chomp
puts "What is the hamster's age?"
age = gets.chomp
puts "This hamster's name is #{hamster}. He is a #{volume} on the volume scale. His fur is a #{color} color."

if age == ""
    puts "Age is unknown."
else
    puts "This hamster is #{age} years old."
end

if adoption == "y"
    puts "This hamster is good for adoption"
elsif adoption == "n"
    puts "This hamster is not suitable for adoption"
else
    puts "User did not input data correctly. Cannot determine adoption candidacy."
end
