def sumMultiples(a, b, c)
	array = []
	limit = c-1

	a.step(limit, a) do |x|
		array.push x
	end

	b.step(limit, b) do |x|
		array.push x
	end

	#(a*b).step(limit,(a*b)) do |x|
	#	(i = array.find_index(x)) && array.delete_at(i)
	#end
	array.uniq

	puts "Multiples of #{a} and #{b} less than #{c}: #{array.sort.join ' '}"
	puts "Sum: "+array.inject(:+).to_s
end




sumMultiples 3,5,1000