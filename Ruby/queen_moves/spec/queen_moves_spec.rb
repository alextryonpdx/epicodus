require('rspec')
require('queen_moves')
require('pry')


describe('Array#queen_move?') do

	it('returns true if coordinates horizontally (X-coordinates) in line with each other') do
		expect(([[1,2],[1,3]]).queen_move?).to(eq(true))
	end

	it('returns true if coordinates vertically (Y-coordinates) in line with each other') do
		expect(([[1,2],[3,2]]).queen_move?).to(eq(true))
	end

	it('returns true if coordinates diagonally in line with each other') do
		expect(([[4,2],[3,3]]).queen_move?).to(eq(true))
	end

	it('returns false if coordinates are the same') do
		expect(([[1,1],[1,1]]).queen_move?).to(eq(false))
	end

	it('returns false if coordinates are not horizontally, vertically, or diagonally in line with each other') do
		expect(([[2,2],[3,4]]).queen_move?).to(eq(false))
	end

end