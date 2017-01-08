# Create cliant hash with the following keys: Name, Age, Number of children, Decor theme, Number of rooms, eco friendly.
# ask user to fill in the keys
# convert keys to thir types: Name - str, Age - int, Number of children - int,
# Decor theme - str, Number of rooms - int, eco friendly - bool.
# Print current answers
# ask if there are any changes
# if there are - allow user to change the wanted key and update it, if there aren't print final version

cliant = {

}

puts "Please enter cliants name:"
cliant[:name] = gets.chomp

puts "Please enter cliants age:"
user_input = gets.chomp
cliant[:age] = user_input.to_i

puts "Please enter number of children:"
user_input = gets.chomp
cliant[:children] = user_input.to_i

puts "Please enter decor theme:"
cliant[:decore] = gets.chomp

puts "Please enter number of rooms:"
user_input = gets.chomp
cliant[:rooms] = user_input.to_i

puts "Would you like the design to be eco friendly? (y/n)"
user_input = gets.chomp
if user_input == "y"
	cliant[:eco] = true
else
	cliant[:eco] = false
end

puts "\nPlease review the following information:"
p cliant

puts "\nWould you like the change any of the following?\nif so, please type field name. if not, please type `none`"
user_input = gets.chomp
case user_input
	when "name"
		puts "Please enter new name:"
		cliant[:name] = gets.chomp
	when "age"
		puts "Please enter new age:"
		user_input = gets.chomp
		cliant[:age] = user_input.to_i
	when "children"
		user_input = gets.chomp
		cliant[:children] = user_input.to_i
	when "decor"
		puts "Please enter new decor theme:"
		cliant[:decore] = gets.chomp
	when "rooms"
		puts "Please enter new number of rooms:"
		user_input = gets.chomp
		cliant[:rooms] = user_input.to_i
	when "eco"
		puts "Would you like the design to be eco friendly? (y/n)"
		user_input = gets.chomp
		if user_input == "y"
		cliant[:eco] = true
		else
		cliant[:eco] = false
		end
	when "none"
	
end

puts "Here is the final output:"
p cliant


	
