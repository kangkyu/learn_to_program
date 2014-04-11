# Deaf Grandma
# Whatever you say to Grandma, she should respond with HUH?! SPEAK UP, SONNY!
# unless you shout it. If you shout, she can hear you 
# and yells back as NO, NOT SINCE 1938!
# You can't stop talking to her until you shout BYE...

puts 'Hi Grandma, I say: '
while true
	puts 'I say:'
	word = gets.chomp
	if word == 'BYE'
		break
	elsif word == word.upcase
		puts 'NO, NOT SINCE ' + rand(1930..1950).to_s + '!'
	else
		puts 'HUH?! SPEAK UP, SONNY!'
	end
end