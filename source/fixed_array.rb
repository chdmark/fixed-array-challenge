class FixedArray

	attr_reader :fixed_array

	def initialize(size)
		@fixed_array = Array.new(size)
	end

	def get(index)
		if index > @fixed_array.size
			raise ArgumentError, "Index exceeds size of array"
		end
		@fixed_array[index]
	end

	def set(index, element)

		if index > @fixed_array.size
			raise ArgumentError, "Index exceeds size of array"
		end
		@fixed_array[index] = element 
		return @fixed_array[index]
	end

end

test = FixedArray.new(4)

p test
p test.get(3)
p test.set(2, "hello")
p test.set(1, "yo")