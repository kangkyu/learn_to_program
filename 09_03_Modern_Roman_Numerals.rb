# Exercise 09-03 Modern Roman Numerals

def roman_numeral num
	digit_vals = [['I', 5, 1], 
		['V', 10, 5],
		['X', 50, 10],
		['L', 100, 50], 
		['C', 500, 100], 
		['D', 1000, 500], 
		['M', nil, 1000]]
	roman = ''
	remaining = nil
	# proc for each array [l, m, n] from ['I', 5, 1] to ['M', nil, 1000]
	build_rev = proc do |l,m,n|
		num_l = m ? (num%m / n) : (num / n)
		if m == nil || m/n == 5 # l = I, X, C, M
			if num_l == 4
				remaining ||= l 
			else # when 0, 1, 2, or 3
				if remaining
					roman << l + remaining
					remaining = nil
				end
				roman << l * num_l
			end
		else # l = V, L, D
			if num_l == 1
				roman << l if !remaining
			else # when 0
				if remaining
					roman << l + remaining
					remaining = nil
				end
			end
		end
	end
	digit_vals.each {|l,m,n| build_rev[l,m,n]}
	# and then, reverse
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
		if num_input.to_i <= 0
			puts 'Must use positive integer' 
			return
		else
			puts roman_numeral num_input.to_i
			num_convert
		end
	end
end
num_convert