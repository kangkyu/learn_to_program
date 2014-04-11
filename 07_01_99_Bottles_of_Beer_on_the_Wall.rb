# 99 Bottles of Beer on the Wall
# Write a program that prints out the lyrics to that beloved classic..

num = 99
while num > 0
	puts num.to_s + ' bottles of beer on the wall, ' 
	puts num.to_s + ' bottles of beer!'
	num = num - 1
	puts 'Take one down, passing around, ' 
	puts num.to_s + ' bottles of beer on the wall!'
	puts
end
