class Book
	attr_reader :title

	def title=(new_title)
		little_words = ["a", "an", "the", "and", "or", "but", "of", "in", "at", "from"]

		words =  new_title.split
		@title = ""

		words.each do |word|
			if little_words.include? word
				@title = @title + word.downcase + " "
			else
				@title = @title + word.capitalize + " "
			end
		end

		@title[0] = @title[0].upcase 
		
		@title = @title.chop

	end
end
