puts "LIST DOWN ALL LEAP YEARS IN BETWEEN".center 40
puts "START YEAR:"
startY = gets.chomp
puts "END YEAR:"
endY = gets.chomp

if endY > startY
	array = []
	for z in startY..endY
		leapyear = false
		i=z.to_i
		if i%4==0
			
			if i%100==0
				if i%400==0
					leapyear=true
				else
					leapyear=false
				end
			else

				leapyear = true
			end
		end

		
		if leapyear ==true
			#puts "#{i} leapyear"
		#else
			#puts "#{i}"
		array.push i

		end
	end
	puts "LEAP YEARS BETWEEN YEARS #{startY} and #{endY}:"
	puts array.join " "
else
	puts "You're insane."
end
