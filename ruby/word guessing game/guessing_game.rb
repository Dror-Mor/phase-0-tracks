# User types in a string
# def initializes the following:
# 	- downcases the  user string and splits the string into an array of chars.
# 	- calculates number of possible guesses by length of string times 2.
# 	- creates an empty array that will store the second users progress.
# def “status” that will show the second users progress:
# 	- if word to guess at an index is empty (nil), print “_ “
# 	- else print the letter in that possition.
# def "check complete" will go over the letters found so far and end the game if completed.
# 	- if the user completed the entire word, letter by letter, end the game and congratulate them.
# def “check guess” will get a word or letter that the user wants to try and the the word that needs to be guessed.
# 	- if user enters the entire word and guesses correctly - congratulate them and end the game.
# 	- else if the user gives a letter or word that they already tried before - print out 
# a message and don’t deduct any guesses.
# 	- else go over the word to guess array, index by index:
# 		-if no match is found, deduct 1 guess, put the letter/word in to an array of past guesses.
# 			- if user exceeded number of guesses - end the game and print out a message.
# 		- else: add the letter found into the right index in word so far array. 

# make sure driver code iterates until game is over and calls status with every loop.

class WordGuessing
	attr_accessor :num_of_guesses, :word_so_far, :past_guesses, :user_word, :word
	attr_reader :word_to_guess, :game_over

	def initialize(word)
		@word_to_guess = word.downcase.split('')
		@num_of_guesses = word.length * 2
		@word_so_far = []
		@past_guesses = []
		@game_over = false
		@word = word
	end

	def check_guess(user_guess)
		if user_guess.downcase == @word.downcase
			@game_over = true
			p "Good job! the word is #{@word}"
		elsif @past_guesses.include?(user_guess.downcase)
			p "You already tried guessing '#{user_guess}'"
		else
			result = @word_to_guess.each_index.select{ |i| @word_to_guess[i].downcase == user_guess.downcase }
			if result.empty?
				@num_of_guesses -=1
				@past_guesses << user_guess.downcase
				if @num_of_guesses == 0
					@game_over = true
					p "You're out of guesses. the word was #{@word}"
				end
			else
				result.each { |i| @word_so_far[i] = user_guess }
			end
		end
	end

	def check_complete
		is_complete = true
		@word_to_guess.each_index do |i|
			is_complete = !@word_so_far[i].nil? if is_complete
		end
		if is_complete
			@game_over = true
			p "Good job! the word is #{@word}" 
		end
	end

	def status
		p "You have #{@num_of_guesses} guesses left\nAnd this is what you have so far:\n"
		@word_to_guess.each_index do |i|
			if @word_so_far[i].nil?
				print "_ "
			else
				print @word_so_far[i]
			end
		end
	end

	def play
		puts "Please enter a word you want the other user to guess:"
		user_word = gets.chomp

		system "clear"
		puts "The user before you gave us a word. let's see if you can guess it!"

		while !@game_over
			status
			puts "\nPlease ask for a letter or try to guess the entire word:"
			user_guess = gets.chomp
			check_guess(user_guess, user_word)
			check_complete
		end
	end
end

# game = WordGuessing.new(user_word)
# game.play