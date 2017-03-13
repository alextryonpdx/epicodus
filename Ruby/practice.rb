class String
  define_method(:scramble) do
     self.reverse!().upcase!()
   end
end



y = 0
x = []
5.times() do
	3.times() do
		x.push(y)
	end
	y = y+1
end




class String
	define_method(:expand(num)) do
		new_string = []
		old_string = self.split()
		old_string.each() do |letter|
			num.times() do 
				new_string.push(letter)
			end
		end
		new_string
	end
end




class Fixnum
	define_method(:ping_pong) do
		x = 0
		results = []
		self.times() do
			x += 1
			if (x.%(3) == 0).& (x.%(5) == 0)
				results.push('ping-pong')
			elsif x.%(3) == 0
				results.push('ping')
			elsif x.%(5) == 0
				results.push('pong')
			else 
				results.push(x)
			end
		end
		results
	end
end

