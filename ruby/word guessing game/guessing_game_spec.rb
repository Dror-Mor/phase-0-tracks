require_relative 'WordGuessing'

describe WordGuessing do
	let(:wordguessing) { WordGuessing.new}

	it "Checks if the letter is in the word to guess" do
		expect(wordguessing.check_guess(hello, h)).to 