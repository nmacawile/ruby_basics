beers = 99
count = beers
while count >= 0

	if count===2
		puts "2 bottles of beer on the wall, 2 bottles of beer."
		puts "Take one down and pass it around, 1 bottle of beer on the wall."
		puts
	elsif count===1
		puts "1 bottle of beer on the wall, 1 bottle of beer."
		puts "Take one down and pass it around, no bottles of beer on the wall."
		puts
		
	elsif count===0
		puts "No bottles of beer on the wall, no bottles of beer."
		puts "Go to the store and buy some more, #{beers} bottles of beer on the wall."
		puts
	else
		puts "#{count} bottles of beer on the wall, #{count} bottles of beer."
		puts "Take one down and pass it around, #{count-1} bottles of beer on the wall."
		puts

	end
	count-=1
end


