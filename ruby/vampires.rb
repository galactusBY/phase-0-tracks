#What is your name?
#How old are you? What year were you born?
#Our company cafeteria serves garlic bread. Should we order some for you?
#Would you like to enroll in the company’s health insurance?
puts "Hello and welcome to Werewolf Inc. Please answer the following questions truthfully."

puts "What is your name"
fullname = gets.chomp

puts "What year is it? (YYYY)"
date = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
year = gets.chomp

puts "Do you like Garlic?"
garlic = gets.chomp

puts "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp

#fullname = Taylor Svendsen
#year = 2017
#age = 25
#year = 1992
#garlic = y
#insurance = y

@total = 0
@current_year = date
def test(boolean, boolean, boolean, boolean)
        if fullname == "Drake Cula" || "Tu Fang"
            valid_name = false
            @total += +4
        else
            valid_name = true
            @total += +0
        end

        if age == (@current_year - year)
            correct_age = true
            @total += +0
        elsif age != (@current_year - year)
            correct_age = false
            @total += +1
        else
            correct_age = false
            @total += +1
        end

        if garlic == "y" || "yes"
            hates_garlic = false
            @total += +0
        elsif garlic == "n" || "no"
            hates_garlic = true
            @total += +1
        end

        if insurance == "y" || "yes"
            wants_insurance = true
            @total += +0
        elsif insurance == "n" || "no"
            wants_insurance = false
            @total += +1
        end
    end
#Adding up the total score
    if @total >= 4
        p "Definitely a vampire!"
    elsif @total = 3
        p "Almost Certainly a Vampire."
    elsif @total = 2
        p "Probably a Vampire."
    elsif @total = 1
        p "Probably Not a Vampire."
    elsif @total <= 0
        p "Results inconclusive."
        p "Please try again."
    else
        test
    end
end


#def test(t/f, t/f, t/f, t/f)

    #If correct_age == false
    #then add 1
    #If true add 0

    #If hates_garlic == true
    #then add 1
    #If false add 0

    #If wants_insurance == true
    #then add 1
    #If false add 0

    #If valid_name == “Drake Cula” || “Tu Fang” = true
    #then add 4

#add numbers up, match total, print result

#If total == then print
#Definitely a vampire >= 4
#Almost Certainly a Vampire = =3
#Probably a Vampire = 2
#Probably Not a Vampire = 1
#Results inconclusive <= 0