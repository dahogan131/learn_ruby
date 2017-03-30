class Book
# write your code here
attr_accessor :title 
	def initialize
		@title = "inferno"
	end
	
	def title
		# p @title.split.map(&:capitalize).join(" ")
		
		title_array = []
		@title.split.map do |word| 
			if word == "and" || word == "of" || word == "in" || word == "the" || word == "a" || word == "an"
				title_array << word
			else
				title_array << word.capitalize
			end
		end
		title_array.first.capitalize!
		title_array.join(" ")
	end
end
