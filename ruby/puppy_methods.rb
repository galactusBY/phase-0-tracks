class Puppy

    def fetch(toy)
        puts "I brought back the #{toy}!"
        toy
    end

    def speak(integer)
        integer.times do
        puts "Woof!"
        end
    end

    def roll_over
        puts "*roll over*"
    end

    def dog_years(integer)
        dog_age = integer * 7
        p dog_age
    end

    def play_dead
        puts "I'm dead!"
    end

    def initialize
        puts "Initializing new puppy instance ..."
    end
end

jersey = Puppy.new
jersey.fetch("stick")
jersey.speak(3)
jersey.roll_over
jersey.dog_years(5)
jersey.play_dead

class Bar_method
    def initialize
        puts "My name is Taylor and I am going to get you fit!"
    end

    def leg_lifts
        puts "*Lifts Legs*"
    end

    def push_ups(integer)
        integer.times do
            puts "Up....down...."
        end
    end
end

check_list = []

50.times do |exercises|
    exercises = Bar_method.new
    check_list.push(exercises)
end

check_list.each do |exercises|
    exercises.leg_lifts
    exercises.push_ups(1)
end

