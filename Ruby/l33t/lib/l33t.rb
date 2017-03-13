
# class String
# 	define_method(:titlecase)  do
# 		split_sentence = split(' ')
# 		split_sentence.each() do |word|
# 			word.capitalize!()
# # binding.pry
# 		end
# 		split_sentence.join(' ')
# 	end
# end

class String
	define_method(:l33t)  do
		new_string = []
		last_letter = ' '
		split_string = split('')
		split_string.each() do |letter|
# binding.pry
			if letter === 'e' || letter === 'E'
				new_string.push('3')
			elsif letter === 'o' || letter === 'O'
				new_string.push('0')
			elsif letter === 'I'
				new_string.push('1')
			elsif letter === 's'
				if last_letter === ' '
					new_string.push(letter)
				else
					new_string.push('z')
				end
			else
				new_string.push(letter)
			end
			last_letter = letter
# binding.pry
		end
		new_string.join('')
		# new_string
	end
end