#Vampire Detection Test

puts "Hello and welcome to Werewolf Inc. Please answer the following questions truthfully."

puts "What is your name"
fullname = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i

puts "Do you like Garlic?"
garlic = gets.chomp

puts "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp


total = 0
current_year = 2017

if fullname == ("Drake Cula" || "Tu Fang")
    total += +4
else
    total += +0
end

  if age == (current_year - year)
      total += +0
  elsif age != (current_year - year)
      total += +1
  elsif age >= 100
  else
      total += +1
  end

    if garlic == ("y" || "yes")
        total += +0
    elsif garlic == ("n" || "no")
        total += +1
    end
      if insurance == ("y" || "yes")
          total += +0
      elsif insurance == ("n" || "no")
          total += +1
      end
        if total >= 4
            p "Definitely a vampire!"
        elsif total == 3
            p "Almost Certainly a Vampire."
        elsif total == 2
            p "Probably a Vampire."
        elsif total == 1
            p "Probably Not a Vampire."
        elsif total <= 0
            p "Results inconclusive."
            p "Please try again."
        end