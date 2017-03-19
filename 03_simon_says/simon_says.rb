def echo input
	input
end

def shout input
	input.upcase
end

def repeat input, times = 2
	output = input + ((" " + input)*(times-1))
end

def start_of_word word, letters
	output = ""
	i = 0
	while i < letters
		output = output + word[i]
		i = i+1
	end
	output
end

def first_word string
	string.split[0]
end

def titleize string
	output = ""
	little_words = ["and", "a", "an", "or", "but", "of", "nor", "the", "over"]
	string.split.each do |word|
		if (little_words.include?(word))
			output = output + word + " "
		else
			output = output + word.capitalize + " "
		end
	end
	output[0] = output[0].upcase
	output.chop
end

