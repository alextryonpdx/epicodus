require('rspec')
require('scrabble_score')
require('pry')

describe('String#scrabble_score') do

	it("returns a scrabble score for a letter 'a'") do
	  expect("a".scrabble_score()).to(eq(1))
	end

	it("returns a scrabble score for a letter 'z'") do
	  expect("z".scrabble_score()).to(eq(10))
	end

	it("returns a scrabble score for a simple word") do
	  expect("za".scrabble_score()).to(eq(11))
	end

	it("returns a scrabble score for a more complex word") do
	  expect("badger".scrabble_score()).to(eq(10))
	end

	it("returns a scrabble score for the alphabet sequenced") do
	  expect("abcdefghijklmnopqrstuvwxyz".scrabble_score()).to(eq(87))
	end

end