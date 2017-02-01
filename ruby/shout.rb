# module Shout
# 	def self.yell_angrily(words)
#     words + "!!!" + " :("
#   	end

#   	def self.yelling_happily(words)
#   	"Yay!!" + words + "^_^"
#   	end
# end

# p Shout.yell_angrily("Darn")
# p Shout.yelling_happily("Daddy's home!")

module Shout
	def yell_angrily(words)
    words + "!!!" + " :("
  	end

  	def yelling_happily(words)
  	"Yay!!" + words + "^_^"
  	end
end

class Teacher
	include Shout
end

class Cheerleader
	include Shout
end

teacher = Teacher.new
p teacher.yelling_happily("No tests to grade")
p teacher.yell_angrily("Be quiet")

cheerleader = Cheerleader.new
p cheerleader.yell_angrily("U.G.L.Y - you ain't got no aliby, you're UGLY")
p cheerleader.yelling_happily("M.A.M.A - How you think you got that way? - your MAMA!")