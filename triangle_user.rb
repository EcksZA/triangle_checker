require './lib/triangles'

puts "Welcome to the triangle checking program!"
def main_menu
	puts "\n"
	puts "Do you want to try a triangle?"
	puts "Press 'y' to continue or 'n' to exit"
	
	decision = gets.chomp

	if decision == "n"
		puts "Goodbye!"
	else
		puts "Type in the three sides of your triangle:"
		puts "(Your input must be integers)"

		puts "Input 1:"
		input_1 = gets.chomp
		puts "Input 2:"
		input_2 = gets.chomp
		puts "Input 3:"
		input_3 = gets.chomp

		main_function(input_1, input_2, input_3)	
	end				
end

def main_function(integer_1, integer_2, integer_3)
	if Triangles.new(integer_1, integer_2, integer_3).triangle?()
		if Triangles.new(integer_1, integer_2, integer_3).type() == "EQUALATERAL"
			puts "Your triangle is an EQUALATERAL!"
		elsif Triangles.new(integer_1, integer_2, integer_3).type() == "SCALENE"
			puts "Your triangle is a SCALENE!"
		else
			puts "Your triangle is an ISOSCELES!"
		end
	else
		puts "This is not a triangle!"
	end
	main_menu
end

main_menu