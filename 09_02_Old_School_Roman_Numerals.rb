# Exercise 09-02 Old-School Roman Numerals


def roman_numeral num
	roman = '' + 'I' * ((num%5)/1)
	roman = roman + 'V' * ((num%10)/5)
	roman = roman + 'X' * ((num%50)/10)
	roman = roman + 'L' * ((num%100)/50)
	roman = roman + 'C' * ((num%500)/100)
	roman = roman + 'D' * ((num%1000)/500)
	roman = roman + 'M' * (num/1000)
	roman.reverse
end

# def num_enum
# 	(1..200).each do |n|
# 		puts n.to_s + "\t" + (roman_numeral n)
# 	end
# end
# num_enum

def num_convert
	puts 'give me a number(1...3000)'
	num_input = gets.chomp 
	if !num_input.empty?
		puts roman_numeral num_input.to_i
		num_convert
	end
end
num_convert

