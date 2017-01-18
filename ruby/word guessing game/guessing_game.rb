class WordGuessing
	attr_accessor :num_of_guesses, :word_so_far, :past_guesses, :user_word
	attr_reader :word_to_guess, :game_over

	def initialize(word)
		@word_to_guess = word.downcase.split('')
		@num_of_guesses = word.length * 2
		@word_so_far = []
		@past_guesses = []
		@game_over = false
	end

	def check_guess(user_guess, user_word)
		if user_guess == user_word.downcase
			@game_over = true
			puts "Good job! the word is #{user_word}"
		elsif @past_guesses.include?(user_guess)
			puts "You already tired guessing '#{user_guess}'"
		else
			result = @word_to_guess.each_index.select{ |i| @word_to_guess[i].downcase == user_guess }
			if result.empty?
				@num_of_guesses -=1
				@past_guesses << user_guess
				if @num_of_guesses == 0
					puts "You're out of guesses. the word was #{user_word}"
					@game_over = true
				end
			else
				result.each { |i| @word_so_far[i] = user_guess }
			end
		end
	end

	def status
		puts "\nThis is what you have so far:\n"
		is_complete = true
		@word_to_guess.each_index do |i|
			if @word_so_far[i].nil?
				print "_ "
				is_complete = false
			else
				print @word_so_far[i]
			end
		end
		if is_complete
			@game_over = true
			puts "Good job! the word is #{user_word}"
		end
	end
end

puts "Please enter a word you want the other user to guess:"
user_word = gets.chomp
game = WordGuessing.new(user_word)

system "clear"
puts "The user before you gave us a word. let's see if you can guess it!"

while !game.game_over
	game.status
	puts "\nPlease ask for a letter or try to guess the entire word:"
	user_guess = gets.chomp
	game.check_guess(user_guess, user_word)
end

