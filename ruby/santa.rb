class Santa
	def initialize (gender, ethnicity)
		# puts "initializing Santa instance.."
		@gender = "#{gender}"
		@ethnicity = "#{ethnicity}"
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name))
		@reindeer_ranking << reindeer_name
	end

	#setter
	def gender=(new_gender)
		@gender = new_gender
	end

	#getter
	def reindeer_ranking
		@reindeer_ranking
	end

	def age
		@age
	end

	def gender
		@gender
	end

	def ethnicity
		@ethnicity
	end
end

# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("vanilla cookie")

santas = []
example_genders = ["trans male", "cis gender", "other", "female", "pangender", "male", "androgynous"]
example_ethnicities = ["asian", "indian", "black", "other", "latin", "just a human"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
puts "Current age:"
puts "#{santas[0].age}"
santas[0].celebrate_birthday
puts "\nNew age:"
puts "#{santas[0].age}"
puts "\nBefore change:"
puts "#{santas[0].reindeer_ranking}"
santas[0].get_mad_at("Dasher")
puts "\n After change:"
puts "#{santas[0].reindeer_ranking}"
puts "\nBefore change:"
puts "#{santas[0].gender}"
santas[0].gender = "Male"
puts "\nAfter change:"
puts "#{santas[0].gender}"
p santas[0].ethnicity
