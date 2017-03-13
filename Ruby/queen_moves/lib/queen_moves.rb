class Array
	define_method(:queen_move?) do
		start = self[0]
		target = self[1]
		y_diff = (start[1]-target[1]).abs
		x_diff = (start[0]-target[0]).abs
# binding.pry
		if start === target 
			false
		elsif start[0] === target[0]
			true
		elsif start[1] === target[1]
			true
		elsif  y_diff === x_diff
			true
		else
			false
		end
	end
end