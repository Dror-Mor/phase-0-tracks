# ask user for their full name
# split the string
# swap between first and last name
# create a loop that cheks if letter is vowel or consonant
# 	-if vowel - create a method that finds the next vowel and call it
# 	-else use .next to replace the consonant.

puts "Please enter your full name:"
agent_name = gets.chomp

arr_name = agent_name.split(' ')

agent_name = "#{arr_name[1]} #{arr_name[0]}"
new_name =""
agent_name.each_char do |letter|
	vowels = ['a', 'e', 'i', 'o', 'u']
	upper_vowels = ['A', 'E', 'I', 'O', 'U']
	consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'y', 'z']
	upper_consonants = ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'Y', 'Z']
	
	if consonants.include?(letter)
		new_index = consonants.index(letter)
		if new_index == 19
			new_index = 1
			new_name += "#{consonants[new_index]}"
			new_index = consonants.index(letter)
		else
			new_name += "#{consonants[new_index+1]}"
		end
	elsif upper_consonants.include?(letter)
		new_index = upper_consonants.index(letter)
		if new_index == 4
			new_index = 1
			new_name += "#{upper_consonants[new_index]}"
			new_index = upper_consonants.index(letter)
		else
			new_name += "#{upper_consonants[new_index+1]}"
		end
	elsif vowels.include?(letter)
		new_index = vowels.index(letter)
		if new_index == 4
			new_index = 1
			new_name += "#{vowels[new_index]}"
			new_index = vowels.index(letter)
		else
			new_name += "#{vowels[new_index+1]}"
		end
	elsif upper_vowels.include?(letter)
		new_index = upper_vowels.index(letter)
		if new_index == 4
			new_index = 1
			new_name += "#{upper_vowels[new_index]}"
			new_index = upper_vowels.index(letter)
		else
			new_name += "#{upper_vowels[new_index+1]}"
		end
	else
		new_name += " "
	end
end
puts new_name
puts agent_name
