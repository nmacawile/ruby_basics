words = ["durian","banana","papaya","tomato","orange","melon","apple","watermelon","lemon"]

puts "UNSORTED: "+words.join(" ")
#puts words.sort.join(" ")

(words.length-1).downto(1) { |y|
	y.times { |x|
		if words[x]>words[x+1]
			words[x],words[x+1]=words[x+1],words[x]
			
		end
	}
}

puts "SORTED: "+words.join(" ")
