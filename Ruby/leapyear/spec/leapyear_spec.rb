require('rspec')
require('leapyear')

describe('String#leapyear?') do
	it('is false for a year not devisible by 4') do	
		expect((1993).leapyear?()).to(eq(false))
	end
	it('is true for a year is devisible by 4') do	
		expect((2000).leapyear?()).to(eq(true))
	end
end