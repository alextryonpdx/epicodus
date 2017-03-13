class Fixnum
	define_method(:leapyear?) do
		self.%(4).eql?(0) 
	end
end