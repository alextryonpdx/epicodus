require('rspec')
# require('titlecase')
require('l33t')

# describe('String#titlecase') do

# 	it("capitalizes the first letter of a word") do
# 		expect(('beowolf').titlecase()).to(eq("Beowolf"))
# 	end

# 	it('capitalizes all words in a multiple word title') do
# 		expect(('the color purple').titlecase()).to(eq('The Color Purple'))
# 	end
	
# end

describe('String#l33t') do

	it("convert 'e' to the number 3") do
		expect(('Element').l33t()).to(eq('3l3m3nt'))
	end

	it("convert 'o' to the number 0") do
		expect(('loop').l33t()).to(eq('l00p'))
	end

	it("convert 'I' to the number 1") do
		expect(('Init').l33t()).to(eq('1nit'))
	end

	it("convert 's' to the letter z") do
		expect(('ass').l33t()).to(eq('azz'))
	end

	it("if 's' is the first letter of a word, leave it alone") do
		expect(('Sass').l33t()).to(eq('Sazz'))
	end

	it('convert full phrase with all rules') do
		expect(("Don't you love these 'String' exercises? I do!").l33t()).to(eq("D0n't y0u l0v3 th3z3 'String' 3x3rciz3z? 1 d0!"))
	end
end