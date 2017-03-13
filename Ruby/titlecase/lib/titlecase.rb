
class String
	define_method(:titlecase)  do
		split_sentence = split(' ')
		split_sentence.each() do |word|
			word.capitalize!()
# binding.pry
		end
		split_sentence.join(' ')
	end
end