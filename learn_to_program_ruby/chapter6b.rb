puts "THE DEAF GRANDMA".center 40
puts "WHAT?"
continue = true
while continue == true
	saywhat = gets.chomp
	while saywhat != saywhat.upcase
		puts "HUH?! SPEAK UP, SONNY!"
		saywhat = gets.chomp
	end

	if saywhat == 'BYE'		
		bye=1
		while saywhat == "BYE" and bye < 3

			bye_response = rand(5)
			if bye_response == 0
				puts "LOUDER! YOU KNOW I CAN'T HEAR YOU LIKE THAT."
			elsif bye_response == 1
				puts "I CAN'T HEAR YOU!"	
			elsif bye_response == 2
				puts "PARDON?!"	
			elsif bye_response == 3
				puts "EXCUSE ME?"	
			else
				puts "NO. WHAT ARE YOU TALKING ABOUT?"	
			end
			
			saywhat = gets.chomp
			if saywhat != "BYE" or saywhat != saywhat.upcase
				puts "OH GOOD! SO YOU'RE STAYING?"
			end
			bye+=1
		end
		if(bye==3 and saywhat=="BYE")
			continue = false
		end

	else	
		puts "NOT SINCE #{1930+rand(21)}"
	end


end

puts "YOU BE CAREFUL NOW, DEAR."
