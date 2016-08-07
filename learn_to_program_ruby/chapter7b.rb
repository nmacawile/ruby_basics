contents = [["Numbers",1],["Letters",72],["Variables",118]]

#puts contents.join(" ")

width = 40
puts "Table of Contents".center width
puts 
contents.each_with_index { |x,y|
puts "Chapter #{y+1}: #{x[0]}".ljust(width/2) + "page #{x[1]}".rjust(width/2)
}