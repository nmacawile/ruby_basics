def doOnceForEachHour proc

	count = Time.now.hour

	if count>12
		count-=12
	elsif count==0
		count=12
	end
	
	while (count > 0)
		proc.call
		count-=1
	end
	
end

dong = Proc.new do
	puts "DONG!"
end

ding = Proc.new do
	puts "DING!"
end


doOnceForEachHour dong
doOnceForEachHour ding
