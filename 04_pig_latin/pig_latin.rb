#write your code here
def translate(str)
	pig_latin_array = []
	str.split(" ").each do |str|
		if str[0] =~ (/\A[aeiou]/)
			pig_latin_array << "#{str}ay"
		elsif str.include? "qu"
			str.delete!("u")
			p "#{str} deleted u"
			consonants = ''
			index = 0
			until str[index] =~ (/\A[aeiou]/)
				consonants << str[index]
				str[index] = ''
				p consonants
				p str
			end
			str << consonants
			pig_latin_array << "#{str}uay"
		else
			consonants = ''
			index = 0
			until str[index] =~ (/\A[aeiou]/)
				consonants << str[index]
				str[index] = ''
				p consonants
				p str
			end
			str << consonants
			pig_latin_array << "#{str}ay"
		end
	end
	p pig_latin_array
	return pig_latin_array.join(" ")
end