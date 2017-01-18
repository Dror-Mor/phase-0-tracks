class WordGuessing
	attr_accessor :num_of_guesses, :word_so_far, :past_guesses, :user_word
	attr_reader :word_to_guess, :game_over, :win_game

	def initialize(word)
		@word_to_guess = word.downcase.split('')
		@num_of_guesses = word.length * 2
		@word_so_far = []
		@past_guesses = []
		@game_over = false
		@win_game = false
	end

	def check_guess(user_guess, user_word)
		if user_guess == user_word.downcase
			@win_game = true
			@game_over = true
		elsif @past_guesses.include?(user_guess)
			puts "You already tired guessing '#{user_guess}'"
		elsif user_word.include?(user_guess)
			@word_so_far[user_word.index(user_guess)] = user_guess
			@past_guesses << user_guess
		else 
			@num_of_guesses -=1
			@past_guesses << user_guess
			@game_over = true if @num_of_guesses == 0	
		end
	end

	def status
		puts "\nThis is what you have so far:\n"
		for i in 0..@word_to_guess.length-1
			if @word_so_far[i] == nil
				print "_ "
			else
				print "#{word_so_far[i]} "
			end
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

if game.win_game 
	puts "Good job! the word is #{user_word}"
else
	puts "You're out of guesses. the word was #{user_word}"
end
