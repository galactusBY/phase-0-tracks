# module Shout
#     def self.yell_angrily(words)
#         words + "!!!" + " :("
#     end

#     def self.yelling_happily(words)
#         words + "!" + " :)"
#     end
# end

# p Shout.yelling_happily("I love pie")
# p Shout.yell_angrily("I hate raisins")


module Shout
    def yell_angrily(words)
        words + "!!!" + " :("
    end

    def yelling_happily(words)
        words + "!" + " :)"
    end
end

class Conservative
    include Shout
end

class Liberal
    include Shout
end

liberal = Liberal.new
p liberal.yell_angrily("Freedom")

conservative = Conservative.new
p conservative.yell_angrily("Liberty")

