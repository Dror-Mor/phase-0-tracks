require_relative 'guessing_game'

describe WordGuessing do
	let(:wordguessing) { WordGuessing.new("Hello") }
#check guess
	it 'Ends game if the user guessed the entire word' do
		expect(wordguessing.check_guess("Hello")).to eq "Good job! the word is Hello"
	end

	it 'Continues game if user didnt guess the entire word' do
		wordguessing.check_guess("bye")
		expect(wordguessing.game_over).to eq false
	end

	it 'Adds the right letter to the word array if the user guessed right' do
		wordguessing.check_guess("H")
		expect(wordguessing.word_so_far[0]).to eq "H"	
	end

	it 'Doesnt add the letter if it isnt in the word' do
		wordguessing.check_guess("g")
		expect(wordguessing.word_so_far[0]).to eq nil
	end

	it 'Decreases num of guesses with every wrong guess' do
		wordguessing.check_guess("g")
		expect(wordguessing.num_of_guesses).to eq 9
	end

	it 'Ends game if user reached 0 guesses' do
		game = WordGuessing.new("H")
		game.check_guess("a")
		game.check_guess("g")
		expect(game.game_over).to eq true
	end

	it 'Prints if the user already guessed same letter' do
		wordguessing.check_guess("a")
		expect(wordguessing.check_guess("a")).to eq "You already tried guessing 'a'"

	end
#check complete
	it 'Checks if the user completed the word' do
		wordguessing.check_guess("h")
		wordguessing.check_guess("e")
		wordguessing.check_guess("l")
		wordguessing.check_guess("o")
		expect(wordguessing.check_complete).to eq "Good job! the word is Hello"
		
	end
# status
	it 'Prints the letters found so far' do
		wordguessing.check_guess("h")
		expect(wordguessing.word_so_far[0]).to eq "h"
	end
end