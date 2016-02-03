class FixedArray

	attr_reader :fixed_array

	def initialize(size)
		@fixed_array = Array.new(size)
	end

	def get(index)
		@fixed_array[index]
	end

	def set(index, element)
		@fixed_array[index] = element 
		return @fixed_array[index]
	end

end

test = FixedArray.new(4)

p test
p test.get(8)
p test.set(3, "hello")