puts "What year were you born in?"
yy = gets.chomp

puts "What month were you born in?"
mm = gets.chomp

puts "What day were you born on?"
dd = gets.chomp

bday = Time.mktime(yy,mm,dd)
now = Time.new

diff = ((now-bday)/(60*60*24*365.25)).to_i
puts
puts "#{diff} spanks it is!"

diff.downto(1) do |x|
	puts "SPANK!"
end


