class Puppy
	def initialize
		puts "initializing new puppy instance..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num_of_times)
  	num_of_times.times do
  		puts "Woof!"
  		end
  end

  def roll_over
  	puts "*roll over*"
  end

  def dog_years(human_years)
  	p dog_years = human_years*7
  end

  def beg
  	puts "pretty please!"
  end
end

chompers = Puppy.new
chompers.speak(3)
chompers.roll_over
chompers.dog_years(10)
chompers.beg