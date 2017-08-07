class Santa
    attr_reader :age, :ethnicity, :reindeer_ranking
    attr_accessor :gender

    def initialize(gender, ethnicity)
        puts "Initializing Santa instance ..."
        gender = @gender
        ethnicity = @ethnicity
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
        @age = 0
    end

    def speak
        puts "Ho, ho, ho! Haaaappy holidays!"
    end

    def eat_milk_and_cookies(cookie_type)
        puts "That was a good #{cookie_type} cookie!"
    end

    def celebrate_birthday
        @age += 1
    end

    def get_mad_at=(reindeer_name)
        @reindeer_ranking.delete(reindeer_name)
        @reindeer_ranking.insert(-1, reindeer_name)
    end

end

# santa = Santa.new("male", "white")

# santa.celebrate_birthday
# p santa.age
# santa.gender=("female")
# p santa.gender
# santa.get_mad_at=("Vixen")
# p santa.reindeer_ranking



def santas(integer)
    integer.times do
    ex_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
    rand_genders = ex_genders.sample

    ex_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
    rand_ethnicities = ex_ethnicities.sample

    new_age = Random.new
    random_age = new_age.rand(140)

        puts "This is a #{random_age} year old, #{rand_ethnicities} #{rand_genders} santa."
    end
end

p santas(100)








