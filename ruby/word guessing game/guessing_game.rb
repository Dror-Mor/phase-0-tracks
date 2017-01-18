class WordGuessing
	attr_accessor :num_of_guesses, :word_so_far
	attr_reader :word_to_guess

	def initialize(word)
		@word_to_guess = word.downcase.split('')
		@num_of_guesses = word.length * 2
		@word_so_far = []
		@game_over = false
		@win_game = false
	end

	def status
		puts "\nThis is what you have so far:\n"
		for i in 0..word_to_guess.length
			if word_to_guess[i] == nil
				puts "_ "
			else
				puts "#{word_to_guess[i] }"
			end
		end
	end
end

puts "Please enter a word you want the other user to guess:"
user_word = gets.chomp
game = WordGuessing.new(user_word)

p game.word_to_guess