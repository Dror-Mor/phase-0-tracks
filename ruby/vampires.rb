
puts "What is your name?"
employee_name = gets.chomp

puts "How old are you? What year were you born?"
employee_age = gets.chomp
employee_birth_year = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
wants_garlic = gets.chomp

puts "Would you like to enroll in the company’s health insurance? (y/n)"
wants_insurance = gets.chomp

got_age_right = true
likes_garlic = true
agreed_to_insurance = true

if 2017-employee_age.to_i != employee_birth_year.to_i
	got_age_right = false
end

if wants_garlic == "n" || wants_garlic == "no"
	likes_garlic = false
end

if wants_insurance == "n" || wants_insurance == "no"
	agreed_to_insurance = false
end

if got_age_right && (likes_garlic || agreed_to_insurance)
	puts "Probably not a vampire."
elsif !got_age_right && !(likes_garlic || agreed_to_insurance)
	puts "Probably a vampire."
elsif !got_age_right && !likes_garlic && !agreed_to_insurance
	puts "Almost certainly a vampire."
elsif employee_name == "Drake Cula" || employee_name == "Tu Fang"
	puts "Definitely a vampire."
else
	puts "Results inconclusive."

end
	