#write your code here
def echo(arg)
	p arg
end

def shout(arg)
	p arg.upcase
end

def repeat(arg, int=2)
	# if arg.length == 1
	# 	rep = "#{arg} "*2
	# 	rep.chop
	# else
	# 	p arg[0]
	# 	p arg[1]
	# end
	rep = "#{arg} "*int
	rep.chop
end

def start_of_word(str, int)
	str.slice(0...int)
end

def first_word(str)
	str.split.first
end

def titleize(str)
	#p str.split.map(&:capitalize).join(" ")
	str.split.each_with_index.map do |word, index|
		case 
		when word == "over"
			word
		when index == 0 || word.length > 3
			word.capitalize 
		else
			word
		end
	end.join(" ")

end