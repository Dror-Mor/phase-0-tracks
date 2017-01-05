def encrypt(str)
    counter = str.length
    index = 0
    while counter != 0
        if str[index] == "z"
            str[index] = "a"
            counter -= 1
            index += 1
        else 
            str[index] = str[index].next
            counter -= 1
            index += 1
        end
   end
   puts str
   str
end


def decrypt(str)
    counter = str.length
    index = 0 
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    while counter !=0
        if str[index] == "a"
            str[index] = "z"
            counter -= 1
            index += 1
        else 
            current_letter = alphabet.index(str[index]) 
            str[index] = alphabet[current_letter - 1]
            counter -= 1
            index += 1
        end
    end
    puts str
end

puts "Would you like to decrypt or encrypt password?"
user_input = gets.chomp
case user_input
when "encrypt"
    puts "Please type in your password."
    user_password = gets.chomp
    encrypt(user_password)
when "decrypt"
    puts "Please type in your password."
    user_password = gets.chomp
    decrypt(user_password)
else puts "Invalid choice"

end

# release 4: Nested Method Call
# Encrypt returns a value which is available for decrypt.
# Decrypt takes in the value and returns a new value