def evenFibonacci limit
	sequence = [1,1]
	last = 1

	while last < limit do
		last = sequence[-1]+sequence[-2]		
		sequence.push (last)		
	end

	puts sequence.each_even.join ' '

	puts "Sum of all even Fibonacci numbers: "+sequence.each_even.inject(0,:+).to_s
end

class Array	
	def each_even
		even_array = []
		self.each do |n|
			if n%2==0
				even_array.push n
			end
		end
		even_array
	end	
end

evenFibonacci 4000000
