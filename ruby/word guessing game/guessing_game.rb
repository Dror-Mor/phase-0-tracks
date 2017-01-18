class WordGuessing
	attr_accessor :word_to_guess :max_num_guesses :guessed_so_far
	attr_reader :game_over

	def initialize
		@word_to_guess = []
		@max_num_guesses = nil
		@guessed_so_far = []
		@game_over = false
	end

game = WordGuessing.new
puts "Please enter word to guess:"
