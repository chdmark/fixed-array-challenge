require_relative "fixed_array"


describe FixedArray do 
	let(:fixed_array) {FixedArray.new(4)}
	

	it "should have a fixed length of four"	do 
		expect(fixed_array.fixed_array.length).to eq 4
	end

	it "should get the value at the given index" do 
		expect(fixed_array.get(3)).to eq nil
	end

	it "should set the value at the given index" do 
		expect(fixed_array.set(2, "hello")).to eq "hello"
	end 

	context "user tries to get a value at an index outside the bounds of the array" do 
		it "should throw an OutOfBoundsException error" do
			expect{fixed_array.get(5)}.to raise_error(OutOfBoundsException, "Index exceeds size of array")
		end
	end

	context "user tries to set value at an index outside the bounds of the array" do 
		it "should throw an OutOfBoundsException error" do 
			expect{fixed_array.set(5, "hello")}.to raise_error(OutOfBoundsException, "Index exceeds size of array")
		end
	end


end