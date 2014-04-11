# Exercise 08-01 Building and Sorting an Array
# Write a program that asks us to type as many
# words as we want, and then repeats the word back to us
# in alphabetical order.

words = []
while true
	word = gets.chomp
	break if word == ''
	words.push word
end
puts words.sort
