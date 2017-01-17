class Santa
	attr_reader :reindeer_ranking, :age, :ethnicity
	attr_accessor :gender
	
	def initialize (gender, ethnicity, age)
		# puts "initializing Santa instance.."
		@gender = "#{gender}"
		@ethnicity = "#{ethnicity}"
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
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
end

# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("vanilla cookie")

max_santas = 100
max_age = 140
santas = []
example_genders = ["trans male", "cis gender", "other", "female", "pangender", "male", "androgynous"]
example_ethnicities = ["asian", "indian", "black", "other", "latin", "just a human"]
max_santas.times do |i|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample, rand(0..140))
  puts "\n--------------------------------------"
  puts "Santa number #{i+1}\nGender: #{santas[i].gender}\nEthnicity: #{santas[i].ethnicity}\nReindeer Ranking: #{santas[i].reindeer_ranking}\nAge: #{santas[i].age}"
end

puts "\nCurrent age:"
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
