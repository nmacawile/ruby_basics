def primeFactors n

	number = n
	primes = []

	while number%2==0 do
		primes.push 2
		number/=2
	end

	i=3
	while i<=number do
		while number%i==0 do
			primes.push i
			number/=i
			
		end
		#puts "#{i}"
		i+=2
	end

	puts "Primes: #{primes.uniq.join ' '}"
	puts "Largest Prime: #{primes.last}"
end

primeFactors (600851475143)