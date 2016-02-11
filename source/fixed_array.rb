require_relative "out_of_bounds"

class FixedArray

	attr_reader :fixed_array

	def initialize(size)
		@fixed_array = Array.new(size)
	end

	def get(index)
		if index > @fixed_array.size
			
			raise OutOfBoundsException, "Index exceeds size of array"
		end
		@fixed_array[index]
	end

	def set(index, element)

		if index > @fixed_array.size
			raise OutOfBoundsException, "Index exceeds size of array"
		end
		@fixed_array[index] = element 
		return @fixed_array[index]
	end

end





