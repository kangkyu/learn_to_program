# Exercise 08-02 Table of Contents, Revisited
# Rewrite it with an array holding all of the information for your table of contents
# (chapter names, page numbers, and so on). Then print out
# the information from the array in the format

title = 'Table of Contents'
chapters = [['Getting Started', 1], 
	['Numbers', 9], 
	['Letters', 13]]
chap_num = 0
puts title.center(50)
chapters.each do |chapter, p|
	chap_num = chap_num + 1
	puts ('Chapter ' + chap_num.to_s + ': ' + chapter).ljust(30) + 
		'page'.rjust(17) + p.to_s.rjust(3)
end
