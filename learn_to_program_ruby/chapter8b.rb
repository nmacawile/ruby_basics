
def unit_text digit
	unit = ''

	if digit == 0
		unit = ''
	elsif digit == 1
		unit = 'one'
	elsif digit == 2
		unit = 'two'
	elsif digit == 3
		unit = 'three'
	elsif digit == 4
		unit = 'four'
	elsif digit == 5
		unit = 'five'
	elsif digit == 6
		unit = 'six'
	elsif digit == 7
		unit = 'seven'
	elsif digit == 8
		unit = 'eight'
	elsif digit == 9
		unit = 'nine'
	end
	return unit
end

def tens_text(tens,unit)
	text = ''
	if tens == 0
		text = ''
	elsif tens == 2
		text = 'twenty'
	elsif tens == 3
		text = 'thirty'
	elsif tens == 4
		text = 'forty'
	elsif tens == 5
		text = 'fifty'
	elsif tens == 6
		text = 'sixty'
	elsif tens == 7
		text = 'seventy'
	elsif tens == 8
		text = 'eighty'
	elsif tens == 9
		text = 'ninety'
	elsif tens == 1
		if unit == 0
			text = 'ten'
		elsif unit == 1
			text = 'eleven'
		elsif unit == 2
			text = 'twelve'
		elsif unit == 3
			text = 'thirteen'
		elsif unit == 4
			text = 'fourteen'
		elsif unit == 5
			text = 'fifteen'
		elsif unit == 6
			text = 'sixteen'
		elsif unit == 7
			text = 'seventeen'
		elsif unit == 8
			text = 'eighteen'
		elsif unit == 9
			text = 'nineteen'
		end
	end

	if tens >= 2
		if unit != 0
			text+=' and '+ unit_text(unit)
		end
	elsif tens == 0
		text+=unit_text(unit)

	end

	return text

end



def wedding_number number
	if number == 0
		return 'zero'
	end

	number_string = number.to_s.reverse
	text = ''

	3.step(1,-2) do |x|
		if number_string[x].to_i > 0 or number_string[x-1].to_i > 0
			if text != ''			
				text+= ' and '
			end
		
		text += tens_text(number_string[x].to_i,number_string[x-1].to_i)
		
			if x == 3
				text+= ' hundred'
			end
		end
	end
	return text
end

puts "CONVERT NUMBERS TO 'WEDDING NUMBERS'".center 40
input = 0
while input >= 0 and input <= 9999 do
	puts "Number: "
	input = gets.chomp.to_i
	puts wedding_number(input)
end
