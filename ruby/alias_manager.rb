# ask user for their full name
# split the string
# swap between first and last name
# create a loop that cheks if letter is vowel or consonant
# 	-if vowel - create a method that finds the next vowel and call it
# 	-else use .next to replace the consonant.
continue = true
new_names = []
original_names = []
counter = 0
vowels = ['a', 'e', 'i', 'o', 'u']
consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'y', 'z']

def get_next(arr, letter)
	result = if arr.include?(letter)
		new_index = arr.index(letter)
		if new_index == arr.length - 1
			arr[0]
		else
			arr[new_index + 1]
		end
	end
end

while continue
	puts "Please enter your full name:"
	agent_name = gets.chomp
	original_names[counter] = agent_name
	arr_name = agent_name.split(' ')
	agent_name = "#{arr_name[1]} #{arr_name[0]}"
	new_name = ""
	agent_name.each_char do |letter|
		result = get_next(vowels, letter)
		unless result
			result  = get_next(vowels.map(&:upcase), letter)
			unless result
				result = get_next(consonants, letter)
				unless result
					result = get_next(consonants.map(&:upcase), letter)
					unless result
						result = " "
					end
				end
			end
		end	

		new_name += result
	end
	new_names[counter] = new_name
	counter += 1
	puts "Would you like to enter a new name?\nif not, pleasr type 'quit'"
	user_choise = gets.chomp
	if user_choise == "quit"
		continue = false
		puts "\nHere is your final output:"
		for i in 0...new_names.length
			puts "\n#{original_names[i]} AKA #{new_names[i]}"
		end
	else
		puts "Information saved."
	end
end
