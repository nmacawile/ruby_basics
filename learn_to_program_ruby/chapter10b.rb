$depth = 0

def log description, &block
	spaces = ''
	$depth.times do
		spaces += ' '
	end

	beginText = "Beginning #{description.inspect}"
	$depth+=1
	

	puts spaces+beginText
		output = block.call 
	finishText = "Finished executing #{description.inspect}. Result: #{output}"
	puts spaces+finishText
	$depth -=1
	output
end

log "eight times eight" do 
	(log "four plus four" do
		log "does nothing" do
			"ayy"
		end
		4+4
	end)*(log "sixteen divided by two" do
		16/2
	end)
end