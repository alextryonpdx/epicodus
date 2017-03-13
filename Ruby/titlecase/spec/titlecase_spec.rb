require('rspec')
require('titlecase')


describe('String#titlecase') do

	it("capitalizes the first letter of a word") do
		expect(('beowolf').titlecase()).to(eq("Beowolf"))
	end

	it('capitalizes all words in a multiple word title') do
		expect(('the color purple').titlecase()).to(eq('The Color Purple'))
	end
	
end