class Triangles
	def initialize(side1, side2, side3)
		@side_a = side1.to_i
		@side_b = side2.to_i
		@side_c = side3.to_i
	end

	def triangle?()
		if @side_a + @side_b >= @side_c && @side_b + @side_c >= @side_a && 
			@side_a + @side_c >= @side_b
			true
		else
			false
		end
	end

	def type()
		if @side_a == @side_b && @side_b == @side_c
			@triangle_type = "EQUALATERAL"
		elsif @side_a != @side_b && @side_b != @side_c && @side_a != @side_c
			@triangle_type = "SCALENE"
		else
			@triangle_type = "ISOSCELES"
		end
	end
end