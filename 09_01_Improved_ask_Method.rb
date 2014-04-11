# Exercise 09-01 Improved ask Method
# That _ask_ method could be better. 
# Try to clean up by removing the answer variable.
# You'll have to use _return_ to exit from the loop.

def question food
	'Do you like eating ' + food + '?'
end

def ask question
	while true
		puts question
		reply = gets.chomp.downcase
		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				return true
			else
				return false
			end
			break
		else
			puts 'Please answer "yes" or "no".'
		end
	end
end

puts 'Hello, and thank you for taking the time to'
puts 'Help me with this experiment. My experiment'
puts 'has to do with the way people feel about'
puts 'Mexican food. Just think about Mexican food'
puts 'and try to answer every question honestly,'
puts 'with either a "yes" or a "no". My experiment'
puts 'has nothing to do with bed-wetting.'
puts

ask question 'tacos'
ask question 'burritos'
wets_bed = ask 'Do you wet the bed?' # Save this return value
ask question 'chimichangas'
ask question 'sopapillas'
puts 'Just a few more questions...'
ask question 'horchata'
ask question 'flautas'

puts 
puts 'DEBRIEFING'
puts 'Thank you for taking the time to help with'
puts 'this experiment. In fact, this experiment'
puts 'has nothing to do with Mexican food. It is'
puts 'an experiment about bed-wetting. The Mexican'
puts 'food was just there to catch you off guard'
puts 'in the hopes that you would answer more'
puts 'honestly. Thanks again.'
puts 
puts wets_bed