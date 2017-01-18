module Shout
	def self.yell_angrily(words)
    words + "!!!" + " :("
  	end

  	def self.yelling_happily(words)
  	"Yay!!" + words + "^_^"
  	end
end

p Shout.yell_angrily("Darn")
p Shout.yelling_happily("Daddy's home!")