# Deaf Grandma Extended
# You can't stop talking to her until you shout BYE 
# three times in a row

puts 'Hi Grandma, I say: '
shout_bye = 0
while true	
	word = gets.chomp
	if word == word.upcase
		if word == 'BYE'
			shout_bye = shout_bye + 1
			if shout_bye == 3
				puts 'Okay, bye! :)'
				break
			end
		else
			shout_bye = 0
		end
		puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
	else
		shout_bye = 0
		puts 'HUH?! SPEAK UP, SONNY!'
	end
	puts 'I say:'
end