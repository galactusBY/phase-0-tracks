#prompting the user for input and converting that into the appropriate data types and assigning to a variable
puts "What is the client's name?"
client_name_input = gets.chomp

puts "What is the client's age?"
age_input = gets.chomp.to_i

puts "What is the number of children?"
children_input = gets.chomp.to_i

puts "What is the decor theme?"
decor_input = gets.chomp
#Converting a string to a boolean value
puts "Does the client want something eco-friendly?"
eco_input = gets.chomp
if eco_input == "Yes"
    eco_input = true
elsif eco_input == "No"
    eco_input = false
end

puts "What is their budget? (USD)"
budget_input = gets.chomp.to_i
#Using the variables above for the hash values assigned to a key
client_prof = {
    name: client_name_input,
    age: age_input,
    children: children_input,
    decor: decor_input,
    eco: eco_input,
    budget: budget_input
}
#Giving feedback of the completed form
p client_prof
#Prompting user to make any needed changes
#Using a "unless" conditional to allow user to end if there are no changes to be made
puts "Would you like to make any changes?"
unless gets.chomp == "Skip"
  puts "What category would you like to change?"
  categories = gets.chomp.to_sym
  puts "Enter new value."
  new_value = gets.chomp.to_i
  client_prof[categories] = new_value
end
#Letting the user view the final for at the end
client_prof[categories] = new_value

p client_prof


