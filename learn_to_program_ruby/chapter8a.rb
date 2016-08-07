
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
			text+='-'+ unit_text(unit)
		end
	elsif tens == 0
		text+=unit_text(unit)

	end

	return text

end



def num_to_text number

	if number == 0
		return 'Zero'
	end

	number_string = number.to_s.reverse
	text = ''

	17.step(2,-3) do |x|
		if (number_string[x].to_i > 0 or number_string[x-1].to_i > 0 or number_string[x-2].to_i > 0) 
			if text !=''
				text += ' '
			end

			if number_string[x].to_i > 0
				text += unit_text(number_string[x].to_i) +' hundred'
				if (number_string[x-1].to_i > 0 || number_string[x-2].to_i > 0)
					text += ' ' + tens_text(number_string[x-1].to_i,number_string[x-2].to_i)
				end			
			else	
				text += tens_text(number_string[x-1].to_i,number_string[x-2].to_i)
			end

			if x == 17
				text+= ' quadrillion'
			elsif x == 14
				text+= ' trillion'
			elsif x == 11
				text+= ' billion'
			elsif x == 8
				text+= ' million'
			elsif x == 5
				text+= ' thousand'
			end
		end
	end

	if number < 0
		text = 'negative '+ text
	end
	
	return text[0].upcase+text[1..text.length-1]
	
end

puts "CONVERT NUMBERS TO ENGLISH TEXT".center 40
input = 0
while input >= 0 do
	puts "Number: "
	input = gets.chomp.to_i
	puts num_to_text(input)
end
