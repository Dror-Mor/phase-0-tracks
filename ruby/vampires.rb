
puts "What is your name?"
employee_name = gets.chomp

puts "How old are you? What year were you born?"
employee_age = gets.chomp
employee_birth_year = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
wants_garlic = gets.chomp

puts "Would you like to enroll in the company’s health insurance?"
wants_insurance = gets.chomp

got_age_right = false
likes_garlic = true
agreed_to_insurance = true

if 2017-employee_age.to_i == employee_birth_year.to_i
	got_age_right = true
end

if wants_garlic == "n" || wants_garlic == "no"
	likes_garlic = false
end

if wants_insurance == "n" || wants_insurance == "no"
	agreed_to_insurance = false
end
