require 'rspec'
require 'triangles'

describe Triangles do
	it "should initialise the object" do
		my_triangle = Triangles.new(2,3,4)
		my_triangle.should be_an_instance_of Triangles
	end

	it "should test whether a user input is a triangle or not" do
		my_triangle = Triangles.new(2,3,4)
		my_triangle.triangle?.should eq true
	end

	it "should test what type pf triangle the user input is, if it is a triangle" do
		my_triangle = Triangles.new(2,3,4)
		my_triangle.type.should eq "SCALENE"
	end
end