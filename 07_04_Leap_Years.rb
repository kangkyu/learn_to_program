# Leap Years
# Write a program that asks for a starting year and an ending year
# and then _puts_ all the leap years between them 
# including them if they are also leap years

puts 'input starting year:'
start_year = gets.chomp.to_i
puts 'input ending year:'
end_year = gets.chomp.to_i
puts
puts 'output leap years:'
(start_year..end_year).each do |y|
	if y%4 == 0
		puts y if y%400 == 0 || y%100 != 0
	end
end