
puts "please enter hamsters name"
hamster_name = gets.chomp

puts "please enter volume level from 1 to 10"
volume_level = gets.chomp

puts "Please enter fur color"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption? (y/n)"
good_for_adoption = gets.chomp

puts "What's the estimated age of the hamster?"
age = gets.chomp

volume_int = volume_level.to_i
age_float = age.to_f

puts "The hamsters name is #{hamster_name}, its volume level is #{volume_int}\n its fur color is #{fur_color}"
if good_for_adoption == "y"
	puts "This hamster is good for adoption"
else
	puts "This hamster could be dangerous"
end

puts "The hamster seems to be about #{age_float} years old." 